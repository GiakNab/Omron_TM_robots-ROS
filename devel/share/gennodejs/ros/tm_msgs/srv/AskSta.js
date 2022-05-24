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

class AskStaRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.subcmd = null;
      this.subdata = null;
      this.wait_time = null;
    }
    else {
      if (initObj.hasOwnProperty('subcmd')) {
        this.subcmd = initObj.subcmd
      }
      else {
        this.subcmd = '';
      }
      if (initObj.hasOwnProperty('subdata')) {
        this.subdata = initObj.subdata
      }
      else {
        this.subdata = '';
      }
      if (initObj.hasOwnProperty('wait_time')) {
        this.wait_time = initObj.wait_time
      }
      else {
        this.wait_time = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AskStaRequest
    // Serialize message field [subcmd]
    bufferOffset = _serializer.string(obj.subcmd, buffer, bufferOffset);
    // Serialize message field [subdata]
    bufferOffset = _serializer.string(obj.subdata, buffer, bufferOffset);
    // Serialize message field [wait_time]
    bufferOffset = _serializer.float64(obj.wait_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AskStaRequest
    let len;
    let data = new AskStaRequest(null);
    // Deserialize message field [subcmd]
    data.subcmd = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [subdata]
    data.subdata = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [wait_time]
    data.wait_time = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.subcmd.length;
    length += object.subdata.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tm_msgs/AskStaRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b4d332df23aae69bb9755f2fba3f4522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Ask: request 'Read' sta
    # More details please refer to the TM_Robot_Expression.pdf(1.76 rev1.00) Chapter 7.5 TMSTA
    # wait_time : set wait time.
    
    string subcmd
    string subdata
    
    float64 wait_time
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AskStaRequest(null);
    if (msg.subcmd !== undefined) {
      resolved.subcmd = msg.subcmd;
    }
    else {
      resolved.subcmd = ''
    }

    if (msg.subdata !== undefined) {
      resolved.subdata = msg.subdata;
    }
    else {
      resolved.subdata = ''
    }

    if (msg.wait_time !== undefined) {
      resolved.wait_time = msg.wait_time;
    }
    else {
      resolved.wait_time = 0.0
    }

    return resolved;
    }
};

class AskStaResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ok = null;
      this.subcmd = null;
      this.subdata = null;
    }
    else {
      if (initObj.hasOwnProperty('ok')) {
        this.ok = initObj.ok
      }
      else {
        this.ok = false;
      }
      if (initObj.hasOwnProperty('subcmd')) {
        this.subcmd = initObj.subcmd
      }
      else {
        this.subcmd = '';
      }
      if (initObj.hasOwnProperty('subdata')) {
        this.subdata = initObj.subdata
      }
      else {
        this.subdata = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AskStaResponse
    // Serialize message field [ok]
    bufferOffset = _serializer.bool(obj.ok, buffer, bufferOffset);
    // Serialize message field [subcmd]
    bufferOffset = _serializer.string(obj.subcmd, buffer, bufferOffset);
    // Serialize message field [subdata]
    bufferOffset = _serializer.string(obj.subdata, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AskStaResponse
    let len;
    let data = new AskStaResponse(null);
    // Deserialize message field [ok]
    data.ok = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [subcmd]
    data.subcmd = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [subdata]
    data.subdata = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.subcmd.length;
    length += object.subdata.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tm_msgs/AskStaResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '25873f3325181d973b805ca6d8ce5c70';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ok        : read status 
    bool ok
    
    string subcmd
    string subdata
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AskStaResponse(null);
    if (msg.ok !== undefined) {
      resolved.ok = msg.ok;
    }
    else {
      resolved.ok = false
    }

    if (msg.subcmd !== undefined) {
      resolved.subcmd = msg.subcmd;
    }
    else {
      resolved.subcmd = ''
    }

    if (msg.subdata !== undefined) {
      resolved.subdata = msg.subdata;
    }
    else {
      resolved.subdata = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: AskStaRequest,
  Response: AskStaResponse,
  md5sum() { return '8d2ef2c8296a1b6a1aea258b0876a209'; },
  datatype() { return 'tm_msgs/AskSta'; }
};
