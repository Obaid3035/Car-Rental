import { Controller } from "stimulus"

export default class extends Controller {

  connect() {
    $("#booking_duration").keyup(function () {
      var duration = $("#booking_duration").val();
      var daily_rate = $("#booking_daily_rate").val()
      $("#booking_total").val(duration * daily_rate)
      var advance = $("#booking_advance_deposit").val();
      var total = $("#booking_total").val();
      if((daily_rate|| duration) > 0){
        var balance = total - advance
        $("#booking_balance").val(balance)
      }
    })
    $("#booking_daily_rate").keyup(function () {
      var daily_rate = $("#booking_daily_rate").val();
      var duration = $("#booking_duration").val()
      $("#booking_total").val(daily_rate * duration )
      var advance = $("#booking_advance_deposit").val();
      var total = $("#booking_total").val();
      if((daily_rate|| duration) > 0){
        var balance = total - advance
        $("#booking_balance").val(balance)
      }

    })

    $("#booking_advance_deposit").keyup(function () {
      var advance = $("#booking_advance_deposit").val();
      var total = $("#booking_total").val();
      if(advance == 0){
        var balance = 0
        $("#booking_balance").val(balance)
      } else{
        var balance = total - advance
        $("#booking_balance").val(balance)
      }


    })
  }

}