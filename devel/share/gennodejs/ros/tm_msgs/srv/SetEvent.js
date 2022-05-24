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

class SetEventRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.func = null;
      this.arg0 = null;
      this.arg1 = null;
    }
    else {
      if (initObj.hasOwnProperty('func')) {
        this.func = initObj.func
      }
      else {
        this.func = 0;
      }
      if (initObj.hasOwnProperty('arg0')) {
        this.arg0 = initObj.arg0
      }
      else {
        this.arg0 = 0;
      }
      if (initObj.hasOwnProperty('arg1')) {
        this.arg1 = initObj.arg1
      }
      else {
        this.arg1 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetEventRequest
    // Serialize message field [func]
    bufferOffset = _serializer.int8(obj.func, buffer, bufferOffset);
    // Serialize message field [arg0]
    bufferOffset = _serializer.int8(obj.arg0, buffer, bufferOffset);
    // Serialize message field [arg1]
    bufferOffset = _serializer.int8(obj.arg1, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetEventRequest
    let len;
    let data = new SetEventRequest(null);
    // Deserialize message field [func]
    data.func = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [arg0]
    data.arg0 = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [arg1]
    data.arg1 = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tm_msgs/SetEventRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b239077800357c9aa13c08a1a4a4dce9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # More details please refer to the tm_ros_service.cpp/set_event function.
    int8 TAG = 1
    int8 WAIT_TAG = 2
    int8 STOP = 11
    int8 PAUSE = 12
    int8 RESUME = 13
    
    int8 EXIT = -1
    
    int8 func
    int8 arg0 # if fun is TAG or WAIT_TAG, arg0 is timeout in ms
    int8 arg1 # if fun is TAG or WAIT_TAG, arg1 is id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetEventRequest(null);
    if (msg.func !== undefined) {
      resolved.func = msg.func;
    }
    else {
      resolved.func = 0
    }

    if (msg.arg0 !== undefined) {
      resolved.arg0 = msg.arg0;
    }
    else {
      resolved.arg0 = 0
    }

    if (msg.arg1 !== undefined) {
      resolved.arg1 = msg.arg1;
    }
    else {
      resolved.arg1 = 0
    }

    return resolved;
    }
};

// Constants for message
SetEventRequest.Constants = {
  TAG: 1,
  WAIT_TAG: 2,
  STOP: 11,
  PAUSE: 12,
  RESUME: 13,
  EXIT: -1,
}

class SetEventResponse {
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
    // Serializes a message object of type SetEventResponse
    // Serialize message field [ok]
    bufferOffset = _serializer.bool(obj.ok, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetEventResponse
    let len;
    let data = new SetEventResponse(null);
    // Deserialize message field [ok]
    data.ok = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tm_msgs/SetEventResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6f6da3883749771fac40d6deb24a8c02';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #ok == complete status
    bool ok
    # int8 rv
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetEventResponse(null);
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
  Request: SetEventRequest,
  Response: SetEventResponse,
  md5sum() { return '62b75d8dc56191f201e7699fc646eb67'; },
  datatype() { return 'tm_msgs/SetEvent'; }
};
