import 'package:flutter/material.dart';
import 'package:fruits_hup/core/utils/app_colors.dart';
import 'package:fruits_hup/feature/on_boarding/presentation/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        PageViewItem(
          backgroundImage: 'assets/images/background_shape1.svg',

          image: 'assets/images/fruit_basket1.svg',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'مرحبًا بك في',
                style: TextStyle(
                  color: Color(0xFF0C0D0D),
                  fontFamily: 'Cairo',
                  height: 0,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                'HUB',
                style: TextStyle(
                  color: AppColors.seconderyColor,
                  fontFamily: 'Cairo',
                  height: 0,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Fruit',
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontFamily: 'Cairo',
                  height: 0,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          subTitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
        ),
        PageViewItem(
          backgroundImage: 'assets/images/background_shape2.svg',
          image: 'assets/images/fruit_basket2.svg',
          title: Text(
            'ابحث وتسوق',
            style: TextStyle(
              color: Color(0xFF0C0D0D),
              fontFamily: 'Cairo',
              height: 0,
              fontSize: 23,
              fontWeight: FontWeight.w700,
            ),

            textAlign: TextAlign.center,
          ),

          subTitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
        ),
      ],
    );
  }
}
