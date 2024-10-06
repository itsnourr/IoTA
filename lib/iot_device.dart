import 'package:flutter/material.dart';

class IoTDevice {

  String? name;
  String? type;
  String? room;
  bool? state;
  bool? isSettable;
  bool? isInterfaceable;
  IconData? icon;
  Map<String?, String?>? properties;

  IoTDevice({ this.name, this.type, this.state, this.room, this.isSettable,this.isInterfaceable, this.icon, this.properties});

}