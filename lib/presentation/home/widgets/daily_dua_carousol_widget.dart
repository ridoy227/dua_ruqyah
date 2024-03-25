import 'package:carousel_slider/carousel_slider.dart';
import 'package:dua_ruqyah/core/utility/dua_screen.dart';
import 'package:dua_ruqyah/core/utility/number_utility.dart';
import 'package:flutter/material.dart';

class DailyDuaCarousolWidget extends StatelessWidget {
  const DailyDuaCarousolWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20.percentHeight ,
      child: CarouselSlider(
        items: [
          Container(
            padding: EdgeInsets.symmetric(
              // horizontal: twentyPx,
              vertical: tenPx,
            ),
            height: 20.percentWidth,
            width: DuaScreen.width,
            child: Text(
              "All human beings depend on Allah for their welfare and prevention of evil in various matters of their religion and world",
              overflow: TextOverflow.ellipsis,
              maxLines: 7,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: fourteenPx,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
         
          
        ], 
        options: CarouselOptions(
        viewportFraction: 1,
        autoPlay: true,
        autoPlayInterval: 9.inSeconds,
        pauseAutoPlayOnTouch: false,
      )
        ),
      
    );
  }
}

