# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

# Cleaning up the database.
puts 'Cleaning up the database'
IdType.delete_all
Gender.delete_all
Country.delete_all
County.delete_all
City.delete_all

puts 'Loading Data'

# Seeds for Identification Types.
puts 'Creating Identification Types'
[
  {:code => 'CC', :name => 'Cedula de Ciudadania'},
  {:code => 'TI', :name => 'Tarjeta de Identidad'},
  {:code => 'NI', :name => 'Numero de Identificacion Tributaria'},
  {:code => 'CE', :name => 'Cedula de Extranjeria'}
].each do |id_type|
  IdType.create(id_type)
end
puts 'Success : Identification Types Created'

# Seeds for Genders.
puts 'Creating Genders'
[
  {:code => 'M', :name => 'Male'},
  {:code => 'F', :name => 'Female'}
].each do |gender|
  Gender.create(gender)
end
puts 'Success : Genders Created'

# Seeds for Countries.
puts 'Creating Countries, Counties and Cities'
puts 'Please wait... This could take some time.'
[
  {:name => 'Aland Islands', :iso_code => 'AX'},
  {:name => 'Albania', :iso_code => 'AL'},
  {:name => 'Algeria', :iso_code => 'DZ'},
  {:name => 'American Samoa', :iso_code => 'AS'},
  {:name => 'Andorra', :iso_code => 'AD'},
  {:name => 'Angola', :iso_code => 'AO'},
  {:name => 'Anguilla', :iso_code => 'AI'},
  {:name => 'Antarctica', :iso_code => 'AQ'},
  {:name => 'Antigua and Barbuda', :iso_code => 'AG'},
  {:name => 'Argentina', :iso_code => 'AR'},
  {:name => 'Armenia', :iso_code => 'AM'},
  {:name => 'Aruba', :iso_code => 'AW'},
  {:name => 'Australia', :iso_code => 'AU'},
  {:name => 'Austria', :iso_code => 'AT'},
  {:name => 'Azerbaijan', :iso_code => 'AZ'},
  {:name => 'Bahamas', :iso_code => 'BS'},
  {:name => 'Bahrain', :iso_code => 'BH'},
  {:name => 'Bangladesh', :iso_code => 'BD'},
  {:name => 'Barbados', :iso_code => 'BB'},
  {:name => 'Belarus', :iso_code => 'BY'},
  {:name => 'Belgium', :iso_code => 'BE'},
  {:name => 'Belize', :iso_code => 'BZ'},
  {:name => 'Benin', :iso_code => 'BJ'},
  {:name => 'Bermuda', :iso_code => 'BM'},
  {:name => 'Bhutan', :iso_code => 'BT'},
  {:name => 'Bolivia', :iso_code => 'BO'},
  {:name => 'Bosnia and Herzegovina', :iso_code => 'BA'},
  {:name => 'Botswana', :iso_code => 'BW'},
  {:name => 'Bouvet Island', :iso_code => 'BV'},
  {:name => 'Brazil', :iso_code => 'BR'},
  {:name => 'British Indian Ocean Territory', :iso_code => 'IO'},
  {:name => 'Brunei Darussalam', :iso_code => 'BN'},
  {:name => 'Bulgaria', :iso_code => 'BG'},
  {:name => 'Burkina Faso', :iso_code => 'BF'},
  {:name => 'Burundi', :iso_code => 'BI'},
  {:name => 'Cambodia', :iso_code => 'KH'},
  {:name => 'Cameroon', :iso_code => 'CM'},
  {:name => 'Canada', :iso_code => 'CA'},
  {:name => 'Cape Verde', :iso_code => 'CV'},
  {:name => 'Cayman Islands', :iso_code => 'KY'},
  {:name => 'Central African Republic', :iso_code => 'CF'},
  {:name => 'Chad', :iso_code => 'TD'},
  {:name => 'Chile', :iso_code => 'CL'},
  {:name => 'China', :iso_code => 'CN'},
  {:name => 'Christmas Island', :iso_code => 'CX'},
  {:name => 'Cocos (Keeling) Islands', :iso_code => 'CC'},
  {:name => 'Colombia', :iso_code => 'CO'},
  {:name => 'Comoros', :iso_code => 'KM'},
  {:name => 'Congo', :iso_code => 'CG'},
  {:name => 'Congo, The Democratic Republic of The', :iso_code => 'CD'},
  {:name => 'Cook Islands', :iso_code => 'CK'},
  {:name => 'Costa Rica', :iso_code => 'CR'},
  {:name => 'Cote D\'Ivoire', :iso_code => 'CI'},
  {:name => 'Croatia', :iso_code => 'HR'},
  {:name => 'Cuba', :iso_code => 'CU'},
  {:name => 'Cyprus', :iso_code => 'CY'},
  {:name => 'Czech Republic', :iso_code => 'CZ'},
  {:name => 'Denmark', :iso_code => 'DK'},
  {:name => 'Djibouti', :iso_code => 'DJ'},
  {:name => 'Dominica', :iso_code => 'DM'},
  {:name => 'Dominican Republic', :iso_code => 'DO'},
  {:name => 'Ecuador', :iso_code => 'EC'},
  {:name => 'Egypt', :iso_code => 'EG'},
  {:name => 'El Salvador', :iso_code => 'SV'},
  {:name => 'Equatorial Guinea', :iso_code => 'GQ'},
  {:name => 'Eritrea', :iso_code => 'ER'},
  {:name => 'Estonia', :iso_code => 'EE'},
  {:name => 'Ethiopia', :iso_code => 'ET'},
  {:name => 'Falkland Islands (Malvinas)', :iso_code => 'FK'},
  {:name => 'Faroe Islands', :iso_code => 'FO'},
  {:name => 'Fiji', :iso_code => 'FJ'},
  {:name => 'Finland', :iso_code => 'FI'},
  {:name => 'France', :iso_code => 'FR'},
  {:name => 'French Guiana', :iso_code => 'GF'},
  {:name => 'French Polynesia', :iso_code => 'PF'},
  {:name => 'French Southern Territories', :iso_code => 'TF'},
  {:name => 'Gabon', :iso_code => 'GA'},
  {:name => 'Gambia', :iso_code => 'GM'},
  {:name => 'Georgia', :iso_code => 'GE'},
  {:name => 'Germany', :iso_code => 'DE'},
  {:name => 'Ghana', :iso_code => 'GH'},
  {:name => 'Gibraltar', :iso_code => 'GI'},
  {:name => 'Greece', :iso_code => 'GR'},
  {:name => 'Greenland', :iso_code => 'GL'},
  {:name => 'Grenada', :iso_code => 'GD'},
  {:name => 'Guadeloupe', :iso_code => 'GP'},
  {:name => 'Guam', :iso_code => 'GU'},
  {:name => 'Guatemala', :iso_code => 'GT'},
  {:name => 'Guernsey', :iso_code => 'GG'},
  {:name => 'Guinea', :iso_code => 'GN'},
  {:name => 'Guinea-Bissau', :iso_code => 'GW'},
  {:name => 'Guyana', :iso_code => 'GY'},
  {:name => 'Haiti', :iso_code => 'HT'},
  {:name => 'Heard Island and Mcdonald Islands', :iso_code => 'HM'},
  {:name => 'Holy See (Vatican City State)', :iso_code => 'VA'},
  {:name => 'Honduras', :iso_code => 'HN'},
  {:name => 'Hong Kong', :iso_code => 'HK'},
  {:name => 'Hungary', :iso_code => 'HU'},
  {:name => 'Iceland', :iso_code => 'IS'},
  {:name => 'India', :iso_code => 'IN'},
  {:name => 'Indonesia', :iso_code => 'ID'},
  {:name => 'Iran, Islamic Republic of', :iso_code => 'IR'},
  {:name => 'Iraq', :iso_code => 'IQ'},
  {:name => 'Ireland', :iso_code => 'IE'},
  {:name => 'Isle of Man', :iso_code => 'IM'},
  {:name => 'Israel', :iso_code => 'IL'},
  {:name => 'Italy', :iso_code => 'IT'},
  {:name => 'Jamaica', :iso_code => 'JM'},
  {:name => 'Japan', :iso_code => 'JP'},
  {:name => 'Jersey', :iso_code => 'JE'},
  {:name => 'Jordan', :iso_code => 'JO'},
  {:name => 'Kazakhstan', :iso_code => 'KZ'},
  {:name => 'Kenya', :iso_code => 'KE'},
  {:name => 'Kiribati', :iso_code => 'KI'},
  {:name => 'Korea, Democratic People\'s Republic of', :iso_code => 'KP'},
  {:name => 'Korea, Republic of', :iso_code => 'KR'},
  {:name => 'Kuwait', :iso_code => 'KW'},
  {:name => 'Kyrgyzstan', :iso_code => 'KG'},
  {:name => 'Lao People\'s Democratic Republic', :iso_code => 'LA'},
  {:name => 'Latvia', :iso_code => 'LV'},
  {:name => 'Lebanon', :iso_code => 'LB'},
  {:name => 'Lesotho', :iso_code => 'LS'},
  {:name => 'Liberia', :iso_code => 'LR'},
  {:name => 'Libyan Arab Jamahiriya', :iso_code => 'LY'},
  {:name => 'Liechtenstein', :iso_code => 'LI'},
  {:name => 'Lithuania', :iso_code => 'LT'},
  {:name => 'Luxembourg', :iso_code => 'LU'},
  {:name => 'Macao', :iso_code => 'MO'},
  {:name => 'Macedonia, The Former Yugoslav Republic of', :iso_code => 'MK'},
  {:name => 'Madagascar', :iso_code => 'MG'},
  {:name => 'Malawi', :iso_code => 'MW'},
  {:name => 'Malaysia', :iso_code => 'MY'},
  {:name => 'Maldives', :iso_code => 'MV'},
  {:name => 'Mali', :iso_code => 'ML'},
  {:name => 'Malta', :iso_code => 'MT'},
  {:name => 'Marshall Islands', :iso_code => 'MH'},
  {:name => 'Martinique', :iso_code => 'MQ'},
  {:name => 'Mauritania', :iso_code => 'MR'},
  {:name => 'Mauritius', :iso_code => 'MU'},
  {:name => 'Mayotte', :iso_code => 'YT'},
  {:name => 'Mexico', :iso_code => 'MX'},
  {:name => 'Micronesia, Federated States of', :iso_code => 'FM'},
  {:name => 'Moldova, Republic of', :iso_code => 'MD'},
  {:name => 'Monaco', :iso_code => 'MC'},
  {:name => 'Mongolia', :iso_code => 'MN'},
  {:name => 'Montenegro', :iso_code => 'ME'},
  {:name => 'Montserrat', :iso_code => 'MS'},
  {:name => 'Morocco', :iso_code => 'MA'},
  {:name => 'Mozambique', :iso_code => 'MZ'},
  {:name => 'Myanmar', :iso_code => 'MM'},
  {:name => 'Namibia', :iso_code => 'NA'},
  {:name => 'Nauru', :iso_code => 'NR'},
  {:name => 'Nepal', :iso_code => 'NP'},
  {:name => 'Netherlands', :iso_code => 'NL'},
  {:name => 'Netherlands Antilles', :iso_code => 'AN'},
  {:name => 'New Caledonia', :iso_code => 'NC'},
  {:name => 'New Zealand', :iso_code => 'NZ'},
  {:name => 'Nicaragua', :iso_code => 'NI'},
  {:name => 'Niger', :iso_code => 'NE'},
  {:name => 'Nigeria', :iso_code => 'NG'},
  {:name => 'Niue', :iso_code => 'NU'},
  {:name => 'Norfolk Island', :iso_code => 'NF'},
  {:name => 'Northern Mariana Islands', :iso_code => 'MP'},
  {:name => 'Norway', :iso_code => 'NO'},
  {:name => 'Oman', :iso_code => 'OM'},
  {:name => 'Pakistan', :iso_code => 'PK'},
  {:name => 'Palau', :iso_code => 'PW'},
  {:name => 'Palestinian Territory, Occupied', :iso_code => 'PS'},
  {:name => 'Panama', :iso_code => 'PA'},
  {:name => 'Papua New Guinea', :iso_code => 'PG'},
  {:name => 'Paraguay', :iso_code => 'PY'},
  {:name => 'Peru', :iso_code => 'PE'},
  {:name => 'Philippines', :iso_code => 'PH'},
  {:name => 'Pitcairn', :iso_code => 'PN'},
  {:name => 'Poland', :iso_code => 'PL'},
  {:name => 'Portugal', :iso_code => 'PT'},
  {:name => 'Puerto Rico', :iso_code => 'PR'},
  {:name => 'Qatar', :iso_code => 'QA'},
  {:name => 'Reunion', :iso_code => 'RE'},
  {:name => 'Romania', :iso_code => 'RO'},
  {:name => 'Russian Federation', :iso_code => 'RU'},
  {:name => 'Rwanda', :iso_code => 'RW'},
  {:name => 'Saint Barthelemy', :iso_code => 'BL'},
  {:name => 'Saint Helena, Ascension and Tristan Da Cunha', :iso_code => 'SH'},
  {:name => 'Saint Kitts and Nevis', :iso_code => 'KN'},
  {:name => 'Saint Lucia', :iso_code => 'LC'},
  {:name => 'Saint Martin', :iso_code => 'MF'},
  {:name => 'Saint Pierre and Miquelon', :iso_code => 'PM'},
  {:name => 'Saint Vincent and The Grenadines', :iso_code => 'VC'},
  {:name => 'Samoa', :iso_code => 'WS'},
  {:name => 'San Marino', :iso_code => 'SM'},
  {:name => 'Sao Tome and Principe', :iso_code => 'ST'},
  {:name => 'Saudi Arabia', :iso_code => 'SA'},
  {:name => 'Senegal', :iso_code => 'SN'},
  {:name => 'Serbia', :iso_code => 'RS'},
  {:name => 'Seychelles', :iso_code => 'SC'},
  {:name => 'Sierra Leone', :iso_code => 'SL'},
  {:name => 'Singapore', :iso_code => 'SG'},
  {:name => 'Slovakia', :iso_code => 'SK'},
  {:name => 'Slovenia', :iso_code => 'SI'},
  {:name => 'Solomon Islands', :iso_code => 'SB'},
  {:name => 'Somalia', :iso_code => 'SO'},
  {:name => 'South Africa', :iso_code => 'ZA'},
  {:name => 'South Georgia and The South Sandwich Islands', :iso_code => 'GS'},
  {:name => 'Spain', :iso_code => 'ES'},
  {:name => 'Sri Lanka', :iso_code => 'LK'},
  {:name => 'Sudan', :iso_code => 'SD'},
  {:name => 'Suriname', :iso_code => 'SR'},
  {:name => 'Svalbard and Jan Mayen', :iso_code => 'SJ'},
  {:name => 'Swaziland', :iso_code => 'SZ'},
  {:name => 'Sweden', :iso_code => 'SE'},
  {:name => 'Switzerland', :iso_code => 'CH'},
  {:name => 'Syrian Arab Republic', :iso_code => 'SY'},
  {:name => 'Taiwan, Province of China', :iso_code => 'TW'},
  {:name => 'Tajikistan', :iso_code => 'TJ'},
  {:name => 'Tanzania, United Republic of', :iso_code => 'TZ'},
  {:name => 'Thailand', :iso_code => 'TH'},
  {:name => 'Timor-Leste', :iso_code => 'TL'},
  {:name => 'Togo', :iso_code => 'TG'},
  {:name => 'Tokelau', :iso_code => 'TK'},
  {:name => 'Tonga', :iso_code => 'TO'},
  {:name => 'Trinidad and Tobago', :iso_code => 'TT'},
  {:name => 'Tunisia', :iso_code => 'TN'},
  {:name => 'Turkey', :iso_code => 'TR'},
  {:name => 'Turkmenistan', :iso_code => 'TM'},
  {:name => 'Turks and Caicos Islands', :iso_code => 'TC'},
  {:name => 'Tuvalu', :iso_code => 'TV'},
  {:name => 'Uganda', :iso_code => 'UG'},
  {:name => 'Ukraine', :iso_code => 'UA'},
  {:name => 'United Arab Emirates', :iso_code => 'AE'},
  {:name => 'United Kingdom', :iso_code => 'GB'},
  {:name => 'United States', :iso_code => 'US'},
  {:name => 'United States Minor Outlying Islands', :iso_code => 'UM'},
  {:name => 'Uruguay', :iso_code => 'UY'},
  {:name => 'Uzbekistan', :iso_code => 'UZ'},
  {:name => 'Vanuatu', :iso_code => 'VU'},
  {:name => 'Venezuela, Bolivarian Republic of', :iso_code => 'VE'},
  {:name => 'Viet Nam', :iso_code => 'VN'},
  {:name => 'Virgin Islands, British', :iso_code => 'VG'},
  {:name => 'Virgin Islands, U.S.', :iso_code => 'VI'},
  {:name => 'Wallis and Futuna', :iso_code => 'WF'},
  {:name => 'Western Sahara', :iso_code => 'EH'},
  {:name => 'Yemen', :iso_code => 'YE'},
  {:name => 'Zambia', :iso_code => 'ZM'},
  {:name => 'Zimbabwe', :iso_code => 'ZW'}
].each do |country_hash|
  country = Country.create(country_hash)
  
  # Seeds for Counties.
  counties = if ( country.name == 'Colombia' )
    [
      {:name => 'Amazonas'},
      {:name => 'Antioquia'},
      {:name => 'Arauca'},
      {:name => 'Atlantico'},
      {:name => 'Bolivar'},
      {:name => 'Boyaca'},
      {:name => 'Caldas'},
      {:name => 'Caqueta'},
      {:name => 'Casanare'},
      {:name => 'Cauca'},
      {:name => 'Cesar'},
      {:name => 'Choco'},
      {:name => 'Cordoba'},
      {:name => 'Cundinamarca'},
      {:name => 'Guainia'},
      {:name => 'Guaviare'},
      {:name => 'Huila'},
      {:name => 'La Guajira'},
      {:name => 'Magdalena'},
      {:name => 'Meta'},
      {:name => 'Narino'},
      {:name => 'Norte de Santander'},
      {:name => 'Putumayo'},
      {:name => 'Quindio'},
      {:name => 'Risaralda'},
      {:name => 'San Andres y Providencia'},
      {:name => 'Santander'},
      {:name => 'Sucre'},
      {:name => 'Tolima'},
      {:name => 'Valle del Cauca'},
      {:name => 'Vaupes'},
      {:name => 'Vichada'}
    ]
  else
    (1..10)
  end
  
  counties.each do |i|
    county_name = ( i.instance_of?(Hash) ) ? i[:name] : "County for #{country.name} #{i}"
    county = County.create({:name => county_name, :country => country})
    
    # Seeds for Cities.
    cities = if ( county_name == 'Cundinamarca' )
      [
        {:name => 'Bogota'},
        {:name => 'Soacha'},
        {:name => 'Fusagasuga'},
        {:name => 'Facatativa'},
        {:name => 'Zipaquira'},
        {:name => 'Chia'},
        {:name => 'Girardot'},
        {:name => 'Mosquera'},
        {:name => 'Madrid'},
        {:name => 'Funza'}
      ]
    elsif ( county_name == 'Tolima' )
      [
        {:name => 'Ibague'},
        {:name => 'Coello'},
        {:name => 'Espinal'},
        {:name => 'Melgar'},
        {:name => 'Mariquita'},
        {:name => 'Honda'},
        {:name => 'Carmen de Apicala'},
        {:name => 'Purificacion'},
        {:name => 'Prado'},
        {:name => 'Fresno'}
      ]
    else
      (1..10)
    end
    
    cities.each do |i|
      city_name = ( i.instance_of?(Hash) ) ? i[:name] : "City for #{county.name} #{i}"
      city = City.create({:name => city_name, :country => country, :county => county})
    end
  end
end
puts 'Success : Countries, Counties and Cities Created'
puts 'Success : Data Loaded'