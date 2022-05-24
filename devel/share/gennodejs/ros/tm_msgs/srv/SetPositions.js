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

class SetPositionsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.motion_type = null;
      this.positions = null;
      this.velocity = null;
      this.acc_time = null;
      this.blend_percentage = null;
      this.fine_goal = null;
    }
    else {
      if (initObj.hasOwnProperty('motion_type')) {
        this.motion_type = initObj.motion_type
      }
      else {
        this.motion_type = 0;
      }
      if (initObj.hasOwnProperty('positions')) {
        this.positions = initObj.positions
      }
      else {
        this.positions = [];
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = 0.0;
      }
      if (initObj.hasOwnProperty('acc_time')) {
        this.acc_time = initObj.acc_time
      }
      else {
        this.acc_time = 0.0;
      }
      if (initObj.hasOwnProperty('blend_percentage')) {
        this.blend_percentage = initObj.blend_percentage
      }
      else {
        this.blend_percentage = 0;
      }
      if (initObj.hasOwnProperty('fine_goal')) {
        this.fine_goal = initObj.fine_goal
      }
      else {
        this.fine_goal = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetPositionsRequest
    // Serialize message field [motion_type]
    bufferOffset = _serializer.int8(obj.motion_type, buffer, bufferOffset);
    // Serialize message field [positions]
    bufferOffset = _arraySerializer.float64(obj.positions, buffer, bufferOffset, null);
    // Serialize message field [velocity]
    bufferOffset = _serializer.float64(obj.velocity, buffer, bufferOffset);
    // Serialize message field [acc_time]
    bufferOffset = _serializer.float64(obj.acc_time, buffer, bufferOffset);
    // Serialize message field [blend_percentage]
    bufferOffset = _serializer.int32(obj.blend_percentage, buffer, bufferOffset);
    // Serialize message field [fine_goal]
    bufferOffset = _serializer.bool(obj.fine_goal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetPositionsRequest
    let len;
    let data = new SetPositionsRequest(null);
    // Deserialize message field [motion_type]
    data.motion_type = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [positions]
    data.positions = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [velocity]
    data.velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acc_time]
    data.acc_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [blend_percentage]
    data.blend_percentage = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [fine_goal]
    data.fine_goal = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.positions.length;
    return length + 26;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tm_msgs/SetPositionsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '13d486e0180f3a17f2c79013770ec317';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #motion_type :  PTP_J , PTP_T , LINE_J , LINE_T ,
    #               CIRC_J ,CIRC_T , PLINE_J ,PLINE_T
    # More details please refer to the TM_Robot_Expression.pdf(1.76 rev1.00) Chapter 8.6-8.9
    int8 PTP_J = 1
    int8 PTP_T = 2
    #int8 LINE_J = 3
    int8 LINE_T = 4
    #int8 CIRC_J = 5
    int8 CIRC_T = 6
    #int8 PLINE_J = 7
    int8 PLINE_T = 8
    
    int8 motion_type
    float64[] positions
    float64 velocity       # motion velocity: if expressed in Cartesian coordinate (unit: m/s) , if expressed in joint velocity (unit: rad/s, and the maximum value is limited to pi )
    float64 acc_time       # time to reach maximum speed (unit: ms)
    int32 blend_percentage # blending value: expressed as a percentage (unit: %, and the minimum value of 0 means no blending)
    bool fine_goal         # precise position mode : If activated, the amount of error in the final position will converge more.
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetPositionsRequest(null);
    if (msg.motion_type !== undefined) {
      resolved.motion_type = msg.motion_type;
    }
    else {
      resolved.motion_type = 0
    }

    if (msg.positions !== undefined) {
      resolved.positions = msg.positions;
    }
    else {
      resolved.positions = []
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = 0.0
    }

    if (msg.acc_time !== undefined) {
      resolved.acc_time = msg.acc_time;
    }
    else {
      resolved.acc_time = 0.0
    }

    if (msg.blend_percentage !== undefined) {
      resolved.blend_percentage = msg.blend_percentage;
    }
    else {
      resolved.blend_percentage = 0
    }

    if (msg.fine_goal !== undefined) {
      resolved.fine_goal = msg.fine_goal;
    }
    else {
      resolved.fine_goal = false
    }

    return resolved;
    }
};

// Constants for message
SetPositionsRequest.Constants = {
  PTP_J: 1,
  PTP_T: 2,
  LINE_T: 4,
  CIRC_T: 6,
  PLINE_T: 8,
}

class SetPositionsResponse {
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
    // Serializes a message object of type SetPositionsResponse
    // Serialize message field [ok]
    bufferOffset = _serializer.bool(obj.ok, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetPositionsResponse
    let len;
    let data = new SetPositionsResponse(null);
    // Deserialize message field [ok]
    data.ok = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tm_msgs/SetPositionsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6f6da3883749771fac40d6deb24a8c02';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ok :  set motion status 
    bool ok
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetPositionsResponse(null);
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
  Request: SetPositionsRequest,
  Response: SetPositionsResponse,
  md5sum() { return '0bbf77b368ab8921b229f24921a6e9d7'; },
  datatype() { return 'tm_msgs/SetPositions'; }
};
