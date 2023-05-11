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

/*Widget buildStackedImages(
    {TextDirection direction = TextDirection.rtl,
      String? numberOfMembers,
      bool? addMore}) {
  const double size = 50;
  const double xShift = 20;

  Container lastContainer = Container(
      width: 40,
      height: 40,
      decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      child: Center(
        child: Text(numberOfMembers!,
            style: GoogleFonts.lato(
                color: HexColor.fromHex("226AFD"),
                fontSize: 20,
                fontWeight: FontWeight.bold)),
      ));

  Container iconContainer = Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          color: AppColors.primaryAccentColor, shape: BoxShape.circle),
      child: const Icon(Icons.add, color: Colors.white));

  final items = List.generate(
      4,
          (index) => ProfileDummyImg(
          color: AppData.groupBackgroundColors[index],
          dummyType: ProfileDummyTypeImg.Image,
          image: AppData.profileImages[index],
          scale: 1.0));

  return StackedWidgets(
    direction: direction,
    items: [
      ...items,
      lastContainer,
      (addMore != null) ? iconContainer : SizedBox()
    ],
    size: size,
    xShift: xShift,
  );
}*/

/*
final onlineUsers = List.generate(
    AppData.onlineUsers.length,
        (index) => OnlineUser(
      image: AppData.onlineUsers[index]['profileImage'],
      imageBackground: AppData.onlineUsers[index]['color'],
      userName: AppData.onlineUsers[index]['name'],
    ));*/
