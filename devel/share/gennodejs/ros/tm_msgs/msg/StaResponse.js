// Auto-generated. Do not edit!

// (in-package tm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class StaResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.subcmd = null;
      this.subdata = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
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
    // Serializes a message object of type StaResponse
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [subcmd]
    bufferOffset = _serializer.string(obj.subcmd, buffer, bufferOffset);
    // Serialize message field [subdata]
    bufferOffset = _serializer.string(obj.subdata, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StaResponse
    let len;
    let data = new StaResponse(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [subcmd]
    data.subcmd = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [subdata]
    data.subdata = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.subcmd.length;
    length += object.subdata.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tm_msgs/StaResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a5171002fa543efe0e7302c1efd2051';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # For SetEvent TAG / AskSta service
    # More details please refer to the TM_Robot_Expression.pdf(1.76 rev1.00) Chapter 7.5
    
    Header header
    
    string subcmd
    string subdata
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StaResponse(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
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

module.exports = StaResponse;
