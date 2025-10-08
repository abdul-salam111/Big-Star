import 'package:auction_app/app/modules/modules.dart';
import 'package:auction_app/app/modules/productsModule/addnewsparepart/bindings/addnewsparepart_binding.dart';
import 'package:auction_app/app/modules/productsModule/addnewsparepart/views/addnewsparepart_view.dart';
import '../../../../widgets/options_dialogue_widget.dart';
import '../../../productsModule/scan_product_details.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: screenPadding,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: crossAxisStart,
                  children: [
                    10.heightBox,
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 1.0,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemCount: controller.menuItems.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            switch (index) {
                              case 0:
                                CustomOptionDialog.show(
                                  context: context,
                                  title: 'Choose an Option',
                                  options: [
                                    OptionButton(
                                      label: 'Vehicles',
                                      icon: Icons.directions_car,
                                      color: AppColors.primaryColor,
                                      onPressed: () =>
                                          Get.toNamed(Routes.DISPLAY_VEHICLES),
                                    ),
                                    OptionButton(
                                      label: 'Trucks',
                                      icon: Icons.local_shipping,
                                      color: AppColors.primaryColor,
                                      isOutlined: true,
                                      onPressed: () =>
                                          Get.toNamed(Routes.DISPLAY_TRUCKS),
                                    ),
                                    OptionButton(
                                      label: 'Spare Parts',
                                      icon: Icons.settings,
                                      color: AppColors.primaryColor,
                                      onPressed: () {
                                        Get.toNamed(Routes.DISPLAY_SPARE_PARTS);
                                      },
                                    ),
                                    OptionButton(
                                      label: 'Scan Product',
                                      icon: Icons.qr_code_scanner,
                                      color: AppColors.primaryColor,
                                      isOutlined: true,
                                      onPressed: () {
                                        Get.back();
                                        Get.to(() => ScanProductDetails(),
                                            arguments: false);
                                      },
                                    ),
                                  ],
                                );
                                break;
                              case 1:
                                // Auction Management
                                Get.toNamed(Routes.AUCTIONS);
                                break;
                              case 2:
                                CustomOptionDialog.show(
                                  context: context,
                                  title: 'Choose an Option',
                                  options: [
                                    OptionButton(
                                      label: 'Add New Vehicle',
                                      icon: Icons.directions_car,
                                      color: AppColors.primaryColor,
                                      onPressed: () =>
                                          Get.toNamed(Routes.ADDNEWVEHICLE),
                                    ),
                                    OptionButton(
                                      label: 'Add New Truck',
                                      icon: Icons.local_shipping,
                                      color: AppColors.primaryColor,
                                      isOutlined: true,
                                      onPressed: () =>
                                          Get.to(() => AddNewTruck()),
                                    ),
                                    OptionButton(
                                      label: 'Add Spare Part',
                                      icon: Icons.settings,
                                      color: AppColors.primaryColor,
                                      onPressed: () => Get.to(
                                        () => AddnewsparepartView(),
                                        binding: AddnewsparepartBinding(),
                                      ),
                                    ),
                                    OptionButton(
                                      label: 'Scan Product',
                                      icon: Icons.qr_code_scanner,
                                      color: AppColors.primaryColor,
                                      isOutlined: true,
                                      onPressed: () {
                                        Get.back();
                                        Get.to(() => ScanProductDetails(),
                                            arguments: false);
                                      },
                                    ),
                                  ],
                                );
                                break;
                              case 3:
                                Get.toNamed(Routes.MANAGECUSTOMER);
                                break;
                              case 4:
                                Get.toNamed(Routes.MANAGECONTAINERS);
                                break;
                              case 5:
                                Get.to(() => ScanProductDetails(),
                                    arguments: true);
                                break;
                            }
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.borderColor, width: 1),
                              color: const Color(0xffF7F9FB),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(controller.menuItems[index]['icon'],
                                    size: 30, color: Colors.black),
                                10.heightBox,
                                Text(
                                  controller.menuItems[index]['label'],
                                  style: context.displayLarge!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    15.heightBox,
                    "Current Stock"
                        .text
                        .textStyle(context.bodyMedium!.copyWith(
                            fontWeight: FontWeight.w900, fontSize: 16))
                        .start
                        .make(),
                    10.heightBox,
                    controller.getAllContainersModel.data != null
                        ? Column(
                            children: List.generate(
                              controller.getAllContainersModel.data!.length > 4
                                  ? 4
                                  : controller
                                      .getAllContainersModel.data!.length,
                              (index) {
                                var data = controller
                                    .getAllContainersModel.data![index];
                                return InkWell(
                                  onTap: () {
                                    Get.toNamed(Routes.CONTAINER,
                                        arguments: data.id.toString());
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: Container(
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        crossAxisAlignment: crossAxisStart,
                                        children: [
                                          Row(
                                            children: [
                                              "Container: ${data.containerNumber.toString()}"
                                                  .text
                                                  .textStyle(context.bodySmall!
                                                      .copyWith(
                                                          fontWeight:
                                                              FontWeight.bold))
                                                  .make(),
                                              Spacer(),
                                              "${data.noOfUnits} Items"
                                                  .text
                                                  .textStyle(context
                                                      .displayLarge!
                                                      .copyWith(
                                                          fontWeight:
                                                              FontWeight.bold))
                                                  .center
                                                  .make()
                                                  .box
                                                  .width(context.width * 0.2)
                                                  .p8
                                                  .roundedSM
                                                  .color(Color(0xffF7F9FB))
                                                  .make()
                                            ],
                                          ),
                                          5.heightBox,
                                          Row(
                                            children: [
                                              "Last update: ${data.updatedAt!.toFriendlyDateTime()}"
                                                  .text
                                                  .color(AppColors
                                                      .textColorSecondary)
                                                  .textStyle(context
                                                      .displayLarge!
                                                      .copyWith(
                                                          fontWeight:
                                                              FontWeight.w900))
                                                  .make(),
                                              Spacer(),
                                              Icon(
                                                Iconsax.arrow_right_34,
                                                size: 18,
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                          .box
                                          .border(color: AppColors.borderColor)
                                          .roundedSM
                                          .p12
                                          .make(),
                                    ),
                                  ),
                                );
                              },
                            ),
                          )
                        : Center(
                            child: Text("Stock is not available"),
                          ),
                    15.heightBox,
                    "Recent Activity"
                        .text
                        .textStyle(context.bodyMedium!.copyWith(
                            fontWeight: FontWeight.w900, fontSize: 16))
                        .start
                        .make(),
                    10.heightBox,
                    ListView.builder(
                      itemCount: controller.lastItems.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        final item = controller.lastItems[index];
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
                                  // Optional extra line
                                  // "Container A-123"
                                  //     .text
                                  //     .color(AppColors.textColorSecondary)
                                  //     .textStyle(context.displayLarge!.copyWith(
                                  //         fontWeight: FontWeight.w900))
                                  //     .make(),
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
