import 'package:dailytask/app/core/values/colors.dart';
import 'package:dailytask/app/modules/dashboard/dashboard.dart';
import 'package:flutter/material.dart';

import '../../core/constants.dart';
import '../../core/utils/extension.dart';
import '../../core/values/images.dart';
import '../../widgets/dashboard/bottomNavigationItem.dart';
import '../../widgets/dummy/profile_dummy_img.dart';

class TimeLine extends StatefulWidget {
  const TimeLine({Key? key}) : super(key: key);

  @override
  State<TimeLine> createState() => _TimeLineState();
}

class _TimeLineState extends State<TimeLine> {
  ValueNotifier<int> bottomNavigatorTrigger = ValueNotifier(0);

  StatelessWidget currentScreen = DashBoard();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: _appBar(),
        body: Stack(children: [
          ValueListenableBuilder(
              valueListenable: bottomNavigatorTrigger,
              builder: (BuildContext context, _, __) {
                return PageStorage(
                    bucket: bucket,
                    child: screens[bottomNavigatorTrigger.value]);
              })
        ]),
        floatingActionButton: FloatingActionButton(
          //onPressed: _pushAddTodoScreen,
          backgroundColor: tdBlack,
          mini: true,
          elevation: 3.0,
          onPressed: () => print(''),
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Container(
          height: 55,
          child: BottomAppBar(
            notchMargin: 5.0,
            elevation: 20,
            shape: const CircularNotchedRectangle(),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const SizedBox(
                width: 10,
              ),
              BottomNavigationItem(
                  itemIndex: 0,
                  notifier: bottomNavigatorTrigger,
                  icon: Icons.home_rounded),
              const Spacer(),
              BottomNavigationItem(
                  itemIndex: 1,
                  notifier: bottomNavigatorTrigger,
                  icon: Icons.person_rounded),
              const SizedBox(
                width: 10,
              ),
            ]),
          ),
        ));
  }

  AppBar _appBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.menu,
              color: tdBlack,
              size: 30,
            ),
            ProfileDummyImg(
                color: HexColor.fromHex("93F0F0"),
                dummyType: ProfileDummyTypeImg.Image,
                image: profileImg,
                scale: 1)
          ]),
    );
  }
}
