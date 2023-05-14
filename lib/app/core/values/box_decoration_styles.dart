part of values;

class BoxDecorationStyles {
  static final BoxDecoration taskListDecoration = BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20.0),
      border: Border.all(color: Colors.black, width: 1),
      boxShadow: [
        BoxShadow(
            color: Colors.grey.shade500,
            offset: const Offset(1.0, 1.0),
            blurRadius: 0.5,
            spreadRadius: 0.5),
        const BoxShadow(
            color: Colors.white,
            offset: Offset(-1.0, -1.0),
            blurRadius: 0.4,
            spreadRadius: 0.4),
      ]);
}
