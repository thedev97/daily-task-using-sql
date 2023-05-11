import 'package:flutter/material.dart';
import '../../core/values/images.dart';
import '../../core/values/sizes.dart';
import '../../core/values/strings.dart';
import '../../core/values/values.dart';
import '../../widgets/dummy/profile_dummy_img.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        child: SafeArea(
          child: Stack(
            children: [
              customLine(),
              title(),
              profileImage(),
              userName(),
              userMail(),
            ],
          ),
        ),
      ),
    );
  }

  Widget customLine() {
    return Image.asset(customLinerImg);
  }

  Widget title() {
    return Padding(
      padding: EdgeInsets.only(top: sizeHeight * 0.03),
      child: Text(profileTitle.toUpperCase(), style: AppTextStyles.header),
    );
  }

  Widget profileImage() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: sizeHeight*0.09),
      child: ProfileDummyImg(
          color: HexColor.fromHex("94F0F1"),
          dummyType: ProfileDummyTypeImg.Image,
          scale: 1.5,
          image: profileImg),
    );
  }

  Widget userName() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: sizeHeight * 0.19),
      child: Text(name.toUpperCase(), style: AppTextStyles.header3),
    );
  }

  Widget userMail() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: sizeHeight * 0.22),
      child: Text(userEmail.toUpperCase(), style: AppTextStyles.subHeader),
    );
  }
}
