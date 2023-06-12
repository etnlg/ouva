import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  connect() {
    new flatpickr(this.element, {
      enableTime: true,
      dateFormat: "Y-m-d",
      minDate: "today",
      mode: "range"

      // more options available on the documentation!
    });
  }
}
