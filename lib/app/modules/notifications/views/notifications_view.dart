import 'package:auction_app/app/modules/modules.dart';
import 'package:auction_app/app/res/res.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../controllers/notifications_controller.dart';

class NotificationsView extends GetView<NotificationsController> {
  const NotificationsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: controller.notifications.isEmpty
          ? Center(
              child: Text(
                "No notifications",
                style: context.bodyMedium,
              ),
            )
          : Padding(
              padding: screenPadding,
              child: Column(
                children: [
                  10.heightBox,
                  BackTitleRow(title: "Notifications"),
                  30.heightBox,
                  Expanded(
                    child: ListView.builder(
                      itemCount: controller.notifications.length,
                      itemBuilder: (context, index) {
                        final item = controller.notifications[
                          index];
                        DateTime dateTime =
                            DateTime.parse(item.createdAt!.split("T").first);
                        String friendlyDateTime = dateTime.toFriendlyDateTime();

                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Row(
                            children: [
                              Icon(Iconsax.notification)
                                  .box
                                  .roundedFull
                                  .p16
                                  .color(Color(0xffF4F6F9))
                                  .make(),
                              10.widthBox,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: context.width * 0.5,
                                    child: "${item.message}"
                                        .text
                                        .textStyle(
                                          context.displayLarge!.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                        .make(),
                                  ),
                                  10.heightBox,
                                  friendlyDateTime.text
                                      .color(AppColors.textColorSecondary)
                                      .textStyle(
                                        context.displayLarge!.copyWith(
                                          fontWeight: FontWeight.w900,
                                        ),
                                      )
                                      .make(),
                                ],
                              ),
                            ],
                          )
                              .box
                              .border(color: AppColors.borderColor)
                              .roundedSM
                              .p12
                              .make(),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
