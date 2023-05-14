import 'package:dailytask/app/modules/dashboard/dashboard.dart';
import 'package:dailytask/app/modules/profile/profile.dart';
import 'values/values.dart';
import 'package:flutter/material.dart';

String tabSpace = "\t\t\t";

final List<Widget> screens = [
  DashBoard(),
  ProfileView(),
];

List<Color> progressCardGradient = [
  HexColor.fromHex("#fdf7e9"),
  HexColor.fromHex("#fdf7e9"),
  HexColor.fromHex("#fdf7e9"),
];

List<Color> progressCardGradientList = [
  HexColor.fromHex("87EFB5"),
  HexColor.fromHex("8ABFFC"),
  HexColor.fromHex("EEB2E8"),
];

Color getPriorityColor(String priority) {
  if(priority == "High"){
    return Colors.redAccent;
  }else if(priority == "Medium"){
    return Colors.orangeAccent;
  }else if(priority == "Low"){
    return Colors.blueGrey;
  }else{
    return Colors.grey.shade500;
  }
}

Color getStatusColor(String status) {
  if(status == "Done"){
    return Colors.green;
  }else if(status == "Pending"){
    return Colors.orangeAccent;
  }else if(status == "WIP"){
    return Colors.red;
  }else{
    return Colors.grey.shade500;
  }
}

IconData getStatusIcon(String status) {
  if(status == "Done"){
    return Icons.check;
  }else if(status == "Pending"){
    return Icons.close;
  }else if(status == "WIP"){
    return Icons.close;
  }else{
    return Icons.close;
  }
}
