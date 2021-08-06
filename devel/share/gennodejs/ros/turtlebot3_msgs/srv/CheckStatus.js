// Auto-generated. Do not edit!

// (in-package turtlebot3_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class CheckStatusRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robotID = null;
      this.request = null;
    }
    else {
      if (initObj.hasOwnProperty('robotID')) {
        this.robotID = initObj.robotID
      }
      else {
        this.robotID = '';
      }
      if (initObj.hasOwnProperty('request')) {
        this.request = initObj.request
      }
      else {
        this.request = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CheckStatusRequest
    // Serialize message field [robotID]
    bufferOffset = _serializer.string(obj.robotID, buffer, bufferOffset);
    // Serialize message field [request]
    bufferOffset = _serializer.string(obj.request, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CheckStatusRequest
    let len;
    let data = new CheckStatusRequest(null);
    // Deserialize message field [robotID]
    data.robotID = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [request]
    data.request = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.robotID);
    length += _getByteLength(object.request);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'turtlebot3_msgs/CheckStatusRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '865aadf2c6758ad512f11b5ca5adcef1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string robotID
    string request
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CheckStatusRequest(null);
    if (msg.robotID !== undefined) {
      resolved.robotID = msg.robotID;
    }
    else {
      resolved.robotID = ''
    }

    if (msg.request !== undefined) {
      resolved.request = msg.request;
    }
    else {
      resolved.request = ''
    }

    return resolved;
    }
};

class CheckStatusResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CheckStatusResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CheckStatusResponse
    let len;
    let data = new CheckStatusResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'turtlebot3_msgs/CheckStatusResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CheckStatusResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: CheckStatusRequest,
  Response: CheckStatusResponse,
  md5sum() { return '7ff597cbc0b70e34c1edffaf7514d72b'; },
  datatype() { return 'turtlebot3_msgs/CheckStatus'; }
};
