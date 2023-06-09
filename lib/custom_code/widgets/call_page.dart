// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'dart:math' as math;

final String localUserID = math.Random().nextInt(10000).toString();

class CallPage extends StatefulWidget {
  const CallPage({
    Key? key,
    this.width,
    this.height,
    this.callID,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? callID;

  @override
  _CallPageState createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID:
          1892115003, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign:
          "7ed4cc2f95f868ebae39f270af81123004d2376c0f22d13291b61081dbfde3c8", // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: localUserID,
      userName: 'Ashutosh$localUserID',
      callID: '123',
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVoiceCall()
        ..onOnlySelfInRoom = (context) => Navigator.of(context).pop(),
    );
  }
}

// Set your widget name, define your parameter, and then add the
// boilerplate code using the button on the right!
