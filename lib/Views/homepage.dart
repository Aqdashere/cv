import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Widgets/Buttons/gradient_button_container.dart';
import '../Widgets/Icons/padded_icons.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1FAFF),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 80,
                  width: 80,
                  child: Image.asset('assets/images/logo.png'),
                ),
                Row(
                  children: [
                    PaddedIcons(ficon: FontAwesomeIcons.facebookF,color: Color(0xff3B5999),),
                    PaddedIcons(ficon: FontAwesomeIcons.linkedin,color: Color(0xff03A9F4),),
                    PaddedIcons(ficon: FontAwesomeIcons.instagram,color: Color(0xffF44535),),
                    PaddedIcons(ficon: FontAwesomeIcons.youtube,color: Color(0xffFF0000),),
                  SizedBox(width: 20,),
                    GradientButtonContainer(
                      title: "Download CV",
                      isGradientVertical: false,
                      onpressed: (){},
                      clr: [Color(0xffFF451B),Color(0xffFF451B)],
                      overlayColor: Colors.red,
                      width: 250,
                      height: 80
                    ),

                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


