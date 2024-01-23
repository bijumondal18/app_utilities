import 'package:allride_utilities/allride_utilities.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';

class AppComponent {
  /// This is to translate any text widget into different language for all the allride applications

  static String easyLocalizationString(String text) {
    return text;
  }

  /// This is the HeadingText for all the allride applications

  static Widget headingText(
      {required BuildContext context,
      required String text,
      Color? textColor,
      int? maxLines,
      FontWeight? fontWeight,
      bool? isCenter,
      double? fontSize}) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: isCenter == true ? TextAlign.center : TextAlign.start,
      overflow: TextOverflow.ellipsis,
      textScaleFactor: 0.98,
      style: Theme.of(context).textTheme.headline1!.copyWith(
            fontSize: fontSize,
            color: textColor,
            fontWeight: fontWeight ?? FontWeight.w500,
          ),
    ).tr() //tr() is for make this text multi lingual
        ;
  }

  /// This is the SubHeadingText for all the allride applications

  static Widget subHeadingText(
      {required BuildContext context,
      required String text,
      Color? textColor,
      int? maxLines,
      bool? isCenter,
      FontWeight? fontWeight,
      double? fontSize}) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: isCenter == true ? TextAlign.center : TextAlign.start,
      overflow: TextOverflow.ellipsis,
      textScaleFactor: 0.98,
      style: Theme.of(context).textTheme.headline5!.copyWith(
          fontSize: fontSize,
          color: textColor,
          fontWeight: fontWeight ?? FontWeight.w500),
    ).tr() //tr() is for make this text multi lingual
        ;
  }

  /// This is the TitleText for all the allride applications

  static Widget titleText(
      {required BuildContext context,
      required String text,
      Color? textColor,
      int? maxLines,
      bool? isCenter,
      FontWeight? fontWeight,
      double? fontSize}) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: isCenter == true ? TextAlign.center : TextAlign.start,
      overflow: TextOverflow.ellipsis,
      textScaleFactor: 0.98,
      style: Theme.of(context).textTheme.headline6!.copyWith(
          fontSize: fontSize,
          color: textColor,
          fontWeight: fontWeight ?? FontWeight.w500),
    ).tr() //tr() is for make this text multi lingual
        ;
  }

  /// This is the SubTitleText for all the allride applications

  static Widget subTitleText(
      {required BuildContext context,
      required String text,
      Color? textColor,
      int? maxLines,
      bool? isCenter,
      FontWeight? fontWeight,
      double? fontSize}) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: isCenter == true ? TextAlign.center : TextAlign.start,
      overflow: TextOverflow.ellipsis,
      textScaleFactor: 0.98,
      style: Theme.of(context).textTheme.bodyText1!.copyWith(
          fontSize: fontSize,
          color: textColor ?? AppColors.subTitleText,
          fontWeight: fontWeight ?? FontWeight.w500),
    ).tr() //tr() is for make this text multi lingual
        ;
  }

  /// This is the LabelText for all the allride applications

  static Widget labelText(
      {required BuildContext context,
      required String text,
      Color? textColor,
      int? maxLines,
      bool? isCenter,
      FontWeight? fontWeight,
      double? fontSize}) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: isCenter == true ? TextAlign.center : TextAlign.start,
      overflow: TextOverflow.ellipsis,
      textScaleFactor: 0.98,
      style: Theme.of(context).textTheme.bodyText1!.copyWith(
          fontSize: fontSize,
          color: textColor,
          fontWeight: fontWeight ?? FontWeight.w500),
    ).tr() //tr() is for make this text multi lingual
        ;
  }

  /// This is the ButtonText for all the allride applications

  static Widget buttonText(
      {required BuildContext context,
      required String text,
      Color? textColor,
      int? maxLines,
      bool? isCenter,
      FontWeight? fontWeight,
      double? fontSize}) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: isCenter == true ? TextAlign.center : TextAlign.start,
      overflow: TextOverflow.ellipsis,
      textScaleFactor: 0.98,
      style: Theme.of(context).textTheme.button!.copyWith(
          fontSize: fontSize,
          color: textColor,
          fontWeight: fontWeight ?? FontWeight.w500),
    ).tr() //tr() is for make this text multi lingual
        ;
  }

  /// This is the CaptionText for all the allride applications

  static Widget captionText(
      {required BuildContext context,
      required String text,
      Color? textColor,
      int? maxLines,
      bool? isCenter,
      FontWeight? fontWeight,
      double? fontSize}) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: isCenter == true ? TextAlign.center : TextAlign.start,
      overflow: TextOverflow.ellipsis,
      textScaleFactor: 0.98,
      style: Theme.of(context).textTheme.caption!.copyWith(
          fontSize: fontSize,
          color: textColor,
          fontWeight: fontWeight ?? FontWeight.w500),
    ).tr() //tr() is for make this text multi lingual
        ;
  }

  /// This is the PrimaryButton for all the allride applications

  // static Widget primaryButton(
  //     {required BuildContext context,
  //     required VoidCallback onPressed,
  //     Color? backgroundColor,
  //     Color? labelColor,
  //     bool? hasIcon = false,
  //     bool? isDisabled = false,
  //     String? iconPath,
  //     double? fontSize,
  //     double? iconWidth,
  //     double? buttonHeight,
  //     double? iconHeight,
  //     required String label}) {
  //   return ElevatedButton(
  //       style: ElevatedButton.styleFrom(
  //           elevation: 0,
  //           shape: RoundedRectangleBorder(
  //               borderRadius: BorderRadius.circular(Dimens.cardCornerRadius)),
  //           backgroundColor: isDisabled == true
  //               ? AppColors.secondary.withAlpha(30)
  //               : backgroundColor ?? AppColors.primary,
  //           minimumSize:
  //               Size.fromHeight(buttonHeight ?? Dimens.largeButtonHeight)),
  //       onPressed: isDisabled == true ? null : onPressed,
  //       child: hasIcon == true
  //           ? Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: [
  //                 Expanded(
  //                   child: Text(
  //                     label,
  //                     textScaleFactor: 0.98,
  //                     style: Theme.of(context).textTheme.button!.copyWith(
  //                         color: isDisabled == true
  //                             ? AppColors.white
  //                             : labelColor ?? AppColors.white,
  //                         fontSize: fontSize ?? Dimens.headline6),
  //                   ),
  //                 ),
  //                 SvgPicture.asset(
  //                   iconPath ?? '',
  //                   width: iconWidth ?? Dimens.appBarIconSize,
  //                   height: iconHeight ?? Dimens.appBarIconSize,
  //                 )
  //               ],
  //             )
  //           : Text(
  //               label,
  //               textScaleFactor: 0.98,
  //               style: Theme.of(context).textTheme.button!.copyWith(
  //                   color: labelColor ?? AppColors.white,
  //                   fontSize: fontSize ?? Dimens.headline6),
  //             ) //tr() is for make this text multi lingual
  //       );
  // }

  /// This is the SecondaryButton for all the allride applications

  static Widget secondaryButton(
      {required BuildContext context,
      required VoidCallback onPressed,
      Color? backgroundColor,
      Color? labelColor,
      bool? hasIcon = false,
      String? iconPath,
      double? iconWidth,
      double? iconHeight,
      FontWeight? fontWeight,
      required String label}) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Dimens.cardCornerRadius)),
            backgroundColor: backgroundColor ?? AppColors.lightGrey,
            minimumSize: const Size.fromHeight(Dimens.largeButtonHeight)),
        onPressed: onPressed,
        child: hasIcon == true
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      label,
                      textScaleFactor: 0.98,
                      style: Theme.of(context).textTheme.button!.copyWith(
                          color: labelColor ?? AppColors.black,
                          fontWeight: fontWeight ?? FontWeight.w600),
                    ).tr(),
                  ),
                  SvgPicture.asset(
                    iconPath ?? '',
                    width: iconWidth ?? Dimens.appBarIconSize,
                    height: iconHeight ?? Dimens.appBarIconSize,
                  )
                ],
              )
            : Text(
                label,
                textScaleFactor: 0.98,
                style: Theme.of(context)
                    .textTheme
                    .button!
                    .copyWith(color: labelColor ?? AppColors.black),
              ).tr() //tr() is for make this text multi lingual
        );
  }

  /// This is the SecondaryButton for all the allride applications

  // static Widget outlinedButton(
  //     {required BuildContext context,
  //     required VoidCallback onPressed,
  //     Color? backgroundColor,
  //     Color? labelColor,
  //     Color? iconColor,
  //     bool? hasIcon = false,
  //     String? iconPath,
  //     double? iconWidth,
  //     double? iconHeight,
  //     FontWeight? fontWeight,
  //     double? fontSize,
  //     required String label}) {
  //   return OutlinedButton(
  //       style: OutlinedButton.styleFrom(
  //           elevation: 0,
  //           shape: RoundedRectangleBorder(
  //               borderRadius: BorderRadius.circular(Dimens.cardCornerRadius)),
  //           side: const BorderSide(width: 1, color: AppColors.black),
  //           backgroundColor: backgroundColor ?? AppColors.white,
  //           minimumSize: const Size.fromHeight(Dimens.largeButtonHeight)),
  //       onPressed: onPressed,
  //       child: hasIcon == true
  //           ? Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: [
  //                 Expanded(
  //                   child: Text(
  //                     label,
  //                     textScaleFactor: 0.98,
  //                     style: Theme.of(context).textTheme.button!.copyWith(
  //                         color: labelColor ?? AppColors.black,
  //                         fontWeight: fontWeight ?? FontWeight.w600,
  //                         fontSize: fontSize ?? Dimens.button),
  //                   ),
  //                 ),
  //                 SvgPicture.asset(
  //                   iconPath ??
  //                       '${AppConstants.packagePath}${AppIcons.arrowIosForward}',
  //                   width: iconWidth ?? Dimens.appBarIconSize,
  //                   height: iconHeight ?? Dimens.appBarIconSize,
  //                   color: iconColor ?? AppColors.white,
  //                 )
  //               ],
  //             )
  //           : Text(
  //               label,
  //               textScaleFactor: 0.98,
  //               style: Theme.of(context).textTheme.button!.copyWith(
  //                   color: labelColor ?? AppColors.black,
  //                   fontWeight: fontWeight ?? FontWeight.w600,
  //                   fontSize: fontSize ?? Dimens.button),
  //             ) //tr() is for make this text multi lingual
  //       );
  // }

  /// This is the TextButton for all the allride applications

  static Widget textButton(
      {required BuildContext context,
      required VoidCallback onPressed,
      Color? labelColor,
      FontWeight? fontWeight,
      double? fontSize,
      required String label}) {
    return TextButton(
        style: TextButton.styleFrom(
          elevation: 0,
        ),
        onPressed: onPressed,
        child: Text(
          label,
          textScaleFactor: 0.98,
          style: Theme.of(context).textTheme.button!.copyWith(
              color: labelColor ?? AppColors.primary,
              fontSize: fontSize ?? Dimens.button,
              fontWeight: fontWeight ?? FontWeight.w500),
        ).tr() //tr() is for make this text multi lingual
        );
  }

  /// This is the LinkButton for all the allride applications

  static Widget linkButton(
      {required BuildContext context,
      required VoidCallback onPressed,
      Color? labelColor,
      double? fontSize,
      FontWeight? fontWeight,
      required String label}) {
    return GestureDetector(
      onTap: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
              padding: const EdgeInsets.only(bottom: 2.0),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: AppColors.primary,
                    width: 1.5,
                  ),
                ),
              ),
              child: Text(
                label,
                textScaleFactor: 0.98,
                style: Theme.of(context).textTheme.button!.copyWith(
                      color: labelColor ?? AppColors.primary,
                      fontWeight: fontWeight ?? FontWeight.w500,
                      fontSize: fontSize ?? Dimens.button,
                    ),
              ).tr() //tr() is for make this text multi lingual
              ),
        ],
      ),
    );
  }

  /// This is the TextFormField with validation for all the allride applications

  static Widget textField({
    required BuildContext context,
    required TextEditingController controller,
    String? hintText,
    String? labelText,
    String? errorText,
    VoidCallback? onTap,
    VoidCallback? suffixIconPressed,
    int? minLines = 1,
    int? maxLength,
    int? maxLines = 1,
    bool? readOnly = false,
    bool? isBorder = true,
    bool? isUnderline = false,
    TextInputType? keyboardType,
    bool? obscureText = false,
    Widget? suffixIcon,
    TextCapitalization? textCapitalization,
    EdgeInsetsGeometry? contentPadding,
    Widget? prefixIcon,
    String? Function(String?)? validator,
    dynamic Function(String?)? onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        labelText != ''
            ? Text(
                labelText ?? '',
                textScaleFactor: 0.98,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontWeight: FontWeight.w400),
              ).tr() //tr() is for make this text multi lingual
            : const SizedBox(),
        labelText != ''
            ? const SizedBox(
                height: Dimens.kDefaultPadding / 2,
              )
            : const SizedBox(),
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          textCapitalization: textCapitalization ?? TextCapitalization.none,
          readOnly: readOnly!,
          validator: validator,
          obscureText: obscureText!,
          minLines: minLines,
          onTap: readOnly == true ? onTap : null,
          maxLines: maxLines,
          maxLength: maxLength,
          onChanged: onChanged,
          keyboardType: keyboardType ?? TextInputType.text,
          cursorColor: AppColors.black,
          controller: controller,
          textAlign: TextAlign.start,
          decoration: (isBorder == true && isUnderline == false)
              ? InputDecoration(
                  suffixIcon: suffixIcon,
                  prefixIcon: prefixIcon,
                  counterText: '',
                  errorMaxLines: 2,
                  contentPadding: contentPadding ??
                      const EdgeInsets.symmetric(
                          horizontal: Dimens.kDefaultPadding,
                          vertical: Dimens.kDefaultPadding * 1.3),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: AppColors.border, width: 2),
                      borderRadius:
                          BorderRadius.circular(Dimens.cardCornerRadius)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: AppColors.border, width: 2),
                      borderRadius:
                          BorderRadius.circular(Dimens.cardCornerRadius)),
                  errorBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(Dimens.cardCornerRadius),
                    borderSide: BorderSide(
                        color: AppColors.red.withAlpha(50), width: 2),
                  ),
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(Dimens.cardCornerRadius),
                    borderSide:
                        const BorderSide(color: AppColors.border, width: 2),
                  ),
                  filled: true,
                  fillColor: AppColors.lightGrey,
                  hintText: hintText?.tr(),
                  hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: AppColors.grey, fontWeight: FontWeight.w400),
                  labelStyle: Theme.of(context).textTheme.bodyText1,
                  errorStyle: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: AppColors.red),
                  // error: controller.text == ""
                  //     ? AppComponent.labelText(
                  //         context: context,
                  //         text: errorText.toString(),
                  //         textColor: AppColors.red,
                  //         fontWeight: FontWeight.w400,
                  //         fontSize: Dimens.bodyText2)
                  //     : const SizedBox.shrink(),
                  errorText: controller.text == "" ? errorText : null)
              : (isUnderline == true && isBorder == false)
                  ? InputDecoration(
                      suffixIcon: suffixIcon,
                      prefixIcon: prefixIcon,
                      counterText: '',
                      errorMaxLines: 2,
                      contentPadding: contentPadding ??
                          const EdgeInsets.symmetric(
                              horizontal: 0,
                              vertical: Dimens.kDefaultPadding * 1.3),
                      enabledBorder: const UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: AppColors.border)),
                      focusedBorder: const UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: AppColors.border)),
                      errorBorder: const UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: AppColors.border)),
                      border: const UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: AppColors.border)),
                      hintText: hintText?.tr(),
                      hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: AppColors.grey, fontWeight: FontWeight.w400),
                      labelStyle: Theme.of(context).textTheme.bodyText1,
                      errorStyle: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(color: AppColors.red),
                      // error: controller.text == ""
                      //     ? AppComponent.labelText(
                      //         context: context,
                      //         text: errorText.toString(),
                      //         textColor: AppColors.red,
                      //         fontWeight: FontWeight.w400,
                      //         fontSize: Dimens.bodyText2)
                      //     : const SizedBox.shrink(),
                      errorText: controller.text == "" ? errorText : null)
                  : InputDecoration(
                      suffixIcon: suffixIcon,
                      prefixIcon: prefixIcon,
                      counterText: '',
                      errorMaxLines: 2,
                      contentPadding: contentPadding ??
                          const EdgeInsets.symmetric(
                              horizontal: Dimens.kDefaultPadding,
                              vertical: Dimens.kDefaultPadding * 1.3),
                      enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide.none),
                      focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide.none),
                      errorBorder: const UnderlineInputBorder(
                          borderSide: BorderSide.none),
                      border: const UnderlineInputBorder(
                          borderSide: BorderSide.none),
                      hintText: hintText?.tr(),
                      hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: AppColors.grey, fontWeight: FontWeight.w400),
                      labelStyle: Theme.of(context).textTheme.bodyText1,
                      errorStyle: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(color: AppColors.red),
                      // error: controller.text == ""
                      //     ? AppComponent.labelText(
                      //         context: context,
                      //         text: errorText.toString(),
                      //         textColor: AppColors.red,
                      //         fontWeight: FontWeight.w400,
                      //         fontSize: Dimens.bodyText2)
                      //     : const SizedBox.shrink(),
                      errorText: controller.text == "" ? errorText : null),
        ),
      ],
    );
  }

  /// This widget is for drop down button for all the allride app

  static Widget dropDownTextField({
    required BuildContext context,
    required List<DropdownMenuItem<Object>>? items,
    required void Function(dynamic)? onChanged,
    String? Function(Object?)? validator,
    String? hintText,
    String? labelText,
    String? errorText,
    Object? value,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        labelText != ''
            ? Text(
                labelText ?? '',
                textScaleFactor: 0.98,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontWeight: FontWeight.w400),
              ).tr() //tr() is for make this text multi lingual
            : const SizedBox(),
        labelText != ''
            ? const SizedBox(
                height: Dimens.kDefaultPadding / 2,
              )
            : const SizedBox(),
        DropdownButtonFormField(
          isExpanded: true,
          validator: validator,
          icon: const Icon(
            Icons.keyboard_arrow_down_rounded,
            color: AppColors.black,
          ),
          items: items,
          onChanged: onChanged,
          decoration: InputDecoration(
              fillColor: AppColors.lightGrey,
              filled: true,
              hintText: hintText?.tr(),
              contentPadding: const EdgeInsets.symmetric(
                  horizontal: Dimens.kDefaultPadding,
                  vertical: Dimens.kDefaultPadding * 1.1),
              enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: AppColors.border, width: 2),
                  borderRadius: BorderRadius.circular(Dimens.cardCornerRadius)),
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: AppColors.border, width: 2),
                  borderRadius: BorderRadius.circular(Dimens.cardCornerRadius)),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Dimens.cardCornerRadius),
                borderSide:
                    BorderSide(color: AppColors.red.withAlpha(50), width: 2),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Dimens.cardCornerRadius),
                borderSide: const BorderSide(color: AppColors.border, width: 2),
              ),
              hintStyle: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(color: AppColors.grey, fontWeight: FontWeight.w400),
              labelStyle: Theme.of(context).textTheme.bodyText1,
              errorStyle: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: AppColors.red),
              errorText: value.toString().tr() == "" ? errorText?.tr() : null),
        ),
      ],
    );
  }

  /// This is the CustomCard for all the allride applications

  static Widget sendMessageTextField({
    required BuildContext context,
    required TextEditingController controller,
    String? hintText,
    required VoidCallback onSendPressed,
  }) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.lightGrey,
          borderRadius: BorderRadius.circular(Dimens.cardCornerRadius)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: TextFormField(
            controller: controller,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            textAlign: TextAlign.start,
            minLines: 1,
            maxLines: 1,
            keyboardType: TextInputType.text,
            cursorColor: AppColors.black,
            decoration: InputDecoration(
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimens.cardCornerRadius * 3),
                      bottomLeft: Radius.circular(Dimens.cardCornerRadius * 3)),
                  borderSide: BorderSide.none),
              contentPadding: const EdgeInsets.symmetric(
                  horizontal: Dimens.kDefaultPadding * 1.5,
                  vertical: Dimens.kDefaultPadding * 1.2),
              filled: true,
              fillColor: AppColors.lightGrey,
              hintText: hintText?.tr(),
              hintStyle: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(color: AppColors.grey, fontWeight: FontWeight.w400),
              labelStyle: Theme.of(context).textTheme.bodyText1,
            ),
          )),
          GestureDetector(
            onTap: onSendPressed,
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(Dimens.kDefaultPadding / 1.8),
              decoration: const BoxDecoration(
                  color: AppColors.black,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimens.cardCornerRadius),
                      bottomRight: Radius.circular(Dimens.cardCornerRadius))),
              child: SvgPicture.asset(
                '${AppConstants.packagePath}${AppIcons.send}',
              ),
            ),
          )
          // AppComponent.floatingButton(
          //     onPressed: onSendPressed,
          //     iconPath: '${AppConstants.packagePath}${AppIcons.send}',
          //     width: 34,
          //     height: 34)
        ],
      ),
    );
  }

  /// This is the Floating Back Button Widget with icon on the center for all the allride applications

  static Widget floatingButton({
    required BuildContext context,
    String? iconPath,
    Color? backgroundColor,
    required VoidCallback onPressed,
  }) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: backgroundColor != AppColors.white
                    ? AppColors.shadow
                    : AppColors.black,
                blurRadius: Dimens.cardBlurRadius,
                spreadRadius: Dimens.cardSpreadRadius)
          ],
          color: backgroundColor ?? AppColors.white),
      child: IconButton(
          onPressed: onPressed,
          icon: SvgPicture.asset(
              iconPath ?? '${AppConstants.packagePath}${AppIcons.arrowBack}')),
    );
  }

  ///This is the Add Attachment Widget with icon on the center for all the allride applications

  static Widget addAttachmentWidget({
    required VoidCallback onPressed,
    String? iconPath,
    double? iconWidth,
    double? iconHeight,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 90,
        height: 90,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: AppColors.lightGrey,
            borderRadius: BorderRadius.circular(Dimens.cardCornerRadius),
            border: Border.all(width: 2, color: AppColors.border)),
        child: SvgPicture.asset(
          iconPath ?? '${AppConstants.packagePath}${AppIcons.addAttachment}',
          width: iconWidth ?? 34,
          height: iconHeight ?? 34,
        ),
      ),
    );
  }

  ///This is the Ticket Card for all the allride applications

  static Widget ticketCard({
    required BuildContext context,
    required String title,
    required String desc,
    required String dateTime,
    required String status,
    required Color statusColor,
    required VoidCallback onPressed,
  }) {
    return CustomCard(
        onPressed: onPressed,
        padding: EdgeInsets.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(Dimens.kDefaultPadding),
              decoration: const BoxDecoration(
                  color: AppColors.lightGrey,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimens.cardCornerRadius),
                      topRight: Radius.circular(Dimens.cardCornerRadius))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: AppComponent.titleText(
                        context: context, text: dateTime),
                  ),
                  AppComponent.ticketStatus(
                      context: context, status: status, color: statusColor)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                  Dimens.kDefaultPadding,
                  Dimens.kDefaultPadding,
                  Dimens.kDefaultPadding,
                  Dimens.kDefaultPadding / 2),
              child: AppComponent.titleText(
                  context: context, text: title, fontWeight: FontWeight.w600),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(Dimens.kDefaultPadding, 0,
                  Dimens.kDefaultPadding, Dimens.kDefaultPadding * 2),
              child: AppComponent.labelText(
                  context: context,
                  maxLines: 10,
                  fontWeight: FontWeight.w400,
                  textColor: AppColors.black,
                  text: desc),
            ),
          ],
        ));
  }

  ///This is the CustomDivider for all the allride applications

  static Widget divider({Color? color}) {
    return Divider(
      thickness: 1.0,
      height: 0,
      color: color ?? AppColors.border,
    );
  }

  ///This is the CustomBullet for all the allride applications

  static Widget bullet({double? width, double? height, Color? color}) {
    return Container(
      width: width ?? 8,
      height: height ?? 8,
      decoration: BoxDecoration(
          color: color ?? AppColors.primary, shape: BoxShape.circle),
    );
  }

  ///This is the NativeLoader for all the allride applications

  // static Widget loader({
  //   bool? isCenter = false,
  // }) {
  //   return isCenter!
  //       ? const Center(child: CircularProgressIndicator.adaptive())
  //       : const CircularProgressIndicator.adaptive();
  // }

  ///This is the Ticket Status Card with Text for all the allride applications

  static Widget ticketStatus(
      {required BuildContext context,
      required String status,
      required Color color,
      bool hasIcon = false,
      Color? textColor}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(Dimens.kDefaultPadding / 3),
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(Dimens.cardCornerRadius / 2)),
          child: Row(
            children: [
              hasIcon == true
                  ? const Icon(
                      Icons.check,
                      color: AppColors.white,
                      size: Dimens.appBarIconSize / 1.2,
                    )
                  : const SizedBox.shrink(),
              SizedBox(
                width: hasIcon == true ? Dimens.kDefaultPadding / 4 : 0,
              ),
              Text(
                status,
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    color: textColor ?? AppColors.white,
                    fontWeight: FontWeight.w600),
              ).tr(),
            ],
          ),
        ),
      ],
    );
  }

  ///This is the SnackBar for all the allride applications

  static ScaffoldMessengerState showSnackBar(
      {required BuildContext context,
      Color? backgroundColor,
      Color? foregroundColor,
      required String content}) {
    return ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          duration: const Duration(milliseconds: 3000),
          behavior: SnackBarBehavior.floating,
          backgroundColor: backgroundColor ?? AppColors.black,
          content: Text(
            content, //tr() is for make this text multi lingual
            textScaleFactor: 0.98,
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(color: foregroundColor ?? AppColors.white),
          ).tr(),
        ),
      );
  }

  ///This is the Confirmation or Rejection Status Dialog for all the allride applications

  static void showStatusDialog({
    required BuildContext context,
    String? title,
    String? imagePath,
    String? subTitle,
  }) {
    // Configure alert dialog UI
    AlertDialog alertDialog = AlertDialog(
      insetPadding: const EdgeInsets.all(Dimens.kDefaultPadding * 1.3),
      contentPadding: const EdgeInsets.all(Dimens.kDefaultPadding),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.cardCornerRadius),
      ),
      content: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.all(Dimens.kDefaultPadding),
        decoration: const BoxDecoration(
          color: AppColors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset(imagePath ?? AppAnimations.success,
                width: 150,
                // height: MediaQuery.of(context).size.width*0.7,
                fit: BoxFit.cover,
                repeat: false),
            Text(
              title ?? '',
              textAlign: TextAlign.center,
              textScaleFactor: 0.98,
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.w500),
            ).tr(),
            subTitle != ''
                ? const SizedBox(
                    height: Dimens.kDefaultPadding,
                  )
                : const SizedBox(),
            subTitle != ''
                ? Text(
                    subTitle ?? '',
                    textAlign: TextAlign.center,
                    textScaleFactor: 0.98,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: AppColors.subTitleText),
                  ).tr()
                : const SizedBox(),
            const SizedBox(
              height: Dimens.kDefaultPadding,
            ),
          ],
        ),
      ),
    );

    // Show the dialog
    showDialog(context: context, builder: (context) => alertDialog);
  }

  ///This is the Alert Dialog with action buttons for all the allride applications

  static void showAlertDialog({
    required BuildContext context,
    String? imagePath,
    String? title,
    String? subTitle,
    String? positiveButtonLabel,
    Color? positiveButtonBackgroundColor,
    Color? negativeButtonBackgroundColor,
    String? negativeButtonLabel,
    VoidCallback? positiveButtonPressed,
    VoidCallback? negativeButtonPressed,
  }) {
    // Configure alert dialog UI
    AlertDialog alertDialog = AlertDialog(
      insetPadding: const EdgeInsets.all(Dimens.kDefaultPadding * 1.3),
      contentPadding: const EdgeInsets.all(Dimens.kDefaultPadding),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.cardCornerRadius),
      ),
      content: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.all(Dimens.kDefaultPadding),
        decoration: const BoxDecoration(
          color: AppColors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            imagePath != ''
                ? Image.asset(
                    imagePath ?? '',
                    width: 150,
                    height: 150,
                    fit: BoxFit.contain,
                  )
                : const SizedBox(),
            imagePath != ''
                ? const SizedBox(
                    height: Dimens.kDefaultPadding,
                  )
                : const SizedBox(),
            Text(
              title ?? '',
              textAlign: TextAlign.center,
              textScaleFactor: 0.98,
              style: Theme.of(context).textTheme.headline4,
            ).tr(),
            subTitle != ''
                ? const SizedBox(
                    height: Dimens.kDefaultPadding,
                  )
                : const SizedBox(),
            subTitle != ''
                ? Text(
                    subTitle ?? '',
                    textAlign: TextAlign.center,
                    textScaleFactor: 0.98,
                    style: Theme.of(context).textTheme.bodyText1,
                  ).tr()
                : const SizedBox(),
            // const SizedBox(
            //   height: Dimens.kDefaultPadding,
            // ),
            Padding(
              padding: const EdgeInsets.only(top: Dimens.kDefaultPadding),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    Dimens.cardCornerRadius)),
                            backgroundColor: positiveButtonBackgroundColor ??
                                AppColors.primary,
                            minimumSize: const Size.fromHeight(
                                Dimens.largeButtonHeight)),
                        onPressed: positiveButtonPressed,
                        child: Text(
                          positiveButtonLabel ?? '',
                          textScaleFactor: 0.98,
                        ).tr()),
                  ),
                  const SizedBox(
                    width: Dimens.kDefaultPadding * 1.5,
                  ),
                  Expanded(
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    Dimens.cardCornerRadius)),
                            side: const BorderSide(
                                width: 1, color: AppColors.black),
                            backgroundColor: negativeButtonBackgroundColor ??
                                AppColors.white,
                            minimumSize: const Size.fromHeight(
                                Dimens.largeButtonHeight)),
                        onPressed: negativeButtonPressed,
                        child: Text(
                          negativeButtonLabel ?? '',
                          textScaleFactor: 0.98,
                        ).tr()),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );

    // Show the dialog
    showDialog(context: context, builder: (context) => alertDialog);
  }

  ///This is the Drawer Item with icon & Text for all the allride applications

  static Widget drawerItem(
      {required BuildContext context,
      required String iconPath,
      required VoidCallback onPressed,
      required String label}) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(Dimens.kDefaultPadding),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 34,
              height: 34,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: AppColors.grey.withAlpha(40), shape: BoxShape.circle),
              child: SvgPicture.asset(iconPath),
            ),
            const SizedBox(
              width: Dimens.kDefaultPadding,
            ),
            Expanded(
              child: Text(
                label,
                textScaleFactor: 0.98,
                maxLines: 2,
                style: Theme.of(context).textTheme.bodyText1,
              ).tr(),
            )
          ],
        ),
      ),
    );
  }

  ///This is the Leading Trailing List Tile for all the allride applications

  static Widget leadingTrailingListTile(
      {required Widget leading,
      required Widget trailing,
      VoidCallback? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: Dimens.kDefaultPadding * 1.4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: leading),
            const SizedBox(
              width: Dimens.kDefaultPadding,
            ),
            trailing,
          ],
        ),
      ),
    );
  }

  ///This is the Settings Tile icon & Text for all the allride applications

  static Widget settingsTile(
      {required BuildContext context,
      required String label,
      required VoidCallback onPressed}) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(Dimens.kDefaultPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                label,
                textScaleFactor: 0.98,
                maxLines: 2,
                style: Theme.of(context).textTheme.headline6!.copyWith(),
              ).tr(),
            ),
            const SizedBox(
              width: Dimens.kDefaultPadding,
            ),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              color: AppColors.subTitleText,
              size: 16,
            )
          ],
        ),
      ),
    );
  }

  ///This is the Trip Status Text for all the allride applications

  static Widget tripStatusText(
      {required BuildContext context,
      required String text,
      Color? textColor,
      Color? statusColor,
      int? maxLines,
      bool? isCenter = false,
      FontWeight? fontWeight,
      double? fontSize}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
              color: statusColor ?? AppColors.black, shape: BoxShape.circle),
        ),
        const SizedBox(
          width: Dimens.kDefaultPadding / 1.5,
        ),
        Text(
          text,
          maxLines: maxLines,
          textScaleFactor: 0.98,
          textAlign: isCenter == true ? TextAlign.center : TextAlign.start,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
              fontSize: fontSize,
              color: textColor,
              fontWeight: fontWeight ?? FontWeight.w500),
        ).tr(),
      ],
    ) //tr() is for make this text multi lingual
        ;
  }

  ///This is the Sender Chat Tile for all the allride applications

  static Widget senderChatTile({
    required BuildContext context,
    required String text,
    required String senderName,
    required String sentTime,
  }) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: const EdgeInsets.all(Dimens.kDefaultPadding),
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.75),
        decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(Dimens.cardCornerRadius)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text,
              textAlign: TextAlign.start,
              textScaleFactor: 0.98,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: AppColors.white, fontWeight: FontWeight.w500),
            ).tr(),
            const SizedBox(
              height: 5.0,
            ),
            Text(
              '$senderName | $sentTime',
              textAlign: TextAlign.start,
              textScaleFactor: 0.98,
              style: Theme.of(context).textTheme.caption!.copyWith(
                  color: AppColors.white, fontWeight: FontWeight.w400),
            ).tr(),
          ],
        ),
      ),
    );
  }

  ///This is the Receiver Chat Tile for all the allride applications

  static Widget receiverChatTile({
    required BuildContext context,
    required String text,
    required String senderName,
    required String sentTime,
  }) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.all(Dimens.kDefaultPadding),
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.75),
        decoration: BoxDecoration(
            color: AppColors.lightGrey,
            borderRadius: BorderRadius.circular(Dimens.cardCornerRadius)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text,
              textAlign: TextAlign.start,
              textScaleFactor: 0.98,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: AppColors.black, fontWeight: FontWeight.w500),
            ).tr(),
            const SizedBox(
              height: 5.0,
            ),
            Text(
              '$senderName | $sentTime',
              textAlign: TextAlign.start,
              textScaleFactor: 0.98,
              style: Theme.of(context).textTheme.caption!.copyWith(
                  color: AppColors.black, fontWeight: FontWeight.w400),
            ).tr(),
          ],
        ),
      ),
    );
  }

  ///This is the Pickup Drop Location with Time and Icons for all the allride applications

  static Widget pickupDropRouteWidget({
    required BuildContext context,
    required String pickupLocation,
    bool? hasPickupDropLabel = false,
    required String dropLocation,
    String? pickupTime,
    String? pickupLabel,
    String? dropLabel,
    Color? locationColor,
    String? dropTime,
  }) {
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: Dimens.kDefaultPadding / 4),
                  child: SvgPicture.asset(
                    '${AppConstants.packagePath}${AppIcons.pickupLocation}',
                    width: 16,
                    height: 16,
                  ),
                ),
                const SizedBox(
                  width: Dimens.kDefaultPadding,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      hasPickupDropLabel == true
                          ? Text(
                              pickupLabel ?? 'Pickup',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(color: AppColors.grey),
                            ).tr()
                          : const SizedBox.shrink(),
                      Text(
                        pickupLocation,
                        textScaleFactor: 0.98,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontWeight: FontWeight.w500,
                            color: locationColor ?? AppColors.black),
                      ).tr(),
                    ],
                  ),
                ),
                const SizedBox(
                  width: Dimens.kDefaultPadding,
                ),
                Text(pickupTime ?? '',
                        textScaleFactor: 0.98,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(fontWeight: FontWeight.w400))
                    .tr(),
              ],
            ),
            const SizedBox(
              height: Dimens.kDefaultPadding * 1.4,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: Dimens.kDefaultPadding / 4),
                  child: SvgPicture.asset(
                    '${AppConstants.packagePath}${AppIcons.dropLocation}',
                    width: 18,
                    height: 18,
                  ),
                ),
                const SizedBox(
                  width: Dimens.kDefaultPadding,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      hasPickupDropLabel == true
                          ? Text(
                              dropLabel ?? 'Drop',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(color: AppColors.grey),
                            ).tr()
                          : const SizedBox.shrink(),
                      Text(
                        dropLocation,
                        textScaleFactor: 0.98,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontWeight: FontWeight.w500,
                            color: locationColor ?? AppColors.black),
                      ).tr(),
                    ],
                  ),
                ),
                const SizedBox(
                  width: Dimens.kDefaultPadding,
                ),
                Text(dropTime ?? '',
                        textScaleFactor: 0.98,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(fontWeight: FontWeight.w400))
                    .tr(),
              ],
            ),
          ],
        ),
        Positioned(
            top: 19,
            left: 6.5,
            child: DottedLine(
              direction: Axis.vertical,
              lineThickness: 2,
              dashGapLength: Dimens.kDefaultPadding / 2,
              dashLength: Dimens.kDefaultPadding / 2,
              dashColor: AppColors.primary,
              lineLength: hasPickupDropLabel == true
                  ? Dimens.kDefaultPadding * 3
                  : Dimens.kDefaultPadding * 2,
            )
            // Container(
            //   alignment: Alignment.center,
            //   color: AppColors.primary,
            //   width: 2,
            //   height: hasPickupDropLabel == true
            //       ? Dimens.kDefaultPadding * 3
            //       : Dimens.kDefaultPadding * 2,
            // )
            )
      ],
    );
  }

  /// This is the Custom Floating Button for all the allride applications

  // static Widget floatingButton({
  //   required VoidCallback onPressed,
  //   required String iconPath,
  //   double? width,
  //   double? height,
  //   Color? iconColor,
  // }) {
  //   return GestureDetector(
  //     onTap: onPressed,
  //     child: Container(
  //       width: 56,
  //       height: 56,
  //       decoration: const BoxDecoration(
  //           shape: BoxShape.circle, color: AppColors.primary),
  //       child: Align(
  //         alignment: Alignment.center,
  //         child: SvgPicture.asset(
  //           iconPath,
  //           color: iconColor ?? AppColors.black,
  //           width: width ?? 25,
  //           height: height ?? 25,
  //         ),
  //       ),
  //     ),
  //   );
  // }

  static Widget dragHandleForBottomSheet({required BuildContext context}) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.2,
        margin: const EdgeInsets.all(Dimens.kDefaultPadding / 2),
        height: 6,
        decoration: BoxDecoration(
            color: AppColors.border,
            borderRadius: BorderRadius.circular(Dimens.cardCornerRadius)),
      ),
    );
  }

  /// This widget is empty widget for list data

  static Widget emptyWidget({
    required BuildContext context,
    required String labelText,
    required String iconPath,
    String? buttonLabel,
    bool? hasButton = false,
    VoidCallback? onPressed,
  }) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 76,
            height: 76,
            padding: const EdgeInsets.all(Dimens.kDefaultPadding),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: AppColors.lightGrey),
            child: SvgPicture.asset(
              iconPath,
              fit: BoxFit.cover,
              width: Dimens.appBarIconSize,
              height: Dimens.appBarIconSize,
            ),
          ),
          const SizedBox(
            height: Dimens.kDefaultPadding,
          ),
          AppComponent.labelText(
              context: context, text: labelText, maxLines: 2, isCenter: true),
          const SizedBox(
            height: Dimens.kDefaultPadding * 2,
          ),
          Visibility(
            visible: hasButton!,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: Dimens.kDefaultPadding),
              child: PrimaryButton(
                  label: buttonLabel ?? '', onPressed: onPressed ?? () {}),
            ),
          )
        ],
      ),
    );
  }

  /// This is the Coupon Code Text Field Widget with apply button for all the allride applications

  static Widget couponCodeTextField(
      {required BuildContext context,
      required TextEditingController controller,
      bool? hasCouponCodeInputField = true,
      required VoidCallback onApplyPressed}) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
          horizontal: Dimens.kDefaultPadding / 2,
          vertical: Dimens.kDefaultPadding / 6),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: AppColors.lightGrey,
          borderRadius: BorderRadius.circular(Dimens.cardCornerRadius),
          border: Border.all(width: 1, color: AppColors.border)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: SvgPicture.asset(
                '${AppConstants.packagePath}${AppIcons.couponCode}'),
          ),
          Expanded(
              flex: 4,
              child: hasCouponCodeInputField == true
                  ? AppComponent.textField(
                      context: context,
                      controller: controller,
                      isBorder: false,
                      labelText: '',
                      isUnderline: false,
                      hintText: 'Coupon code')
                  : const SizedBox()),
          Expanded(
              flex: 2,
              child: PrimaryButton(
                  onPressed: onApplyPressed,
                  label: 'Apply',
                  cornerRadius: Dimens.cardCornerRadius / 2,
                  padding: const EdgeInsets.all(Dimens.kDefaultPadding / 2),
                  fontSize: Dimens.bodyText1))
        ],
      ),
    );
  }

  /// custom loader widget

  static Widget loader({required BuildContext context}) {
    return Lottie.asset('${AppConstants.packagePath}${AppAnimations.loader}',
        // width: MediaQuery.of(context).size.width * 0.25,
        height: Dimens.buttonHeight,
        fit: BoxFit.contain);
  }

  /// camera & gallery picker bottom sheet
  static void showCameraGalleryPickerBottomSheet({
    required BuildContext context,
    required Future<void> onCameraTap,
    required Future<void> onGalleryTap,
  }) {
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(Dimens.cardCornerRadius),
              topLeft: Radius.circular(Dimens.cardCornerRadius)),
        ),
        context: context,
        builder: (builder) {
          return Container(
              padding: const EdgeInsets.all(Dimens.kDefaultPadding),
              //height: MediaQuery.of(context).size.width * 0.35,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: Dimens.kDefaultPadding,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () => onCameraTap,
                            child: CircleAvatar(
                                backgroundColor: AppColors.grey.withAlpha(50),
                                radius: Dimens.kDefaultPadding * 2,
                                child: const Icon(
                                  Icons.photo_camera_rounded,
                                  size: Dimens.kDefaultPadding * 2,
                                  color: AppColors.black,
                                )),
                          ),
                          const SizedBox(
                            height: Dimens.kDefaultPadding / 2,
                          ),
                          AppComponent.labelText(
                              context: context, text: "Camera")
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () => onGalleryTap,
                            child: CircleAvatar(
                                backgroundColor: AppColors.grey.withAlpha(50),
                                radius: Dimens.kDefaultPadding * 2,
                                child: const Icon(
                                  Icons.photo_rounded,
                                  size: Dimens.kDefaultPadding * 2,
                                  color: AppColors.black,
                                )),
                          ),
                          const SizedBox(
                            height: Dimens.kDefaultPadding / 2,
                          ),
                          AppComponent.labelText(
                              context: context, text: "Gallery")
                        ],
                      ),
                    ],
                  ),
                ],
              ));
        });
  }

  /// App Close alert
  static Future<bool> appCloseAlert(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            insetPadding: const EdgeInsets.all(Dimens.kDefaultPadding * 1.3),
            contentPadding: const EdgeInsets.all(Dimens.kDefaultPadding),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Dimens.cardCornerRadius),
            ),
            content: Container(
              margin: const EdgeInsets.all(Dimens.kDefaultPadding),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppComponent.titleText(
                      context: context, text: 'exit_application'),
                  const SizedBox(
                    height: Dimens.kDefaultPadding,
                  ),
                  AppComponent.labelText(
                      context: context,
                      maxLines: 3,
                      fontWeight: FontWeight.w400,
                      textColor: AppColors.subTitleText,
                      text: 'exit_application_subtitle'),
                  const SizedBox(
                    height: Dimens.kDefaultPadding,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: Dimens.kDefaultPadding),
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          Dimens.cardCornerRadius)),
                                  backgroundColor: AppColors.primary,
                                  minimumSize: const Size.fromHeight(
                                      Dimens.largeButtonHeight)),
                              onPressed: () {
                                Navigator.of(context).pop(true);
                              },
                              child: const Text(
                                'yes',
                                textScaleFactor: 0.98,
                              ).tr()),
                        ),
                        const SizedBox(
                          width: Dimens.kDefaultPadding * 1.5,
                        ),
                        Expanded(
                          child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          Dimens.cardCornerRadius)),
                                  side: const BorderSide(
                                      width: 1, color: AppColors.black),
                                  backgroundColor: AppColors.white,
                                  minimumSize: const Size.fromHeight(
                                      Dimens.largeButtonHeight)),
                              onPressed: () {
                                Navigator.of(context).pop(false);
                              },
                              child: const Text(
                                'no',
                                textScaleFactor: 0.98,
                              ).tr()),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
