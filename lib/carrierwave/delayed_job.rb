module CarrierWave
  module Delayed
    module Job
      module MongoidInterface
        def delay_carrierwave
          @delay_carrierwave ||= true
        end

        def delay_carrierwave=(delay)
          @delay_carrierwave = delay
        end

        def perform
          asset_name = self.class.uploader_options.keys.first
          self.send(asset_name).versions.each_pair do |key, value|
            value.process_without_delay!
          end
        end

        private

        def enqueue
          ::Delayed::Job.enqueue self
        end
      end

      def self.included(base)
        base.extend ClassMethods
      end

      module ClassMethods
        def self.extended(base)
          base.send(:include, InstanceMethods)
          base.alias_method_chain :process!, :delay
          ::Mongoid::Document.send(:include, CarrierWave::Delayed::Job::MongoidInterface)
        end

        module InstanceMethods
          def process_with_delay!(new_file)
            process_without_delay!(new_file) unless model.delay_carrierwave
          end
        end
      end
    end
  end
end