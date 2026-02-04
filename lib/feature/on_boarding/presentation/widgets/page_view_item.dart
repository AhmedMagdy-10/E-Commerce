import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.subTitle,
    required this.image,
    required this.backgroundImage,
    required this.title,
    required this.isVisible,
  });

  final String subTitle, image, backgroundImage;
  final Widget title;
  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              SvgPicture.asset(backgroundImage, fit: BoxFit.cover),

              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(image),
              ),
              Visibility(
                visible: isVisible,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text('تخطي'),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 65),
        title,
        SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF4E5556),
              fontFamily: 'Cairo',
              height: 0,
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
