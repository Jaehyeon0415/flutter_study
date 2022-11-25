import 'package:flutter/material.dart';
import 'package:playground/data/model/product.dart';
import 'package:playground/presentation/widget/flexible/padded_flexibles.dart';
import 'package:playground/presentation/widget/image/ui_network_image.dart';
import 'package:playground/presentation/widget/text/ui_text.dart';
import 'package:playground/res/color.dart';
import 'package:playground/res/dimension.dart';
import 'package:playground/res/font.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.onTap,
    required this.data,
  });

  final Function(int id) onTap;
  final Product data;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(data.id),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: UiColor.divider),
            borderRadius: Corner.r11Border,
          ),
          child: AspectRatio(
            aspectRatio: 4 / 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                  aspectRatio: 7 / 4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.vertical(top: Corner.r11Radius),
                    child: UiNetworkImage(url: data.image!),
                  ),
                ),
                Expanded(
                  child: PaddedColumn(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                    children: [
                      UiText(
                        data.title,
                        style: TextStyles.notoSansKR.copyWith(
                          fontSize: FontSizes.s18,
                          fontWeight: FontWeight.w500,
                        ),
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
