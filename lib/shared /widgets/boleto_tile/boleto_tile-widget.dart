import 'package:flutter/material.dart';
import 'package:paybill/shared%20/%20themes/app_text_styles.dart';
import 'package:paybill/shared%20/models/boleto_model.dart';

class BoletoTileWidget extends StatelessWidget {
  final BoletoModel data;
  const BoletoTileWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(
          data.name!,
          style: AppTextStyles.titleListTile,
        ),
        subtitle: Text(
          "Vence em ${data.dueDate}",
          style: AppTextStyles.captionBody,
        ),
        trailing: Text.rich(TextSpan(
          text: "R\$ ",
          style: AppTextStyles.trailingRegular,
          children: [
            TextSpan(
              text: "${data.value!.toStringAsFixed(2)}",
              style: AppTextStyles.trailingBold,
            ),
          ],
        )),
      ),
    );
  }
}
