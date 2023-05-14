import 'package:dailytask/app/core/constants.dart';
import 'package:dailytask/app/core/values/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../core/values/images.dart';
import '../../core/values/sizes.dart';
import '../../core/values/values.dart';
import '../dummy/profile_dummy_img.dart';

class TaskCard extends StatelessWidget {
  String title;
  String description;
  String priority;
  String date;
  String status;

  TaskCard(
      {Key? key,
      required this.title,
      required this.description,
      required this.priority,
      required this.status,
      required this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: BoxDecorationStyles.taskListDecoration,
        child: taskView(),
      ),
    );
  }

  Widget taskView() {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              assignedProfile(),
              const SizedBox(
                height: 20,
              ),
              taskTitle(),
              const SizedBox(
                height: 10,
              ),
              taskDateTime(),
              const SizedBox(
                height: 10,
              ),
              taskDescription(),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
          const VerticalDivider(
            color: Colors.black,
            thickness: 1,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              priorityOfTask(),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 1.5,
                width: sizeWidth * 0.35,
                color: Colors.black,
              ),
              const SizedBox(
                height: 30,
              ),
              statusOfTask(),
            ],
          ),
        ],
      ),
    );
  }

  Widget assignedProfile() {
    return ProfileDummyImg(
        color: HexColor.fromHex("93F0F0"),
        dummyType: ProfileDummyTypeImg.Image,
        image: profileImg,
        scale: 0.8);
  }

  Text taskTitle() {
    return Text(title.toUpperCase(), style: AppTextStyles.header4);
  }

  Text taskDate() {
    return Text(date.toUpperCase(), style: AppTextStyles.subHeader2);
  }

  Text taskDescription() {
    return Text(description.toUpperCase(), style: AppTextStyles.subHeader2);
  }

  Text priorityTask() {
    return Text("${priority.toUpperCase()} PRIORITY",
        style: AppTextStyles.subHeader3);
  }

  Text statusTask() {
    return Text(status.toUpperCase(), style: AppTextStyles.subHeader3);
  }

  Row taskDateTime() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(
          Icons.access_time_sharp,
          color: tdBlack,
          size: 15,
        ),
        const SizedBox(
          width: 10,
        ),
        taskDate(),
      ],
    );
  }

  Row priorityOfTask() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 5,
          width: 5,
          decoration: BoxDecoration(
            color: getPriorityColor(priority),
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        priorityTask(),
      ],
    );
  }

  Row statusOfTask() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          getStatusIcon(status),
          color: getStatusColor(status),
          size: 15,
        ),
        const SizedBox(
          width: 10,
        ),
        statusTask(),
      ],
    );
  }
}
