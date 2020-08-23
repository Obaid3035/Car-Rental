// Visit The Stimulus Handbook for more details 
// https://stimulusjs.org/handbook/introduction
// 
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus"

export default class extends Controller {
  openModal(event) {
    let [data, status, xhr] = event.detail;
    let modalContainer = document.querySelector('#modalContainer');
    modalContainer.innerHTML = xhr.responseText;

    let modal = modalContainer.querySelector('.modal');
    $(modal).modal('show');

    $(modal).on('hidden.bs.modal', () => {
      $(modal).remove();
    })
  }
}
