import 'package:flutter/material.dart';
import 'package:fruits_hup/core/utils/app_colors.dart';
import 'package:fruits_hup/core/utils/app_text_styles.dart';
import 'package:fruits_hup/feature/on_boarding/presentation/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isVisible:
              (pageController.hasClients ? pageController.page!.round() : 0) ==
              0,
          backgroundImage: 'assets/images/background_shape1.svg',

          image: 'assets/images/fruit_basket1.svg',

          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'مرحبًا بك في',
                style: TextStyles.bold23.copyWith(color: Color(0xFF0C0D0D)),
              ),

              Text(
                ' HUB',
                style: TextStyles.bold23.copyWith(
                  color: AppColors.seconderyColor,
                ),
              ),
              Text(
                'Fruit',
                style: TextStyles.bold23.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),

          subTitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
        ),
        PageViewItem(
          isVisible:
              (pageController.hasClients ? pageController.page!.round() : 0) !=
              0,

          backgroundImage: 'assets/images/background_shape2.svg',
          image: 'assets/images/fruit_basket2.svg',
          title: Text(
            'ابحث وتسوق',
            style: TextStyles.bold23.copyWith(color: Color(0xFF0C0D0D)),

            textAlign: TextAlign.center,
          ),

          subTitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
        ),
      ],
    );
  }
}
