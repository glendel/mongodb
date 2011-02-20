// The next two (2) methods will be used by the "jQuery.cascade" plugin.
function commonTemplate( item ) {
  return("<option value='" + item.Value + "'>" + item.Text + "</option>");
}

function commonMatch( selectedValue ) {
  return(this.When == selectedValue);
}