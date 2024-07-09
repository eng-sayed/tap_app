import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tap_app/core/extensions/all_extensions.dart';

import '../core/resources/gen/assets.gen.dart';

class CustomAppBarWidget extends StatelessWidget {
  String? title;
  Widget? trailing;
  bool? isBack;
  String? titleText;
  CustomAppBarWidget(
      {Key? key, this.title, this.trailing, this.isBack = true, this.titleText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: context.midnight1,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          isBack == true
              ? InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Color(0xff23174F),
                    child: SvgPicture.asset("assets/icons/arrow_back.svg"),
                  ),
                )
              : Text(
                  titleText ?? "",
                  style: context.bodyLarge?.copyWith(color: Colors.white),
                ),
          Align(
            alignment: Alignment.center,
            child: Text(
              title ?? "",
              style: context.bodyLarge?.copyWith(color: Colors.white),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: trailing ?? Assets.icons.refreshCircle.svg(),
          ),
        ],
      ),

      // child: Assets.icons.logoW.svg(width: 100),
    );
  }
}
