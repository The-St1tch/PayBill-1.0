import 'package:flutter/material.dart';
import 'package:paybill/shared%20/%20themes/app_colors.dart';
import 'package:paybill/shared%20/%20themes/app_text_styles.dart';
import 'package:paybill/shared%20/widgets/set_label_buttons/set_label_buttons.dart';

class BottomSheetWidget extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnPressed;
  final String secondaryLabel;
  final VoidCallback secondaryOnPressed;
  final String title;
  final String subtitle;

  const BottomSheetWidget({
    Key? key,
    required this.primaryLabel,
    required this.primaryOnPressed,
    required this.secondaryLabel,
    required this.secondaryOnPressed,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 1,
      child: Material(
        color: Colors.transparent,
        child: Column(
          children: [
            Expanded(
                child: Container(
              color: Colors.black.withOpacity(0.5),
            )),
            Container(
              color: AppColors.background,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text.rich(
                    TextSpan(
                        text: title,
                        style: AppTextStyles.buttonBoldHeading,
                        children: [
                          TextSpan(
                            text: "\n$subtitle",
                            style: AppTextStyles.buttonHeading,
                          )
                        ]),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 40),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        height: 1,
                        color: AppColors.stroke,
                      )),
                    ],
                  ),
                  SetLabelButtons(
                    enablePrimaryColor: true,
                    primaryLabel: primaryLabel,
                    primaryOnPressed: primaryOnPressed,
                    secondaryLabel: secondaryLabel,
                    secondaryOnPressed: secondaryOnPressed,
                  ),
                  SizedBox(height: 2),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
