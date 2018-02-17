'use strict';

var path = require('path');

module.exports = function (kibana) {
  var mainFile = 'plugins/timelion/app';

  var ownDescriptor = Object.getOwnPropertyDescriptor(kibana, 'autoload');
  var protoDescriptor = Object.getOwnPropertyDescriptor(kibana.constructor.prototype, 'autoload');
  var descriptor = ownDescriptor || protoDescriptor || {};
  if (descriptor.get) {
    // the autoload list has been replaced with a getter that complains about
    // improper access, bypass that getter by seeing if it is defined
    mainFile = 'plugins/timelion/app_with_autoload';
  }

  return new kibana.Plugin({
    require: ['kibana', 'elasticsearch'],
    uiExports: {
      app: {
        title: 'Timelion',
        order: -1000,
        description: 'Time series expressions for everything',
        icon: 'plugins/timelion/icon.svg',
        main: mainFile,
        injectVars: function injectVars(server, options) {
          var config = server.config();
          return {
            kbnIndex: config.get('kibana.index'),
            esShardTimeout: config.get('elasticsearch.shardTimeout'),
            esApiVersion: config.get('elasticsearch.apiVersion')
          };
        }
      },
      hacks: ['plugins/timelion/lib/panel_registry', 'plugins/timelion/panels/timechart/timechart'],
      visTypes: ['plugins/timelion/vis']
    },
    init: require('./init.js')
  });
};
