import * as echarts from "echarts";
import { css, html, LitElement } from "lit";
import { styleMap } from "lit-html/directives/style-map.js";

export class LitEcharts extends LitElement {
  static properties = {
    options: { type: Object },
    width: { type: String },
    height: { type: String },
  };

  constructor() {
    super();
    this.options = {};
    this.width = "100%";
    this.height = 400;
    this._style = {};
  }

  firstUpdated() {
    this.chart = echarts.init(this.shadowRoot.querySelector("div"));
  }

  updated() {
    let options = this.options;

    if (Array.isArray(options.yAxis)) {
      options.yAxis = {};
    }

    this.chart.setOption(this.options);

    if (typeof this.width == "number") {
      this.chart.resize({ width: this.width, height: this.height });
    }
  }

  render() {
    this._style = {
      width: typeof this.width == "number" ? this.width + "px" : this.width,
      height: typeof this.height == "number" ? this.height + "px" : this.height,
    };
    return html`<div style=${styleMap(this._style)}></div>`;
  }
}
customElements.define("lit-echarts", LitEcharts);
