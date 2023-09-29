import "widgets";
import "./lite.js";

HTMLWidgets.widget({
  name: "litecharts4r",

  type: "output",

  factory: function (el, width, height) {
    // TODO: define shared variables for this instance

    return {
      renderValue: function (x) {
        console.log(x);
        el.options = x.options;
      },

      resize: function (width, height) {
      },
    };
  },
});
