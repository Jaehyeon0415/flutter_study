import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:playground/res/color.dart';

class UiNetworkImage extends StatelessWidget {
  const UiNetworkImage({
    super.key,
    required this.url,
    this.width,
    this.height,
    this.fit,
  });

  final String url;
  final double? width;
  final double? height;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      width: width,
      height: height,
      fadeOutDuration: const Duration(milliseconds: 300),
      fadeInDuration: const Duration(milliseconds: 250),
      fit: fit ?? BoxFit.cover,
      errorWidget: (context, url, error) {
        return const Icon(Icons.error_rounded, color: UiColor.grey);
      },
    );
  }
}
