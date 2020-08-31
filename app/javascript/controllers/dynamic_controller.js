import { Controller } from "stimulus"
import $ from 'jquery'

export default class extends Controller {
  connect() {
    console.log("HELLO")
    var cars = $('#vehicle_car_id').html();

    $('#vehicle_brand_id').change(function () {
      var brand = $('#vehicle_brand_id :selected').text();
      var options = $(cars).filter(`optgroup[label= ${brand}]`).html();
      console.log(options)
      if (options){
        $('#vehicle_car_id').html(options);
      }
        else{
        $('#vehicle_car_id').empty();
      }
    })

  }
}