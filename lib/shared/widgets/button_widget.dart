import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tap_app/core/resources/dimansion_manager.dart';
import 'package:tap_app/core/utils/extentions.dart';
import '../../shared/widgets/text_widget.dart';
import '../../core/extensions/all_extensions.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final String? fontFamily;
  final double width, height, radius;
  final Widget? child;
  final Gradient? gradient;
  final double? fontSize;
  final FontWeight? fontweight;
  final Alignment? alignment;
  final Color? textColor, buttonColor, borderColor;
  final void Function()? onTap;
  final bool withBorder;

  const ButtonWidget({
    super.key,
    this.gradient,
    this.title = "OK",
    this.width = double.infinity,
    this.height = AppSize.s45,
    this.onTap,
    this.fontFamily,
    this.child,
    this.fontSize,
    this.fontweight,
    this.alignment,
    this.textColor,
    this.buttonColor,
    this.borderColor,
    this.withBorder = false,
    this.radius = AppSize.buttonRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
              buttonColor ?? context.midnight1),
          overlayColor: MaterialStateProperty.all<Color>(context.midnight2),
          shadowColor: MaterialStateProperty.all<Color>(Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
              side: withBorder
                  ? BorderSide(color: borderColor ?? context.midnight1)
                  : const BorderSide(color: Colors.transparent),
            ),
          ),
        ),
        child: child ??
            title.text(
              fontWeight: fontweight ?? FontWeight.w600,
              fontSize: fontSize ?? 14,
              fontFamily: fontFamily,
              color: textColor ?? context.purpleLilac7,
            ),
      ),
    );
  }
}

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    super.key,
    required this.function,
    required this.text,
    this.fontweight,
    this.color,
    this.size,
    this.fontFamily,
  });
  final Function function;
  final String text;
  final double? size;
  final Color? color;
  final FontWeight? fontweight;
  final String? fontFamily;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        function();
      },
      child: TextWidget(
        text,
        fontWeight: fontweight ?? FontWeight.w600,
        fontFamily: fontFamily ?? "Sans",
        fontSize: size ?? 14,
        color: color ?? context.secondaryColor,
        //  style: TextStyle(color: AppColors.secondary),
      ),
      // style: TextButton.styleFrom(
      //   elevation: 0,
      //   textStyle: TextStyle(
      //     fontWeight: FontWeight.w600,
      //     fontSize: (width <= 550) ? 13 : 17,
      //   ),
      // ),
    );
  }
}

enum ButtonLook { gradiant, border, text, error }

class GradiantButtonWidget extends StatelessWidget {
  final String buttonText;
  final double? width;
  final double? radius;
  final String? image;
  final Function onpressed;
  final ButtonLook buttonLook;
  final bool isLoading;

  const GradiantButtonWidget({
    super.key,
    required this.buttonText,
    this.width,
    this.image,
    this.radius,
    required this.onpressed,
    this.buttonLook = ButtonLook.gradiant,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Align(
            alignment: Alignment.center,
            child: CupertinoActivityIndicator(
                radius: 20, color: context.tertiaryColor))
        : Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                // boxShadow: const [
                //   BoxShadow(
                //       color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
                // ],

                gradient: buttonLook != ButtonLook.gradiant
                    ? null
                    : const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.0, 1.0],
                        colors: [Color(0xFF136576), Color(0xFF149CBF)],
                      ),

                // color: const Color(0xff002C6D),
                borderRadius: BorderRadius.circular(radius ?? 20),
              ),
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(radius ?? 20.0),
                      side: BorderSide(
                        color: {
                              ButtonLook.gradiant: Colors.white,
                              ButtonLook.text: Colors.transparent,
                              ButtonLook.border: Colors.grey,
                              ButtonLook.error: const Color(0xffEF0505),
                            }[buttonLook] ??
                            Colors.transparent,
                      ),
                    ),
                  ),
                  minimumSize: MaterialStateProperty.all(Size(
                      width ?? MediaQuery.of(context).size.width * 0.9, 50)),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                  // elevation: MaterialStateProperty.all(3),
                  shadowColor: MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: () => isLoading ? null : onpressed(),
                child: image != null
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          image.toSvg(),
                          8.pw,
                          TextWidget(
                            buttonText,
                            color: Color(0xff746E87),

                            // style: context.bodyMedium?.copyWith(
                            //   fontSize: 14,
                            //   // color: {
                            //   //   ButtonLook.gradiant: Colors.white,
                            //   //   ButtonLook.text: context.primaryContainerColor,
                            //   //   ButtonLook.border: context.primaryContainerColor,
                            //   //   ButtonLook.error: const Color(0xffEF0505),
                            //   // }[buttonLook] ??
                            //   //     const Color(0x10188653),
                            // ),
                            // fontWeight: FontWeight.w600,
                            // fontSize: 16.sp,
                            // color: Colors.white,
                          ),
                        ],
                      )
                    : TextWidget(
                        buttonText,
                        // style: context.bodyMedium?.copyWith(
                        //   fontSize: 14,
                        //   fontWeight: FontWeight.w600,
                        //   color: {
                        //     ButtonLook.gradiant: Colors.white,
                        //     ButtonLook.text: context.primaryContainerColor,
                        //     ButtonLook.border: context.primaryContainerColor,
                        //     ButtonLook.error: const Color(0xffEF0505),
                        //   }[buttonLook] ??
                        //       const Color(0x10188653),
                      ),
                // fontWeight: FontWeight.w600,
                // fontSize: 16.sp,
                // color: Colors.white,
              ),
            ),
          );
  }
}
