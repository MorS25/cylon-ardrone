###
 * Cylonjs ARDrone adaptor
 * http://cylonjs.com
 *
 * Copyright (c) 2013 The Hybrid Group
 * Licensed under the Apache 2.0 license.
###

'use strict';

LibARDrone = require 'ar-drone'
namespace = require 'node-namespace'
require './commands'

namespace "Cylon.Adaptor", ->
  class @ARDrone extends Cylon.Basestar
    constructor: (opts) ->
      super
      @connection = opts.connection
      @name = opts.name
      @ardrone = null

    commands: -> Cylon.ARDrone.Commands

    connect: (callback) ->
      Logger.debug "Connecting to ARDrone '#{@name}'..."
      @ardrone = new LibARDrone.createClient(ip: @connection.port.toString())
      @proxyMethods Cylon.ARDrone.Commands, @ardrone, Cylon.Adaptor.ARDrone
      @ardrone.on 'navdata', (data) =>
        @connection.emit 'navdata', data

      @ardrone.on 'landing', =>
        @connection.emit 'landing'

      @ardrone.on 'landed', =>
        @connection.emit 'landed'

      @ardrone.on 'takeoff', =>
        @connection.emit 'takeoff'

      @ardrone.on 'hovering', =>
        @connection.emit 'hovering'

      @ardrone.on 'flying', =>
        @connection.emit 'flying'

      @ardrone.on 'lowBattery', (battery) =>
        @connection.emit 'lowBattery', battery

      @ardrone.on 'batteryChange', (battery) =>
        @connection.emit 'batteryChange', battery

      @ardrone.on 'altitudeChange', (altitude) =>
        @connection.emit 'altitudeChange', altitude

      @connection.emit 'connect'
      (callback)(null)

    disconnect: ->
      Logger.debug "Disconnecting from ARDrone '#{@name}'..."
