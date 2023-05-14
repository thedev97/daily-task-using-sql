import 'package:dailytask/app/core/values/sizes.dart';
import 'package:dailytask/app/core/values/strings.dart';
import 'package:dailytask/app/widgets/card/task_card.dart';
import 'package:flutter/material.dart';
import 'package:dailytask/app/core/values/images.dart';
import '../../core/values/values.dart';
import '../../widgets/forms/search_box_form.dart';

class DashBoard extends StatelessWidget {
  DashBoard({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

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
              subTitle(),
              searchBox(),
              activityTitle(),
              getTaskListView(),
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

  Widget getTaskListView() {
    return Padding(
      padding: EdgeInsets.only(top: sizeHeight * 0.25, bottom: 20),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: 5,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int position) {
          return TaskCard(
            title: taskTitle,
            date: taskDateTime,
            description: taskDesc,
            priority: taskPriority,
            status: taskStatus,
          );
        },
      ),
    );
  }
}
