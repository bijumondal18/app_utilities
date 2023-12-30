import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../app_utilities.dart';

class PrimaryButton extends StatefulWidget {
  final String label;
  final String? iconPath;
  final VoidCallback onPressed;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Duration? duration;
  final double? width;
  final bool? hasIcon;
  final double? cornerRadius;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? labelColor;

  const PrimaryButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.margin,
    this.padding,
    this.duration,
    this.width,
    this.fontWeight,
    this.fontSize,
    this.labelColor,
    this.iconPath,
    this.hasIcon = false,
    this.cornerRadius,

  });

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton>
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
          widget.onPressed.call();
        });
      },
      child: Transform.scale(
          scale: _scale,
          child: Container(
            width: widget.width ?? MediaQuery.of(context).size.width,
            padding:
                widget.padding ?? const EdgeInsets.all(Dimens.kDefaultPadding),
            margin: widget.margin ?? const EdgeInsets.symmetric(vertical: 4),
            decoration: BoxDecoration(
              color: AppColors.primary,
              border: Border.all(width: 0.4, color: AppColors.border),
              borderRadius: BorderRadius.circular(
                  widget.cornerRadius ?? Dimens.cardCornerRadius),
            ),
            child: widget.hasIcon == true
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          widget.label,
                          textScaleFactor: 0.98,
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(
                                  color: widget.labelColor ??
                                      AppColors.white,
                                  fontSize: widget.fontSize ?? Dimens.headline6,
                                  fontWeight:
                                      widget.fontWeight ?? FontWeight.w500),
                        ),
                      ),
                      const SizedBox(
                        width: Dimens.kDefaultPadding,
                      ),
                      SvgPicture.asset(
                        widget.iconPath ?? '',
                        width: Dimens.appBarIconSize,
                        height: Dimens.appBarIconSize,
                        color: AppColors.white,
                      ),
                    ],
                  )
                : Align(
                    alignment: Alignment.center,
                    child: Text(
                      widget.label,
                      textScaleFactor: 0.98,
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: widget.labelColor ?? AppColors.white,
                          fontSize: widget.fontSize ?? Dimens.headline6,
                          fontWeight: widget.fontWeight ?? FontWeight.w500),
                    ),
                  ),
          )),
    );
  }
}
