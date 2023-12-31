import 'package:flutter/material.dart';

import '../../app_utilities.dart';

class CustomCard extends StatefulWidget {
  final Widget child;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;
  final Duration? duration;
  final double? width;
  final double? height;

  const CustomCard({
    super.key,
    required this.child,
    this.onPressed,
    this.margin,
    this.padding,
    this.backgroundColor,
    this.duration,
    this.width, this.height,
  });

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  double? _scale;

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this,
        duration: widget.duration ?? const Duration(milliseconds: 150),
        lowerBound: 0.0,
        upperBound: 0.06)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    _animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _animationController!.value;
    return GestureDetector(
      onTap: () {
        _animationController!.forward();
        Future.delayed(const Duration(milliseconds: 100), () {
          _animationController!.reverse();
          widget.onPressed?.call();
        });
      },
      child: Transform.scale(
          scale: _scale,
          child: Container(
            width: widget.width ?? MediaQuery.of(context).size.width,
            padding:
                widget.padding ?? const EdgeInsets.all(Dimens.kDefaultPadding),
            margin: widget.margin ??
                const EdgeInsets.symmetric(
                    horizontal: Dimens.kDefaultPadding, vertical: 4),
            decoration: BoxDecoration(
                color: widget.backgroundColor ?? AppColors.white,
                border: Border.all(width: 0.4, color: AppColors.border),
                borderRadius: BorderRadius.circular(Dimens.cardCornerRadius),
                boxShadow: [
                  BoxShadow(
                      //offset:  Offset(4, 4),
                      blurRadius: Dimens.cardBlurRadius,
                      color: widget.backgroundColor != null
                          ? AppColors.white
                          : AppColors.shadow),
                  // BoxShadow(
                  //     offset:  Offset(-4, -4),
                  //     blurRadius: Dimens.cardBlurRadius,
                  //     color: AppColors.shadow),
                ]),
            child: widget.child,
          )),
    );
  }
}
