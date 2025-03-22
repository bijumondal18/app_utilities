import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../app_utilities.dart';

class OutlineButton extends StatefulWidget {
  final String label;
  final String? suffixIconPath;
  final String? prefixIconPath;
  final VoidCallback onPressed;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Duration? duration;
  final double? width;
  final double? suffixIconSize;
  final double? prefixIconSize;
  final bool? hasSuffixIcon;
  final bool? hasPrefixIcon;
  final double? cornerRadius;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? labelColor;

  const OutlineButton({
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
    this.suffixIconPath,
    this.hasSuffixIcon = false,
    this.cornerRadius,
    this.suffixIconSize,
    this.hasPrefixIcon = false,
    this.prefixIconPath, this.prefixIconSize,
  });

  @override
  State<OutlineButton> createState() => _OutlineButtonState();
}

class _OutlineButtonState extends State<OutlineButton>
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
              color: AppColors.white,
              border: Border.all(width: 0.9, color: AppColors.black),
              borderRadius: BorderRadius.circular(
                  widget.cornerRadius ?? Dimens.cardCornerRadius),
            ),
            child: widget.hasSuffixIcon == true && widget.hasPrefixIcon == false
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
                              .titleSmall!
                              .copyWith(
                                  color: widget.labelColor ?? AppColors.black,
                                  fontSize: widget.fontSize ?? Dimens.titleSmall,
                                  fontWeight:
                                      widget.fontWeight ?? FontWeight.w500),
                        ),
                      ),
                      const SizedBox(
                        width: Dimens.kDefaultPadding,
                      ),
                      SvgPicture.asset(
                        widget.suffixIconPath ?? '',
                        width: widget.suffixIconSize ?? Dimens.appBarIconSize,
                        height: widget.suffixIconSize ?? Dimens.appBarIconSize,
                        color: AppColors.black,
                      ),
                    ],
                  )
                : widget.hasPrefixIcon == true && widget.hasSuffixIcon == false
                    ? Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            widget.prefixIconPath ?? '',
                            width:
                                widget.prefixIconSize ?? Dimens.appBarIconSize,
                            height:
                                widget.prefixIconSize ?? Dimens.appBarIconSize,
                            color: AppColors.black,
                          ),
                          const SizedBox(
                            width: Dimens.kDefaultPadding,
                          ),
                          Expanded(
                            child: Text(
                              widget.label,
                              textScaleFactor: 0.98,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                      color:
                                          widget.labelColor ?? AppColors.black,
                                      fontSize:
                                          widget.fontSize ?? Dimens.titleSmall,
                                      fontWeight:
                                          widget.fontWeight ?? FontWeight.w500),
                            ),
                          ),
                        ],
                      )
                    : widget.hasPrefixIcon == true &&
                            widget.hasSuffixIcon == true
                        ? Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset(
                                widget.prefixIconPath ?? '',
                                width: widget.prefixIconSize ??
                                    Dimens.appBarIconSize,
                                height: widget.prefixIconSize ??
                                    Dimens.appBarIconSize,
                                color: AppColors.black,
                              ),
                              const SizedBox(
                                width: Dimens.kDefaultPadding,
                              ),
                              Expanded(
                                child: Text(
                                  widget.label,
                                  textScaleFactor: 0.98,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(
                                          color: widget.labelColor ??
                                              AppColors.black,
                                          fontSize: widget.fontSize ??
                                              Dimens.titleSmall,
                                          fontWeight: widget.fontWeight ??
                                              FontWeight.w500),
                                ),
                              ),
                              const SizedBox(
                                width: Dimens.kDefaultPadding,
                              ),
                              SvgPicture.asset(
                                widget.suffixIconPath ?? '',
                                width: widget.suffixIconSize ??
                                    Dimens.appBarIconSize,
                                height: widget.suffixIconSize ??
                                    Dimens.appBarIconSize,
                                color: AppColors.black,
                              ),
                            ],
                          )
                        : Align(
                            alignment: Alignment.center,
                            child: Text(
                              widget.label,
                              textScaleFactor: 0.98,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                      color:
                                          widget.labelColor ?? AppColors.black,
                                      fontSize:
                                          widget.fontSize ?? Dimens.titleSmall,
                                      fontWeight:
                                          widget.fontWeight ?? FontWeight.w500),
                            ),
                          ),
          )),
    );
  }
}
