const { environment } = require('@rails/webpacker')

const webpack = require("webpack")

environment.plugins.append("Provide", new webpack.ProvidePlugin({

$: 'jquery',

jQuery: 'jquery',

Popper: ['popper.js', 'default']

}))

const { resolve } = require('path');
const { config, Environment } = require('@rails/webpacker');
const coffee =  require('./loaders/coffee')
const erb = require('./loaders/erb')
const WebpackerPwa = require('webpacker-pwa');
new WebpackerPwa(config, environment);


module.exports = environment
