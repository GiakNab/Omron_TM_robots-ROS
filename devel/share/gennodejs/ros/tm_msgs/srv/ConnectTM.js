// Auto-generated. Do not edit!

// (in-package tm_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ConnectTMRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.server = null;
      this.connect = null;
      this.reconnect = null;
      this.timeout = null;
      this.timeval = null;
    }
    else {
      if (initObj.hasOwnProperty('server')) {
        this.server = initObj.server
      }
      else {
        this.server = 0;
      }
      if (initObj.hasOwnProperty('connect')) {
        this.connect = initObj.connect
      }
      else {
        this.connect = false;
      }
      if (initObj.hasOwnProperty('reconnect')) {
        this.reconnect = initObj.reconnect
      }
      else {
        this.reconnect = false;
      }
      if (initObj.hasOwnProperty('timeout')) {
        this.timeout = initObj.timeout
      }
      else {
        this.timeout = 0.0;
      }
      if (initObj.hasOwnProperty('timeval')) {
        this.timeval = initObj.timeval
      }
      else {
        this.timeval = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConnectTMRequest
    // Serialize message field [server]
    bufferOffset = _serializer.int8(obj.server, buffer, bufferOffset);
    // Serialize message field [connect]
    bufferOffset = _serializer.bool(obj.connect, buffer, bufferOffset);
    // Serialize message field [reconnect]
    bufferOffset = _serializer.bool(obj.reconnect, buffer, bufferOffset);
    // Serialize message field [timeout]
    bufferOffset = _serializer.float64(obj.timeout, buffer, bufferOffset);
    // Serialize message field [timeval]
    bufferOffset = _serializer.float64(obj.timeval, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConnectTMRequest
    let len;
    let data = new ConnectTMRequest(null);
    // Deserialize message field [server]
    data.server = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [connect]
    data.connect = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reconnect]
    data.reconnect = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [timeout]
    data.timeout = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [timeval]
    data.timeval = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 19;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tm_msgs/ConnectTMRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '689402be41aef39745cc8a1b503617c8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #float64 DEFAULT_TIMEOUT = 1.0
    #float64 DEFAULT_TIMEVAL = 3.0
    #server :   TMSVR, TMSCT
    #connect/reconnect : In Connection phase. 
    #connect    == true. Keeping connect function
    #reconnect  == true. If connect funcition fail, It will reconnect.
    
    int8 TMSVR = 0
    int8 TMSCT = 1
    
    int8 server
    bool connect
    bool reconnect
    float64 timeout
    float64 timeval
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConnectTMRequest(null);
    if (msg.server !== undefined) {
      resolved.server = msg.server;
    }
    else {
      resolved.server = 0
    }

    if (msg.connect !== undefined) {
      resolved.connect = msg.connect;
    }
    else {
      resolved.connect = false
    }

    if (msg.reconnect !== undefined) {
      resolved.reconnect = msg.reconnect;
    }
    else {
      resolved.reconnect = false
    }

    if (msg.timeout !== undefined) {
      resolved.timeout = msg.timeout;
    }
    else {
      resolved.timeout = 0.0
    }

    if (msg.timeval !== undefined) {
      resolved.timeval = msg.timeval;
    }
    else {
      resolved.timeval = 0.0
    }

    return resolved;
    }
};

// Constants for message
ConnectTMRequest.Constants = {
  TMSVR: 0,
  TMSCT: 1,
}

class ConnectTMResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ok = null;
    }
    else {
      if (initObj.hasOwnProperty('ok')) {
        this.ok = initObj.ok
      }
      else {
        this.ok = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConnectTMResponse
    // Serialize message field [ok]
    bufferOffset = _serializer.bool(obj.ok, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConnectTMResponse
    let len;
    let data = new ConnectTMResponse(null);
    // Deserialize message field [ok]
    data.ok = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tm_msgs/ConnectTMResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6f6da3883749771fac40d6deb24a8c02';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #ok :   connect status
    bool ok
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConnectTMResponse(null);
    if (msg.ok !== undefined) {
      resolved.ok = msg.ok;
    }
    else {
      resolved.ok = false
    }

    return resolved;
    }
};

module.exports = {
  Request: ConnectTMRequest,
  Response: ConnectTMResponse,
  md5sum() { return '0d50ce933552e4d5e66858757bce799c'; },
  datatype() { return 'tm_msgs/ConnectTM'; }
};
