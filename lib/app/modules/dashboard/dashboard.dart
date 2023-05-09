import 'package:dailytask/app/core/values/colors.dart';
import 'package:dailytask/app/core/values/sizes.dart';
import 'package:dailytask/app/core/values/strings.dart';
import 'package:flutter/material.dart';
import 'package:dailytask/app/core/values/images.dart';
import '../../core/values/values.dart';
import '../../widgets/dummy/profile_dummy_img.dart';
import '../../widgets/forms/search_box_form.dart';

class DashBoard extends StatelessWidget {
  DashBoard({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _appBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        child: SafeArea(
          child: Stack(
            children: [
              customLine(),
              title(),
              subTitle(),
              searchBox(),
              activityTitle(),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: tdBGColor,
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

  Widget customLine(){
    return Image.asset(customLinerImg);
  }

  Widget title() {
    return Padding(
      padding: EdgeInsets.only(top: sizeHeight * 0.03),
      child: Text(appTitle.toUpperCase(), style: AppTextStyles.header),
    );
  }

  Widget subTitle() {
    return Padding(
      padding: EdgeInsets.only(top: sizeHeight * 0.07),
      child: Text(appSubTitle.toUpperCase(), style: AppTextStyles.subHeader),
    );
  }

  Widget searchBox() {
    return Padding(
      padding: EdgeInsets.only(top: sizeHeight * 0.12),
      child: SearchBoxInput(
        placeholder: searchPlaceHolder.toUpperCase(),
        controller: searchController,
      ),
    );
  }

  Widget activityTitle() {
    return Padding(
      padding: EdgeInsets.only(top: sizeHeight * 0.22),
      child: Text(activityTxt.toUpperCase(), style: AppTextStyles.header2),
    );
  }
}
