import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../app_utilities.dart';

class MessageDriverOrCustomerButton extends StatefulWidget {
  final String label;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Duration? duration;
  final double? width;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? labelColor;

  const MessageDriverOrCustomerButton({
    super.key,
    required this.label,
    this.onPressed,
    this.margin,
    this.padding,
    this.duration,
    this.width,
    this.fontWeight,
    this.fontSize,
    this.labelColor,
  });

  @override
  State<MessageDriverOrCustomerButton> createState() =>
      _MessageDriverOrCustomerButtonState();
}

class _MessageDriverOrCustomerButtonState
    extends State<MessageDriverOrCustomerButton>
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
                color: AppColors.lightGrey,
                border: Border.all(width: 0.4, color: AppColors.border),
                borderRadius: BorderRadius.circular(Dimens.cardCornerRadius),
                boxShadow: const [
                  BoxShadow(
                      blurRadius: Dimens.cardBlurRadius,
                      color: AppColors.white),
                ]),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  '${AppConstants.packagePath}${AppIcons.chat}',
                  width: 20,
                  height: 20,
                  color: AppColors.subTitleText,
                ),
                const SizedBox(
                  width: Dimens.kDefaultPadding / 2,
                ),
                Expanded(
                  child: Text(
                    widget.label,
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: widget.labelColor ?? AppColors.subTitleText,
                        fontSize: widget.fontSize ?? Dimens.headline6,
                        fontWeight: widget.fontWeight ?? FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  width: Dimens.kDefaultPadding,
                ),
                SvgPicture.asset(
                  '${AppConstants.packagePath}${AppIcons.arrowIosForward}',
                  width: 16,
                  height: 16,
                  color: AppColors.subTitleText,
                ),

              ],
            ),
          )),
    );
  }
}
