part of values;

class AppTextStyles {
  static final TextStyle bottomLinkTextStyle = GoogleFonts.lato(
      color: Colors.black, fontSize: 25, fontWeight: FontWeight.w600);

  static final TextStyle flyInTextStyle = GoogleFonts.lato(
      color: const Color.fromRGBO(154, 116, 84, 0.5),
      fontSize: 100,
      fontWeight: FontWeight.w300);

  static final TextStyle headerTextStyle = GoogleFonts.lato(
      color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600);

  static final TextStyle brandTextStyle =
      GoogleFonts.lato(fontSize: 35, fontWeight: FontWeight.bold);

  static final TextStyle header = GoogleFonts.lato(
      fontWeight: FontWeight.w500,
      fontSize: 16,
      shadows: [
        const Shadow(color: Colors.black, offset: Offset(0.0, 0.5), blurRadius: 0.5),
      ],
      color: Colors.black);

  static final TextStyle subHeader = GoogleFonts.lato(
      fontWeight: FontWeight.w500,
      fontSize: 10,
      color: Colors.black.withOpacity(0.8));

  static final TextStyle header2 = GoogleFonts.lato(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      shadows: [
        const Shadow(color: Colors.black, offset: Offset(0.0, 0.2), blurRadius: 0.2),
      ],
      color: Colors.black);

  static final TextStyle header3 = GoogleFonts.lato(
      fontWeight: FontWeight.w400,
      fontSize: 12,
      shadows: [
        const Shadow(color: Colors.black, offset: Offset(0.0, 0.2), blurRadius: 0.2),
      ],
      color: Colors.black);
}
