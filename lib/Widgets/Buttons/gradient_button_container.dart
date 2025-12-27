import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GradientButtonContainer extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final List<Color> clr;
  final Color overlayColor;
  final bool isGradientVertical;
  final Function() onpressed;

  GradientButtonContainer({
    required this.clr,
    required this.title,
    required this.isGradientVertical,
    required this.onpressed,
    required this.overlayColor,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Card(
          elevation: 10,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: isGradientVertical
                    ? Alignment.topCenter
                    : Alignment.centerLeft,
                end: isGradientVertical
                    ? Alignment.bottomCenter
                    : Alignment.centerRight,
                colors: clr,
              ), // LinearGradient
              borderRadius: const BorderRadius.all(
                Radius.circular(5),
              ), // BorderRadius.all
            ), // BoxDecoration
            child: ElevatedButton(
              style: ButtonStyle(
                elevation: WidgetStateProperty.all<double>(0),
                overlayColor: WidgetStateProperty.all<Color>(overlayColor),
                padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                  const EdgeInsets.all(0),
                ),
                backgroundColor: WidgetStateProperty.all<Color>(
                  Colors.transparent,
                ),
              ), //ButtonStyle
              onPressed: onpressed,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ), // Text
                ],
              ), // Column
            ), // ElevatedButton
          ), // Container
        ), // Card
      ),
    );
  }
}
