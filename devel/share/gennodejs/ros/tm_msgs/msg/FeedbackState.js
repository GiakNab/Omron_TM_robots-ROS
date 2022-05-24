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

class FeedbackState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.is_svr_connected = null;
      this.is_sct_connected = null;
      this.tmsrv_cperr = null;
      this.tmscript_cperr = null;
      this.tmsrv_dataerr = null;
      this.tmscript_dataerr = null;
      this.max_not_connect_in_s = null;
      this.disconnection_times = null;
      this.joint_pos = null;
      this.joint_vel = null;
      this.joint_tor = null;
      this.tool0_pose = null;
      this.tool_pose = null;
      this.tcp_speed = null;
      this.tcp_force = null;
      this.joint_tor_average = null;
      this.joint_tor_min = null;
      this.joint_tor_max = null;
      this.robot_link = null;
      this.is_data_table_correct = null;
      this.robot_error = null;
      this.project_run = null;
      this.project_pause = null;
      this.safetyguard_a = null;
      this.e_stop = null;
      this.camera_light = null;
      this.error_code = null;
      this.project_speed = null;
      this.ma_mode = null;
      this.robot_light = null;
      this.cb_digital_output = null;
      this.cb_digital_input = null;
      this.cb_analog_output = null;
      this.cb_analog_input = null;
      this.ee_digital_output = null;
      this.ee_digital_input = null;
      this.ee_analog_output = null;
      this.ee_analog_input = null;
      this.error_content = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('is_svr_connected')) {
        this.is_svr_connected = initObj.is_svr_connected
      }
      else {
        this.is_svr_connected = false;
      }
      if (initObj.hasOwnProperty('is_sct_connected')) {
        this.is_sct_connected = initObj.is_sct_connected
      }
      else {
        this.is_sct_connected = false;
      }
      if (initObj.hasOwnProperty('tmsrv_cperr')) {
        this.tmsrv_cperr = initObj.tmsrv_cperr
      }
      else {
        this.tmsrv_cperr = 0;
      }
      if (initObj.hasOwnProperty('tmscript_cperr')) {
        this.tmscript_cperr = initObj.tmscript_cperr
      }
      else {
        this.tmscript_cperr = 0;
      }
      if (initObj.hasOwnProperty('tmsrv_dataerr')) {
        this.tmsrv_dataerr = initObj.tmsrv_dataerr
      }
      else {
        this.tmsrv_dataerr = 0;
      }
      if (initObj.hasOwnProperty('tmscript_dataerr')) {
        this.tmscript_dataerr = initObj.tmscript_dataerr
      }
      else {
        this.tmscript_dataerr = 0;
      }
      if (initObj.hasOwnProperty('max_not_connect_in_s')) {
        this.max_not_connect_in_s = initObj.max_not_connect_in_s
      }
      else {
        this.max_not_connect_in_s = 0;
      }
      if (initObj.hasOwnProperty('disconnection_times')) {
        this.disconnection_times = initObj.disconnection_times
      }
      else {
        this.disconnection_times = 0;
      }
      if (initObj.hasOwnProperty('joint_pos')) {
        this.joint_pos = initObj.joint_pos
      }
      else {
        this.joint_pos = [];
      }
      if (initObj.hasOwnProperty('joint_vel')) {
        this.joint_vel = initObj.joint_vel
      }
      else {
        this.joint_vel = [];
      }
      if (initObj.hasOwnProperty('joint_tor')) {
        this.joint_tor = initObj.joint_tor
      }
      else {
        this.joint_tor = [];
      }
      if (initObj.hasOwnProperty('tool0_pose')) {
        this.tool0_pose = initObj.tool0_pose
      }
      else {
        this.tool0_pose = [];
      }
      if (initObj.hasOwnProperty('tool_pose')) {
        this.tool_pose = initObj.tool_pose
      }
      else {
        this.tool_pose = [];
      }
      if (initObj.hasOwnProperty('tcp_speed')) {
        this.tcp_speed = initObj.tcp_speed
      }
      else {
        this.tcp_speed = [];
      }
      if (initObj.hasOwnProperty('tcp_force')) {
        this.tcp_force = initObj.tcp_force
      }
      else {
        this.tcp_force = [];
      }
      if (initObj.hasOwnProperty('joint_tor_average')) {
        this.joint_tor_average = initObj.joint_tor_average
      }
      else {
        this.joint_tor_average = [];
      }
      if (initObj.hasOwnProperty('joint_tor_min')) {
        this.joint_tor_min = initObj.joint_tor_min
      }
      else {
        this.joint_tor_min = [];
      }
      if (initObj.hasOwnProperty('joint_tor_max')) {
        this.joint_tor_max = initObj.joint_tor_max
      }
      else {
        this.joint_tor_max = [];
      }
      if (initObj.hasOwnProperty('robot_link')) {
        this.robot_link = initObj.robot_link
      }
      else {
        this.robot_link = false;
      }
      if (initObj.hasOwnProperty('is_data_table_correct')) {
        this.is_data_table_correct = initObj.is_data_table_correct
      }
      else {
        this.is_data_table_correct = false;
      }
      if (initObj.hasOwnProperty('robot_error')) {
        this.robot_error = initObj.robot_error
      }
      else {
        this.robot_error = false;
      }
      if (initObj.hasOwnProperty('project_run')) {
        this.project_run = initObj.project_run
      }
      else {
        this.project_run = false;
      }
      if (initObj.hasOwnProperty('project_pause')) {
        this.project_pause = initObj.project_pause
      }
      else {
        this.project_pause = false;
      }
      if (initObj.hasOwnProperty('safetyguard_a')) {
        this.safetyguard_a = initObj.safetyguard_a
      }
      else {
        this.safetyguard_a = false;
      }
      if (initObj.hasOwnProperty('e_stop')) {
        this.e_stop = initObj.e_stop
      }
      else {
        this.e_stop = false;
      }
      if (initObj.hasOwnProperty('camera_light')) {
        this.camera_light = initObj.camera_light
      }
      else {
        this.camera_light = false;
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
      }
      if (initObj.hasOwnProperty('project_speed')) {
        this.project_speed = initObj.project_speed
      }
      else {
        this.project_speed = 0;
      }
      if (initObj.hasOwnProperty('ma_mode')) {
        this.ma_mode = initObj.ma_mode
      }
      else {
        this.ma_mode = 0;
      }
      if (initObj.hasOwnProperty('robot_light')) {
        this.robot_light = initObj.robot_light
      }
      else {
        this.robot_light = 0;
      }
      if (initObj.hasOwnProperty('cb_digital_output')) {
        this.cb_digital_output = initObj.cb_digital_output
      }
      else {
        this.cb_digital_output = [];
      }
      if (initObj.hasOwnProperty('cb_digital_input')) {
        this.cb_digital_input = initObj.cb_digital_input
      }
      else {
        this.cb_digital_input = [];
      }
      if (initObj.hasOwnProperty('cb_analog_output')) {
        this.cb_analog_output = initObj.cb_analog_output
      }
      else {
        this.cb_analog_output = [];
      }
      if (initObj.hasOwnProperty('cb_analog_input')) {
        this.cb_analog_input = initObj.cb_analog_input
      }
      else {
        this.cb_analog_input = [];
      }
      if (initObj.hasOwnProperty('ee_digital_output')) {
        this.ee_digital_output = initObj.ee_digital_output
      }
      else {
        this.ee_digital_output = [];
      }
      if (initObj.hasOwnProperty('ee_digital_input')) {
        this.ee_digital_input = initObj.ee_digital_input
      }
      else {
        this.ee_digital_input = [];
      }
      if (initObj.hasOwnProperty('ee_analog_output')) {
        this.ee_analog_output = initObj.ee_analog_output
      }
      else {
        this.ee_analog_output = [];
      }
      if (initObj.hasOwnProperty('ee_analog_input')) {
        this.ee_analog_input = initObj.ee_analog_input
      }
      else {
        this.ee_analog_input = [];
      }
      if (initObj.hasOwnProperty('error_content')) {
        this.error_content = initObj.error_content
      }
      else {
        this.error_content = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FeedbackState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [is_svr_connected]
    bufferOffset = _serializer.bool(obj.is_svr_connected, buffer, bufferOffset);
    // Serialize message field [is_sct_connected]
    bufferOffset = _serializer.bool(obj.is_sct_connected, buffer, bufferOffset);
    // Serialize message field [tmsrv_cperr]
    bufferOffset = _serializer.int32(obj.tmsrv_cperr, buffer, bufferOffset);
    // Serialize message field [tmscript_cperr]
    bufferOffset = _serializer.int32(obj.tmscript_cperr, buffer, bufferOffset);
    // Serialize message field [tmsrv_dataerr]
    bufferOffset = _serializer.int32(obj.tmsrv_dataerr, buffer, bufferOffset);
    // Serialize message field [tmscript_dataerr]
    bufferOffset = _serializer.int32(obj.tmscript_dataerr, buffer, bufferOffset);
    // Serialize message field [max_not_connect_in_s]
    bufferOffset = _serializer.int32(obj.max_not_connect_in_s, buffer, bufferOffset);
    // Serialize message field [disconnection_times]
    bufferOffset = _serializer.int32(obj.disconnection_times, buffer, bufferOffset);
    // Serialize message field [joint_pos]
    bufferOffset = _arraySerializer.float64(obj.joint_pos, buffer, bufferOffset, null);
    // Serialize message field [joint_vel]
    bufferOffset = _arraySerializer.float64(obj.joint_vel, buffer, bufferOffset, null);
    // Serialize message field [joint_tor]
    bufferOffset = _arraySerializer.float64(obj.joint_tor, buffer, bufferOffset, null);
    // Serialize message field [tool0_pose]
    bufferOffset = _arraySerializer.float64(obj.tool0_pose, buffer, bufferOffset, null);
    // Serialize message field [tool_pose]
    bufferOffset = _arraySerializer.float64(obj.tool_pose, buffer, bufferOffset, null);
    // Serialize message field [tcp_speed]
    bufferOffset = _arraySerializer.float64(obj.tcp_speed, buffer, bufferOffset, null);
    // Serialize message field [tcp_force]
    bufferOffset = _arraySerializer.float64(obj.tcp_force, buffer, bufferOffset, null);
    // Serialize message field [joint_tor_average]
    bufferOffset = _arraySerializer.float64(obj.joint_tor_average, buffer, bufferOffset, null);
    // Serialize message field [joint_tor_min]
    bufferOffset = _arraySerializer.float64(obj.joint_tor_min, buffer, bufferOffset, null);
    // Serialize message field [joint_tor_max]
    bufferOffset = _arraySerializer.float64(obj.joint_tor_max, buffer, bufferOffset, null);
    // Serialize message field [robot_link]
    bufferOffset = _serializer.bool(obj.robot_link, buffer, bufferOffset);
    // Serialize message field [is_data_table_correct]
    bufferOffset = _serializer.bool(obj.is_data_table_correct, buffer, bufferOffset);
    // Serialize message field [robot_error]
    bufferOffset = _serializer.bool(obj.robot_error, buffer, bufferOffset);
    // Serialize message field [project_run]
    bufferOffset = _serializer.bool(obj.project_run, buffer, bufferOffset);
    // Serialize message field [project_pause]
    bufferOffset = _serializer.bool(obj.project_pause, buffer, bufferOffset);
    // Serialize message field [safetyguard_a]
    bufferOffset = _serializer.bool(obj.safetyguard_a, buffer, bufferOffset);
    // Serialize message field [e_stop]
    bufferOffset = _serializer.bool(obj.e_stop, buffer, bufferOffset);
    // Serialize message field [camera_light]
    bufferOffset = _serializer.bool(obj.camera_light, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.int32(obj.error_code, buffer, bufferOffset);
    // Serialize message field [project_speed]
    bufferOffset = _serializer.int32(obj.project_speed, buffer, bufferOffset);
    // Serialize message field [ma_mode]
    bufferOffset = _serializer.int32(obj.ma_mode, buffer, bufferOffset);
    // Serialize message field [robot_light]
    bufferOffset = _serializer.int32(obj.robot_light, buffer, bufferOffset);
    // Serialize message field [cb_digital_output]
    bufferOffset = _arraySerializer.bool(obj.cb_digital_output, buffer, bufferOffset, null);
    // Serialize message field [cb_digital_input]
    bufferOffset = _arraySerializer.bool(obj.cb_digital_input, buffer, bufferOffset, null);
    // Serialize message field [cb_analog_output]
    bufferOffset = _arraySerializer.float32(obj.cb_analog_output, buffer, bufferOffset, null);
    // Serialize message field [cb_analog_input]
    bufferOffset = _arraySerializer.float32(obj.cb_analog_input, buffer, bufferOffset, null);
    // Serialize message field [ee_digital_output]
    bufferOffset = _arraySerializer.bool(obj.ee_digital_output, buffer, bufferOffset, null);
    // Serialize message field [ee_digital_input]
    bufferOffset = _arraySerializer.bool(obj.ee_digital_input, buffer, bufferOffset, null);
    // Serialize message field [ee_analog_output]
    bufferOffset = _arraySerializer.float32(obj.ee_analog_output, buffer, bufferOffset, null);
    // Serialize message field [ee_analog_input]
    bufferOffset = _arraySerializer.float32(obj.ee_analog_input, buffer, bufferOffset, null);
    // Serialize message field [error_content]
    bufferOffset = _serializer.string(obj.error_content, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FeedbackState
    let len;
    let data = new FeedbackState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_svr_connected]
    data.is_svr_connected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_sct_connected]
    data.is_sct_connected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [tmsrv_cperr]
    data.tmsrv_cperr = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [tmscript_cperr]
    data.tmscript_cperr = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [tmsrv_dataerr]
    data.tmsrv_dataerr = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [tmscript_dataerr]
    data.tmscript_dataerr = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [max_not_connect_in_s]
    data.max_not_connect_in_s = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [disconnection_times]
    data.disconnection_times = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [joint_pos]
    data.joint_pos = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [joint_vel]
    data.joint_vel = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [joint_tor]
    data.joint_tor = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [tool0_pose]
    data.tool0_pose = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [tool_pose]
    data.tool_pose = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [tcp_speed]
    data.tcp_speed = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [tcp_force]
    data.tcp_force = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [joint_tor_average]
    data.joint_tor_average = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [joint_tor_min]
    data.joint_tor_min = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [joint_tor_max]
    data.joint_tor_max = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [robot_link]
    data.robot_link = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_data_table_correct]
    data.is_data_table_correct = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [robot_error]
    data.robot_error = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [project_run]
    data.project_run = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [project_pause]
    data.project_pause = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [safetyguard_a]
    data.safetyguard_a = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [e_stop]
    data.e_stop = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [camera_light]
    data.camera_light = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [project_speed]
    data.project_speed = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ma_mode]
    data.ma_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [robot_light]
    data.robot_light = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [cb_digital_output]
    data.cb_digital_output = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [cb_digital_input]
    data.cb_digital_input = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [cb_analog_output]
    data.cb_analog_output = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [cb_analog_input]
    data.cb_analog_input = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [ee_digital_output]
    data.ee_digital_output = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [ee_digital_input]
    data.ee_digital_input = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [ee_analog_output]
    data.ee_analog_output = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [ee_analog_input]
    data.ee_analog_input = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [error_content]
    data.error_content = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 8 * object.joint_pos.length;
    length += 8 * object.joint_vel.length;
    length += 8 * object.joint_tor.length;
    length += 8 * object.tool0_pose.length;
    length += 8 * object.tool_pose.length;
    length += 8 * object.tcp_speed.length;
    length += 8 * object.tcp_force.length;
    length += 8 * object.joint_tor_average.length;
    length += 8 * object.joint_tor_min.length;
    length += 8 * object.joint_tor_max.length;
    length += object.cb_digital_output.length;
    length += object.cb_digital_input.length;
    length += 4 * object.cb_analog_output.length;
    length += 4 * object.cb_analog_input.length;
    length += object.ee_digital_output.length;
    length += object.ee_digital_input.length;
    length += 4 * object.ee_analog_output.length;
    length += 4 * object.ee_analog_input.length;
    length += object.error_content.length;
    return length + 126;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tm_msgs/FeedbackState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '44d5702d5a7507d317011ef00404b814';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    # Connection Status
    bool is_svr_connected       # Ethernet connection
    bool is_sct_connected       # Listen Node connection
    
    # Response ROS Node Status
    int32 tmsrv_cperr           # TM Ethernet Slave Communication Last CPERR Error Code
    int32 tmscript_cperr        # External Script Communication Last CPERR Error Code
    int32 tmsrv_dataerr         # TMSVR Communication Last Data Error Code
    int32 tmscript_dataerr      # External Script Communication TMSCT (or TMSTA) Last Data Error Code
    
    # Disconnection Message
    int32 max_not_connect_in_s
    int32 disconnection_times
    
    # Movement
    float64[] joint_pos
    float64[] joint_vel
    float64[] joint_tor
    float64[] tool0_pose
    float64[] tool_pose
    float64[] tcp_speed
    float64[] tcp_force
    
    # Torque Data(for TM-Flow 1.84)
    float64[] joint_tor_average
    float64[] joint_tor_min
    float64[] joint_tor_max
    
    # Status
    bool robot_link              # Link Robot Controller
    bool is_data_table_correct   # Data Table Setting is Correct
    bool robot_error             # Error or Not
    bool project_run             # Project Runing or not
    bool project_pause           # Project Pause or not
    bool safetyguard_a           # Safety IO(Safeguard Port A trigger) 
    bool e_stop                  # Emergency STOP
    bool camera_light            # Light
    int32 error_code             # Last Error Code
    int32 project_speed          # Project Running Speed
    int32 ma_mode                # M/A Mode
    int32 robot_light            # Robot light
    
    # IO
    bool[] cb_digital_output
    bool[] cb_digital_input
    float32[] cb_analog_output
    float32[] cb_analog_input
    bool[] ee_digital_output
    bool[] ee_digital_input
    float32[] ee_analog_output
    float32[] ee_analog_input
    
    # String
    string error_content
    
    
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
    const resolved = new FeedbackState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.is_svr_connected !== undefined) {
      resolved.is_svr_connected = msg.is_svr_connected;
    }
    else {
      resolved.is_svr_connected = false
    }

    if (msg.is_sct_connected !== undefined) {
      resolved.is_sct_connected = msg.is_sct_connected;
    }
    else {
      resolved.is_sct_connected = false
    }

    if (msg.tmsrv_cperr !== undefined) {
      resolved.tmsrv_cperr = msg.tmsrv_cperr;
    }
    else {
      resolved.tmsrv_cperr = 0
    }

    if (msg.tmscript_cperr !== undefined) {
      resolved.tmscript_cperr = msg.tmscript_cperr;
    }
    else {
      resolved.tmscript_cperr = 0
    }

    if (msg.tmsrv_dataerr !== undefined) {
      resolved.tmsrv_dataerr = msg.tmsrv_dataerr;
    }
    else {
      resolved.tmsrv_dataerr = 0
    }

    if (msg.tmscript_dataerr !== undefined) {
      resolved.tmscript_dataerr = msg.tmscript_dataerr;
    }
    else {
      resolved.tmscript_dataerr = 0
    }

    if (msg.max_not_connect_in_s !== undefined) {
      resolved.max_not_connect_in_s = msg.max_not_connect_in_s;
    }
    else {
      resolved.max_not_connect_in_s = 0
    }

    if (msg.disconnection_times !== undefined) {
      resolved.disconnection_times = msg.disconnection_times;
    }
    else {
      resolved.disconnection_times = 0
    }

    if (msg.joint_pos !== undefined) {
      resolved.joint_pos = msg.joint_pos;
    }
    else {
      resolved.joint_pos = []
    }

    if (msg.joint_vel !== undefined) {
      resolved.joint_vel = msg.joint_vel;
    }
    else {
      resolved.joint_vel = []
    }

    if (msg.joint_tor !== undefined) {
      resolved.joint_tor = msg.joint_tor;
    }
    else {
      resolved.joint_tor = []
    }

    if (msg.tool0_pose !== undefined) {
      resolved.tool0_pose = msg.tool0_pose;
    }
    else {
      resolved.tool0_pose = []
    }

    if (msg.tool_pose !== undefined) {
      resolved.tool_pose = msg.tool_pose;
    }
    else {
      resolved.tool_pose = []
    }

    if (msg.tcp_speed !== undefined) {
      resolved.tcp_speed = msg.tcp_speed;
    }
    else {
      resolved.tcp_speed = []
    }

    if (msg.tcp_force !== undefined) {
      resolved.tcp_force = msg.tcp_force;
    }
    else {
      resolved.tcp_force = []
    }

    if (msg.joint_tor_average !== undefined) {
      resolved.joint_tor_average = msg.joint_tor_average;
    }
    else {
      resolved.joint_tor_average = []
    }

    if (msg.joint_tor_min !== undefined) {
      resolved.joint_tor_min = msg.joint_tor_min;
    }
    else {
      resolved.joint_tor_min = []
    }

    if (msg.joint_tor_max !== undefined) {
      resolved.joint_tor_max = msg.joint_tor_max;
    }
    else {
      resolved.joint_tor_max = []
    }

    if (msg.robot_link !== undefined) {
      resolved.robot_link = msg.robot_link;
    }
    else {
      resolved.robot_link = false
    }

    if (msg.is_data_table_correct !== undefined) {
      resolved.is_data_table_correct = msg.is_data_table_correct;
    }
    else {
      resolved.is_data_table_correct = false
    }

    if (msg.robot_error !== undefined) {
      resolved.robot_error = msg.robot_error;
    }
    else {
      resolved.robot_error = false
    }

    if (msg.project_run !== undefined) {
      resolved.project_run = msg.project_run;
    }
    else {
      resolved.project_run = false
    }

    if (msg.project_pause !== undefined) {
      resolved.project_pause = msg.project_pause;
    }
    else {
      resolved.project_pause = false
    }

    if (msg.safetyguard_a !== undefined) {
      resolved.safetyguard_a = msg.safetyguard_a;
    }
    else {
      resolved.safetyguard_a = false
    }

    if (msg.e_stop !== undefined) {
      resolved.e_stop = msg.e_stop;
    }
    else {
      resolved.e_stop = false
    }

    if (msg.camera_light !== undefined) {
      resolved.camera_light = msg.camera_light;
    }
    else {
      resolved.camera_light = false
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
    }

    if (msg.project_speed !== undefined) {
      resolved.project_speed = msg.project_speed;
    }
    else {
      resolved.project_speed = 0
    }

    if (msg.ma_mode !== undefined) {
      resolved.ma_mode = msg.ma_mode;
    }
    else {
      resolved.ma_mode = 0
    }

    if (msg.robot_light !== undefined) {
      resolved.robot_light = msg.robot_light;
    }
    else {
      resolved.robot_light = 0
    }

    if (msg.cb_digital_output !== undefined) {
      resolved.cb_digital_output = msg.cb_digital_output;
    }
    else {
      resolved.cb_digital_output = []
    }

    if (msg.cb_digital_input !== undefined) {
      resolved.cb_digital_input = msg.cb_digital_input;
    }
    else {
      resolved.cb_digital_input = []
    }

    if (msg.cb_analog_output !== undefined) {
      resolved.cb_analog_output = msg.cb_analog_output;
    }
    else {
      resolved.cb_analog_output = []
    }

    if (msg.cb_analog_input !== undefined) {
      resolved.cb_analog_input = msg.cb_analog_input;
    }
    else {
      resolved.cb_analog_input = []
    }

    if (msg.ee_digital_output !== undefined) {
      resolved.ee_digital_output = msg.ee_digital_output;
    }
    else {
      resolved.ee_digital_output = []
    }

    if (msg.ee_digital_input !== undefined) {
      resolved.ee_digital_input = msg.ee_digital_input;
    }
    else {
      resolved.ee_digital_input = []
    }

    if (msg.ee_analog_output !== undefined) {
      resolved.ee_analog_output = msg.ee_analog_output;
    }
    else {
      resolved.ee_analog_output = []
    }

    if (msg.ee_analog_input !== undefined) {
      resolved.ee_analog_input = msg.ee_analog_input;
    }
    else {
      resolved.ee_analog_input = []
    }

    if (msg.error_content !== undefined) {
      resolved.error_content = msg.error_content;
    }
    else {
      resolved.error_content = ''
    }

    return resolved;
    }
};

module.exports = FeedbackState;
