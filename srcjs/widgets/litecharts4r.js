import "widgets";
import "./lite.js";

HTMLWidgets.widget({
  name: "litecharts4r",

  type: "output",

  factory: function (el, width, height) {
    let rendered = false;
    return {
      renderValue: function (x) {
        console.log(x);
        el.options = x.options;

        if (rendered) {
          return;
        }

        rendered = true;
        el.width = width;
        el.height = height;
      },

      resize: function (width, height) {
        el.width = width;
        el.height = height;
      },
    };
  },
});
