import 'package:country_picker/country_picker.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import '../../allride_utilities.dart';

class PhoneTextField extends StatefulWidget {
  final TextEditingController countryCodeController;
  final TextEditingController phoneController;
  final String? labelText;
  final String? Function(String?)? validator;

  const PhoneTextField(
      {super.key,
      required this.countryCodeController,
      required this.phoneController, this.labelText, this.validator});

  @override
  State<PhoneTextField> createState() => _PhoneTextFieldState();
}

class _PhoneTextFieldState extends State<PhoneTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        widget.labelText != ''
            ? Text(
          widget.labelText ?? '',
          textScaleFactor: 0.98,
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(fontWeight: FontWeight.w400),
        ) //tr() is for make this text multi lingual
            : const SizedBox(),
        widget.labelText != ''
            ? const SizedBox(
          height: Dimens.kDefaultPadding / 2,
        )
            : const SizedBox(),
        Container(
          padding: const EdgeInsets.symmetric(
              horizontal: Dimens.kDefaultPadding,
              vertical: Dimens.kDefaultPadding / 4),
          decoration: BoxDecoration(
              color: AppColors.lightGrey,
              border: Border.all(color: AppColors.border, width: 2),
              borderRadius: BorderRadius.circular(Dimens.cardCornerRadius)),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: AppComponent.textField(
                    context: context,
                    controller: widget.countryCodeController,
                    labelText: '',
                    isUnderline: false,
                    isBorder: false,
                    readOnly: true,
                    contentPadding: EdgeInsets.zero,
                    onTap: () {
                      showCountryPicker(
                          context: context,
                          showPhoneCode: true,
                          useSafeArea: true,
                          countryListTheme: CountryListThemeData(
                              backgroundColor: AppColors.white,
                              flagSize: Dimens.appBarIconSize,
                              inputDecoration: InputDecoration(
                                hintText: 'Search',
                                prefixIcon: const Icon(
                                  EvaIcons.searchOutline,
                                  size: Dimens.appBarIconSize,
                                  color: AppColors.grey,
                                ),
                                filled: true,
                                fillColor: AppColors.lightGrey,
                                hintStyle: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                        color: AppColors.grey,
                                        fontWeight: FontWeight.w400),
                                labelStyle: Theme.of(context).textTheme.bodyText1,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: Dimens.kDefaultPadding,
                                    vertical: Dimens.kDefaultPadding * 1.3),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: AppColors.border, width: 2),
                                    borderRadius: BorderRadius.circular(
                                        Dimens.cardCornerRadius)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: AppColors.border, width: 2),
                                    borderRadius: BorderRadius.circular(
                                        Dimens.cardCornerRadius)),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      Dimens.cardCornerRadius),
                                  borderSide: BorderSide(
                                      color: AppColors.red.withAlpha(50), width: 2),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      Dimens.cardCornerRadius),
                                  borderSide: const BorderSide(
                                      color: AppColors.border, width: 2),
                                ),
                              ),
                              bottomSheetHeight:
                                  MediaQuery.of(context).size.height * 0.6,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(Dimens.cardCornerRadius),
                                  topRight:
                                      Radius.circular(Dimens.cardCornerRadius))),
                          onSelect: (Country value) {
                            setState(() {
                              widget.countryCodeController.text =
                                  '${value.flagEmoji} +${value.phoneCode}';
                            });
                          });
                    },
                    hintText: '+91'),
              ),
              Container(
                height: 24,
                margin: const EdgeInsets.symmetric(
                    horizontal: Dimens.kDefaultPadding / 2),
                width: 2,
                color: AppColors.grey.withAlpha(200),
              ),
              Expanded(
                flex: 8,
                child: AppComponent.textField(
                    context: context,
                    controller: widget.phoneController,
                    labelText: '',
                    contentPadding: EdgeInsets.zero,
                    isUnderline: false,
                    keyboardType: TextInputType.phone,
                    isBorder: false,
                    validator: widget.validator,
                    maxLength: 13,
                    hintText: 'Enter your phone number'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
