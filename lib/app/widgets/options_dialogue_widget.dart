import 'package:auction_app/app/res/res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomOptionDialog {
  /// Shows a customizable options dialog.
  static void show({
    required BuildContext context,
    required String title,
    required List<OptionButton> options,
    double? radius,
  }) {
    Get.defaultDialog(
      title: title,
      radius: radius ?? 12,
      content: Column(
        children: [
          10.heightBox,
          ...options.map(
            (option) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: SizedBox(
                width: context.width * 0.6,
                child: option.isOutlined
                    ? OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: option.color),
                        ),
                        onPressed: () {
                          Get.back();
                          option.onPressed();
                        },
                        icon: Icon(option.icon, color: option.color),
                        label: Text(
                          option.label,
                          style: context.bodyMedium!.copyWith(
                            color: option.color,
                          ),
                        ),
                      )
                    : ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: option.color,
                        ),
                        onPressed: () {
                          Get.back();
                          option.onPressed();
                        },
                        icon: Icon(option.icon, color: Colors.white),
                        label: Text(
                          option.label,
                          style: context.bodyMedium!.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Model class for each option button in the dialog
class OptionButton {
  final String label;
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;
  final bool isOutlined;

  OptionButton({
    required this.label,
    required this.icon,
    required this.color,
    required this.onPressed,
    this.isOutlined = false,
  });
}
