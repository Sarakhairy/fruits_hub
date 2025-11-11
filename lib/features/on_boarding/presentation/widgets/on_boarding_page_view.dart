import 'package:flutter/material.dart';
import 'package:fruits_hub/features/on_boarding/presentation/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  final PageController controller;
  const OnBoardingPageView({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      children: [
        PageViewItem(
          isVisible: (controller.hasClients ? controller.page!.round() == 0 : true),
          image: 'assets/images/page_view_item1_image.svg',
          backgroundImage: 'assets/images/page_view_item1_background_image.svg',
          subtitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("مرحبا بك في"), Text("Fruit"), Text("HUB")],
          ),
        ),
        PageViewItem(
          isVisible: (controller.hasClients ? controller.page!.round() == 0 : true),
          image: 'assets/images/page_view_item2_image.svg',
          backgroundImage: 'assets/images/page_view_item2_background_image.svg',
          subtitle:
              'نقدم لك افضل الفواكة المختارة بعنايه. اطلع التفاصيل والصور والتقييمات لتتأكد من اختيارالفاكهه المثاليه',
          title: Text(
            "ابحث وتسوق",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff0c0d0d),
              fontSize: 23,
              fontFamily: "Cairo",
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        ),
      ],
    );
  }
}
