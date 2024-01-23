import 'package:easy_localization/easy_localization.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../app_utilities.dart';



class HaveAQueryCardWidget extends StatefulWidget {
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;
  final Duration? duration;

  const HaveAQueryCardWidget({
    super.key,
    this.onPressed,
    this.margin,
    this.padding,
    this.backgroundColor,
    this.duration,
  });

  @override
  State<HaveAQueryCardWidget> createState() => _HaveAQueryCardWidgetState();
}

class _HaveAQueryCardWidgetState extends State<HaveAQueryCardWidget>
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
            width: MediaQuery.of(context).size.width,
            padding:
                widget.padding ?? const EdgeInsets.all(Dimens.kDefaultPadding),
            margin: widget.margin ??
                const EdgeInsets.symmetric(
                    horizontal: Dimens.kDefaultPadding, vertical: 4),
            decoration: BoxDecoration(
                color: widget.backgroundColor ?? AppColors.lightGrey,
                border: Border.all(width: 0.4, color: AppColors.border),
                borderRadius: BorderRadius.circular(Dimens.cardCornerRadius),
                // boxShadow: const [
                //   BoxShadow(
                //       blurRadius: Dimens.cardBlurRadius,
                //       color: AppColors.shadow),
                // ]
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  '${AppConstants.packagePath}${AppImages.chatQuery}',
                  width: 70,
                ),
                const SizedBox(
                  width: Dimens.kDefaultPadding,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'have_a_query',
                        textScaleFactor: 0.98,
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(fontWeight: FontWeight.w700),
                      ).tr(),
                      const SizedBox(
                        height: Dimens.kDefaultPadding / 4,
                      ),
                      Text('chat_with_us',
                          textScaleFactor: 0.98,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontWeight: FontWeight.w400)).tr(),
                    ],
                  ),
                ),
                const SizedBox(
                  width: Dimens.kDefaultPadding,
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.white,
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(0, 5),
                            blurRadius: 5,
                            spreadRadius: 3,
                            color: AppColors.grey.withAlpha(30))
                      ]),
                  child: const Icon(
                    EvaIcons.arrowForward,
                    color: AppColors.black,
                    size: Dimens.appBarIconSize * 1.2,
                  ),
                )
              ],
            ),
          )),
    );
  }
}
