import { Controller } from "stimulus"
import $ from 'jquery'
import 'select2'
import 'select2/dist/css/select2.css'

export default class extends Controller {
  connect() {
  console.log("HELLO")
    $('#car_manufacturer_id').select2({
      theme: "classic"
    });
  }
}