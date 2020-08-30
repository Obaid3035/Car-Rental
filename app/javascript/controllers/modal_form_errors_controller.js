import { Controller } from "stimulus"

export default class extends Controller {
  renderErrors(event) {
    let [data, status, xhr] = event.detail;
    let modal = $(xhr.responseText)[0];
    let form  = modal.querySelector('form');

    let modalContainerForm = document.querySelector('#modalContainer form');
    if (modalContainerForm.length > 0) {
      modalContainerForm.replaceWith(form);
    }
  }
}
