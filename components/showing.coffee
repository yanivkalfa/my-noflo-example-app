noflo = require 'noflo'

class showing extends noflo.Component
  description: 'Send a packet after the given time in ms'
  icon: 'clock-o'
  constructor: ->
  @timer = null
  @time = null
  @inPorts = new noflo.InPorts
    on:
      datatype: 'number'
      description: 'Time after which a packet will be sent'
  @outPorts = new noflo.OutPorts
    out:
      datatype: 'bang'

  @inPorts.time.on 'data', (@time) =>
    console.log @time

exports.getComponent = -> new showing
