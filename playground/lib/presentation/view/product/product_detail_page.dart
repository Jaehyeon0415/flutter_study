import 'package:flutter/material.dart';
import 'package:playground/data/model/product.dart';
import 'package:playground/presentation/view/product/widget/product_appbar.dart';
import 'package:playground/presentation/widget/flexible/expanded_flexibles.dart';
import 'package:playground/presentation/widget/flexible/spacers.dart';
import 'package:playground/presentation/widget/text/ui_text.dart';
import 'package:playground/res/color.dart';
import 'package:playground/res/font.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({
    super.key,
    required this.productId,
    required this.data,
  });

  final int productId;
  final Product data;

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  bool isCollapsed = false;
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (scrollController.offset > 330 - kToolbarHeight) {
      if (!isCollapsed) _updateCollapsed();
    } else {
      if (isCollapsed) _updateCollapsed();
    }
  }

  void _updateCollapsed() => setState(() => isCollapsed = !isCollapsed);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: scrollController,
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: [
          ProductAppBar(
            isCollapsed: isCollapsed,
            imageList: [widget.data.image!],
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(color: UiColor.divider)),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 54,
                        height: 54,
                        child: CircleAvatar(
                          backgroundColor: UiColor.divider,
                          child: Icon(
                            Icons.person_outline_rounded,
                            color: UiColor.grey,
                            size: 32,
                          ),
                        ),
                      ),
                      HSpace.i8,
                      ExpandedColumn(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          UiText(
                            widget.data.author.nickname,
                            style: TextStyles.title3,
                          ),
                          const VSpace(6),
                          UiText(
                            widget.data.author.school,
                            style: TextStyles.notoSansKR.copyWith(
                              fontSize: FontSizes.s14,
                              color: UiColor.grey,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                // Container(
                //   padding: const EdgeInsets.symmetric(vertical: 16),
                //   decoration: const BoxDecoration(
                //     border: Border(bottom: BorderSide(color: UiColor.divider)),
                //   ),
                //   child: UiText(
                //     widget.data.title,
                //     style: TextStyles.title,
                //   ),
                // ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
