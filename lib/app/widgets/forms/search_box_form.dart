import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/values/colors.dart';
import '../../core/values/text-upper-case.dart';

class SearchBoxInput extends StatelessWidget {
  final String placeholder;

  final TextEditingController? controller;

  const SearchBoxInput({
    Key? key,
    required this.placeholder,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: GoogleFonts.lato(
        fontWeight: FontWeight.w500,
        fontSize: 12,
        color: Colors.black,
        shadows: [
          const Shadow(
              color: Colors.black, offset: Offset(0.0, 0.5), blurRadius: 0.5),
        ],
      ),
      inputFormatters: [
        UpperCaseTextFormatter(),
      ],
      onTap: () {},
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: tdTextBorderColor.withOpacity(0.6), width: 1),
          borderRadius: BorderRadius.circular(40.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: tdTextBorderColor.withOpacity(0.6), width: 1),
          borderRadius: BorderRadius.circular(40.0),
        ),
        border: OutlineInputBorder(
          borderSide:
              BorderSide(color: tdTextBorderColor.withOpacity(0.6), width: 1),
          borderRadius: BorderRadius.circular(40.0),
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 15,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(right: 20.0, left: 20.0),
          child: Icon(
            Icons.search,
            color: tdPlaceHolderColor.withOpacity(0.8),
            size: 20,
          ),
        ),
        suffixIcon: InkWell(
          onTap: () {
            controller!.text = "";
          },
          child: const Icon(FontAwesomeIcons.solidCircleXmark,
              color: Colors.black, size: 18),
        ),
        hintText: placeholder,
        hintStyle: GoogleFonts.lato(
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: Colors.grey.shade700),
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }
}
