import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wheather_app/extensions/extensions_mixin.dart';

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
          style: TextStyle(color: context.getColors().white),
          cursorColor: context.getColors().white,
          onSubmitted: _onSubmitted,
          decoration: _inputDecoration(context),
        ),
      );

  InputDecoration _inputDecoration(BuildContext context) => InputDecoration(
        fillColor: Colors.transparent,
        iconColor: context.getColors().white,
        focusColor: context.getColors().white,
        labelText: 'Search',
        disabledBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        labelStyle: TextStyle(
          color: context.getColors().white,
        ),
        hintStyle: TextStyle(
          fontSize: 15.sp,
          color: context.getColors().white,
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16.0.w,
          vertical: 8.0.h,
        ),
        prefixIcon: Icon(
          Icons.search,
          color: context.getColors().white,
        ),
      );

  void _onSubmitted(String text) {
    widget.onSubmitted(text.trim());
    _textEditingController.clear();
    _focusNode.unfocus();
  }
}
