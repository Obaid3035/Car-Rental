import { Controller } from "stimulus"
import $ from 'jquery'

export default class extends Controller {
  connect() {
  console.log("HELLO")
    $('#car_brand_id').select2({
      theme: "classic"
    });
    $('#booking_car_id').select2({
      theme: "classic"
    });

  }
}