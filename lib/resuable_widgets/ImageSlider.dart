import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:piecexpresspfe/resuable_widgets/colors.dart';

class ImagesSlider extends StatelessWidget {
  const ImagesSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.secondaryColor,
      child: ImageSlideshow(
        indicatorColor: AppColors.primaryColor,
        indicatorBackgroundColor: Colors.grey,
        height: 200,
        autoPlayInterval: 3000,
        indicatorRadius: 4,
        isLoop: true,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Image.asset('assets/images/roulement1.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Image.asset('assets/images/roulement2.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Image.asset('assets/images/roulement3.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Image.asset('assets/images/roulement4.png'),
          ),
        ],
      ),
    );
  }
}
