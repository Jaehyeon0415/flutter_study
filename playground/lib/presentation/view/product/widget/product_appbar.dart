import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:playground/presentation/widget/image/ui_network_image.dart';
import 'package:playground/res/color.dart';
import 'package:playground/res/decoration.dart';

class ProductAppBar extends SliverAppBar {
  const ProductAppBar({
    super.key,
    required this.isCollapsed,
    required this.imageList,
  });

  final bool isCollapsed;
  final List<String> imageList;

  @override
  Color? get backgroundColor => UiColor.white;

  @override
  Color? get foregroundColor => isCollapsed ? UiColor.black : UiColor.white;

  @override
  double? get expandedHeight => 330;

  @override
  bool get pinned => true;

  @override
  bool get stretch => true;

  @override
  double? get elevation => isCollapsed ? 1 : 0;

  @override
  SystemUiOverlayStyle? get systemOverlayStyle =>
      isCollapsed ? SystemUiOverlayStyle.dark : SystemUiOverlayStyle.light;

  @override
  List<Widget>? get actions => [
        IconButton(
          // iconSize: 56,
          onPressed: () {},
          icon: Icon(
            Icons.share_rounded,
            color: isCollapsed ? UiColor.black : UiColor.white,
          ),
        ),
      ];

  @override
  Widget? get flexibleSpace => FlexibleSpaceBar(
        collapseMode: CollapseMode.parallax,
        background: DecoratedBox(
          position: DecorationPosition.foreground,
          decoration: const BoxDecoration(
            gradient: LinearGradients.productImage,
          ),
          child: PageView.builder(
            key: const PageStorageKey('product-images'),
            physics: const ClampingScrollPhysics(),
            itemCount: imageList.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {},
                child: UiNetworkImage(url: imageList[index]),
              );
            },
          ),
          // Stack(
          //   alignment: Alignment.bottomCenter,
          //   children: [
          //     PageView.builder(
          //       key: const PageStorageKey('product_images'),
          //       controller: controller,
          //       physics: const ClampingScrollPhysics(),
          //       onPageChanged: (int index) {
          //         context.read<ProductImageViewModel>().updatePageIndex(index);
          //       },
          //       itemCount: images.length,
          //       itemBuilder: (context, index) {
          //         final data = images[index];
          //         return GestureDetector(
          //           onTap: () => Navigator.pushNamed(
          //               context, '/product/detail/images',
          //               arguments: images),
          //           child: Hero(
          //             tag: 'product_image${data['id']}',
          //             child: CachedImage(data['url']),
          //           ),
          //         );
          //       },
          //     ),
          //     Positioned(
          //       bottom: 20,
          //       child: SmoothPageIndicator(
          //         controller: controller,
          //         count: images.length,
          //         effect: ColorTransitionEffect(
          //           activeDotColor: Colors.black87,
          //           dotColor: Colors.white.withOpacity(0.5),
          //           dotHeight: 12,
          //           dotWidth: 12,
          //           spacing: 12,
          //         ),
          //         onDotClicked: (int page) {
          //           controller
          //               .animateToPage(page,
          //                   duration: Times.widgetTransition,
          //                   curve: Curves.fastOutSlowIn)
          //               .then((value) {
          //             context
          //                 .read<ProductImageViewModel>()
          //                 .updatePageIndex(page);
          //           });
          //         },
          //       ),
          //     ),
          //   ],
          // ),
        ),
      );
}
