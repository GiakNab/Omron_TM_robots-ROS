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

class AskItemRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.item = null;
      this.wait_time = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('item')) {
        this.item = initObj.item
      }
      else {
        this.item = '';
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
    // Serializes a message object of type AskItemRequest
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [item]
    bufferOffset = _serializer.string(obj.item, buffer, bufferOffset);
    // Serialize message field [wait_time]
    bufferOffset = _serializer.float64(obj.wait_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AskItemRequest
    let len;
    let data = new AskItemRequest(null);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [item]
    data.item = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [wait_time]
    data.wait_time = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.id.length;
    length += object.item.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tm_msgs/AskItemRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '119d57306382144e550df77a72a81fce';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Ask: request 'Read'
    # id        : The discribtion you want to name. 
    # item      : More details please refer to the TM_Robot_Expression.pdf(1.76 rev1.00) Chapter 7.4 TMSCT
    # wait_time : set wait time.
    # More details please refer to the TM_Robot_Expression.pdf(version 1.76_6300) Chapter 7.4 TMSCT
    
    string id
    string item
    
    float64 wait_time
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AskItemRequest(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.item !== undefined) {
      resolved.item = msg.item;
    }
    else {
      resolved.item = ''
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

class AskItemResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ok = null;
      this.id = null;
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('ok')) {
        this.ok = initObj.ok
      }
      else {
        this.ok = false;
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AskItemResponse
    // Serialize message field [ok]
    bufferOffset = _serializer.bool(obj.ok, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.string(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AskItemResponse
    let len;
    let data = new AskItemResponse(null);
    // Deserialize message field [ok]
    data.ok = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.id.length;
    length += object.value.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tm_msgs/AskItemResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '79f96d7d925273cc7a9e664679391312';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ok        : read status 
    bool ok
    
    # id        : The discribtion you want to name.
    # value     : The value of asked item.
    string id
    string value
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AskItemResponse(null);
    if (msg.ok !== undefined) {
      resolved.ok = msg.ok;
    }
    else {
      resolved.ok = false
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: AskItemRequest,
  Response: AskItemResponse,
  md5sum() { return 'b3422b8e3441a8072a0236251e9f0ee1'; },
  datatype() { return 'tm_msgs/AskItem'; }
};
