import d3 from 'd3';
import _ from 'lodash';
import $ from 'jquery';
import VislibLibLayoutLayoutTypesProvider from './layout_types';
import AxisProvider from 'ui/vislib/lib/axis';
export default function LayoutFactory(Private) {

  const layoutType = Private(VislibLibLayoutLayoutTypesProvider);
  const Axis = Private(AxisProvider);
  /**
   * Builds the visualization DOM layout
   *
   * The Layout Constructor is responsible for rendering the visualization
   * layout, which includes all the DOM div elements.
   * Input:
   *   1. DOM div - parent element for which the layout is attached
   *   2. data - data is bound to the div element
   *   3. chartType (e.g. 'histogram') - specifies the layout type to grab
   *
   * @class Layout
   * @constructor
   * @param el {HTMLElement} HTML element to which the chart will be appended
   * @param data {Object} Elasticsearch query results for this specific chart
   * @param chartType {Object} Reference to chart functions, i.e. Pie
   */
  class Layout {
    constructor(config) {
      this.el = config.get('el');
      this.data = config.data.data;
      this.opts = config;
      this.layoutType = layoutType[config.get('type')](this.el, this.data);
    }

    // Render the layout
    /**
     * Renders visualization HTML layout
     * Remove all elements from the current visualization and creates the layout
     *
     * @method render
     */
    render() {
      this.removeAll(this.el);
      this.createLayout(this.layoutType);
      // update y-axis-spacer height based on precalculated horizontal axis heights
      if (this.opts.get('type') === 'point_series') {
        this.updateCategoryAxisSize();
      }
    };

    /**
     * Create the layout based on the json array provided
     * for each object in the layout array, call the layout function
     *
     * @method createLayout
     * @param arr {Array} Json array
     * @returns {*} Creates the visualization layout
     */
    createLayout(arr) {
      return _.each(arr, (obj) => {
        this.layout(obj);
      });
    };

    updateCategoryAxisSize() {
      const visConfig = this.opts;
      const axisConfig = visConfig.get('categoryAxes[0]');
      const axis = new Axis(visConfig, axisConfig);
      const position = axis.axisConfig.get('position');

      const el = $(this.el).find(`.axis-wrapper-${position}`);

      el.css('visibility', 'hidden');
      axis.render();
      const width = el.width();
      const height = el.height();
      axis.destroy();
      el.css('visibility', '');

      if (axis.axisConfig.isHorizontal()) {
        const spacerNodes = $(this.el).find(`.y-axis-spacer-block-${position}`);
        el.height(`${height}px`);
        spacerNodes.height(el.height());
      } else {
        el.find('.y-axis-div-wrapper').width(`${width}px`);
      }
    };


    /**
     * Appends a DOM element based on the object keys
     * check to see if reference to DOM element is string but not class selector
     * Create a class selector
     *
     * @method layout
     * @param obj {Object} Instructions for creating the layout of a DOM Element
     * @returns {*} DOM Element
     */
    layout(obj) {
      if (!obj.parent) {
        throw new Error('No parent element provided');
      }

      if (!obj.type) {
        throw new Error('No element type provided');
      }

      if (typeof obj.type !== 'string') {
        throw new Error(obj.type + ' must be a string');
      }

      if (typeof obj.parent === 'string' && obj.parent.charAt(0) !== '.') {
        obj.parent = '.' + obj.parent;
      }

      const childEl = this.appendElem(obj.parent, obj.type, obj.class);

      if (obj.datum) {
        childEl.datum(obj.datum);
      }

      if (obj.splits) {
        childEl.call(obj.splits, obj.parent, this.opts);
      }

      if (obj.children) {
        const newParent = childEl[0][0];

        _.forEach(obj.children, function (obj) {
          if (!obj.parent) {
            obj.parent = newParent;
          }
        });

        this.createLayout(obj.children);
      }

      return childEl;
    };

    /**
     * Appends a `type` of DOM element to `el` and gives it a class name attribute `className`
     *
     * @method appendElem
     * @param el {HTMLElement} Reference to a DOM Element
     * @param type {String} DOM element type
     * @param className {String} CSS class name
     * @returns {*} Reference to D3 Selection
     */
    appendElem(el, type, className) {
      if (!el || !type || !className) {
        throw new Error('Function requires that an el, type, and class be provided');
      }

      if (typeof el === 'string') {
        // Create a DOM reference with a d3 selection
        // Need to make sure that the `el` is bound to this object
        // to prevent it from being appended to another Layout
        el = d3.select(this.el)
          .select(el)[0][0];
      }

      return d3.select(el)
      .append(type)
      .attr('class', className);
    };

    /**
     * Removes all DOM elements from DOM element
     *
     * @method removeAll
     * @param el {HTMLElement} Reference to DOM element
     * @returns {D3.Selection|D3.Transition.Transition} Reference to an empty DOM element
     */
    removeAll(el) {
      return d3.select(el).selectAll('*').remove();
    };
  }

  return Layout;
};
