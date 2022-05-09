import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wheather_app/extensions/extensions_mixin.dart';
import 'package:wheather_app/style/app_typography.dart';

class AppTextInput extends StatefulWidget {
  const AppTextInput({required this.onSubmitted, Key? key}) : super(key: key);

  final void Function(String) onSubmitted;

  @override
  State<AppTextInput> createState() => _AppTextInputState();
}

class _AppTextInputState extends State<AppTextInput> {
  final TextEditingController _textEditingController = TextEditingController();
  late final FocusNode _focusNode;

  @override
  void initState() {
    _focusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();

    _textEditingController.dispose();
    _focusNode.unfocus();
    _focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
        decoration: BoxDecoration(
          color: context.getColors().mainColor,
        ),
        child: TextField(
          focusNode: _focusNode,
          controller: _textEditingController,
          textCapitalization: TextCapitalization.words,
          style: _getTextFieldTextStyle(context),
          cursorColor: context.getColors().white,
          onSubmitted: _onSubmitted,
          decoration: _inputDecoration(context),
        ),
      );

  InputDecoration _inputDecoration(BuildContext context) {
    final Color white = context.getColors().white;
    return InputDecoration(
      fillColor: Colors.transparent,
      iconColor: white,
      focusColor: white,
      labelText: 'Search',
      disabledBorder: InputBorder.none,
      enabledBorder: InputBorder.none,
      focusedBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      labelStyle: _getTextFieldTextStyle(context),
      hintStyle: _getTextFieldTextStyle(context),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 16.0.w,
        vertical: 8.0.h,
      ),
      prefixIcon: Icon(
        Icons.search,
        color: white,
      ),
    );
  }

  void _onSubmitted(String text) {
    widget.onSubmitted(text.trim());
    _textEditingController.clear();
    _focusNode.unfocus();
  }

  TextStyle? _getTextFieldTextStyle(BuildContext context) => AppTypography.textFieldText.copyWith(
        color: context.getColors().white,
      );
}
