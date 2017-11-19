# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$("#receipt_store_id").on("change", function() {
  if(this.value == "Add Store") {
    $("#add_store").show();
  } else {
    $("#add_store").hide();
  }
});

$("#store_location_id").on("change", function() {
  if(this.value == "Add Store") {
    $("#add_location").show();
  } else {
    $("#add_location").hide();
  }
});
