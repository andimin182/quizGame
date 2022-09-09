import 'package:flutter/cupertino.dart';

class VerticalSpace extends StatelessWidget {
  final double size;
  const VerticalSpace({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
    );
  }
}
