// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

$(function() {
  $("#line_item_on_sale").change(function() {
    console.log("line_item_on_sale is changing");
    if(this.value == "1") {
      $("#line-item-sale-price").show();
      console.log("showing sale price");
    } else if(this.value == "0") {
      $("#line-item-sale-price").hide();
      console.log("hiding sale price");
    }
  });

  $("#store_id").change(function() {
    console.log("Showing or hiding Add Store option based on " + this.value)
    if(this.value == null || this.value == undefined || this.value == "") {
      console.log("Showing Add Store option.")
      $("#new-store").show();
    } else {
      console.log("Hiding Add Store option.")
      $("#new-store").hide();
    }
  });

  $("#store_location_id").change(function() {
    if(this.value == nil) {
      $("#add_location").show();
    } else {
      $("#add_location").hide();
    }
  });
});
