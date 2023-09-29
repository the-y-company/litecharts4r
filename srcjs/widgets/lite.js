import * as echarts from "echarts";
import { css, html, LitElement } from "lit";

export class LitEcharts extends LitElement {
  static styles = css`#plot{
    width: 600px;
    height: 600px;
  }`;

  static properties = {
    options: { type: Object },
    id: { type: String, state: false },
  };

  constructor() {
    super();
    this.options = {};
    this.id = "";
  }

  firstUpdated() {
    this.chart = echarts.init(this.shadowRoot.querySelector("#plot"));
  }

  updated() {
    let options = this.options;

    if (Array.isArray(options.yAxis)) {
      options.yAxis = {};
    }

    // Draw the chart
    this.chart.setOption(this.options);
  }

  render() {
    return html`<div id="plot"></div>`;
  }
}
customElements.define("lit-echarts", LitEcharts);
