import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  connect() {
    const today = new Date()
    const tomorrow = new Date(today)
    tomorrow.setDate(tomorrow.getDate() + 1)

    new flatpickr(this.element, {

      enableTime: false,
      mode: "range",
      dateFormat: "Y-m-d",
      minDate: "today",
      defaultDate: [today, tomorrow]

      // more options available on the documentation!
    });

  }
}
