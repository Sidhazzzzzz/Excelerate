import 'package:flutter/material.dart';

class ThemeAwareLogo extends StatelessWidget {
  const ThemeAwareLogo({
    super.key,
    this.width,
    this.height,
    this.size,
    this.fit = BoxFit.contain,
    this.errorIcon,
  });

  final double? width;
  final double? height;
  final double? size;
  final BoxFit fit;
  final Widget? errorIcon;

  @override
  Widget build(BuildContext context) {
    final brightness = MediaQuery.platformBrightnessOf(context);
    final isDark = brightness == Brightness.dark;
    final asset = isDark ? 'assets/icon/ELH_dark.png' : 'assets/icon/ELH.png';

    final resolvedWidth = width ?? size;
    final resolvedHeight = height ?? size;

    return Image.asset(
      asset,
      width: resolvedWidth,
      height: resolvedHeight,
      fit: fit,
      errorBuilder: (context, error, stackTrace) {
        if (errorIcon != null) {
          return errorIcon!;
        }

        return Icon(
          Icons.school,
          size: (resolvedWidth ?? resolvedHeight ?? 24) * 0.9,
          color: Theme.of(context).colorScheme.primary,
        );
      },
    );
  }
}
