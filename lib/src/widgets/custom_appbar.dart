import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../app_utilities.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final String? subTitle;
  final bool? hasSubTitle;
  final List<Widget>? actions;
  final bool? autoImplyLeading;
  final String? leadingIcon;
  final Widget? bottom;
  final bool hasTabBar;
  final double? elevation;
  final VoidCallback? leadingIconPressed;
  final Color? backgroundColor;

  const CustomAppBar({
    Key? key,
    this.title = '',
    this.actions,
    this.leadingIcon,
    this.autoImplyLeading = true,
    this.bottom,
    this.hasTabBar = false,
    this.elevation,
    this.leadingIconPressed,
    this.backgroundColor = AppColors.white,
    this.subTitle,
    this.hasSubTitle = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: AppBar(
            automaticallyImplyLeading: autoImplyLeading!,
            actions: actions,
            elevation: elevation ?? 0,
            titleSpacing:
                autoImplyLeading == false ? Dimens.kDefaultPadding : 0.0,
            backgroundColor: backgroundColor,
            leading: autoImplyLeading == true
                ? IconButton(
                    icon: SvgPicture.asset(
                      leadingIcon ??
                          '${AppConstants.packagePath}${AppIcons.arrowBack}',
                    ),
                    color: AppColors.black,
                    onPressed:
                        leadingIconPressed ?? () => Navigator.pop(context),
                  )
                : const SizedBox(
                    width: Dimens.kDefaultPadding,
                  ),
            // leadingWidth: autoImplyLeading == true ? 20 : 30,
            title: hasSubTitle == true
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AppComponent.titleText(
                        context: context,
                        text: title!,
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      AppComponent.captionText(
                        context: context,
                        text: subTitle ?? '',
                      ),
                    ],
                  )
                : AppComponent.titleText(
                    context: context,
                    text: title!,
                  ),
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(kTextTabBarHeight),
                child: bottom ?? const SizedBox()),
          ),
        ),
        AppComponent.divider()
      ],
    );
  }

  @override
  Size get preferredSize => hasTabBar
      ? const Size.fromHeight(kToolbarHeight + kTextTabBarHeight)
      : const Size.fromHeight(kToolbarHeight);
}
