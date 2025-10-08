import 'package:auction_app/app/modules/modules.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../controllers/get_product_details_by_id_controller.dart';

class GetProductDetailsByIdView
    extends GetView<GetProductDetailsByIdController> {
  GetProductDetailsByIdView({super.key});

  @override
  final controller = Get.put(GetProductDetailsByIdController());
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Obx(() {
        if (controller.productDetails.value.data == null) {
          return Center(child: CircularProgressIndicator());
        }

        final product = controller.productDetails.value.data!;

        return SingleChildScrollView(
          child: Padding(
            padding: screenPadding,
            child: Column(
              crossAxisAlignment: crossAxisStart,
              children: [
                20.heightBox,
                Row(
                  children: [
                    BackTitleRow(title: "Product Details"),
                    const Spacer(),
                    5.widthBox,
                    GestureDetector(
                      onTap: () {
                        Get.dialog(
                          DeletePopup(
                              title: "Delete Car",
                              message:
                                  "Are you sure you want to delete this car?",
                              onConfirm: () async {
                                await controller
                                    .deleteCar(controller.productId);
                                Get.back();
                                Get.back();
                              },
                              icon: "assets/icons/delete.png"),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: AppColors.errorColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(
                          Iconsax.trash,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ),
                    5.widthBox,
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.EDITPRODUCTTDETAILS, arguments: [
                          controller.productId,
                          controller.productDetails.value.data?.id.toString() ??
                              "",
                          controller.productDetails.value.data?.name ?? "",
                          controller.productDetails.value.data?.model ?? "",
                          controller.productDetails.value.data?.totalPrice
                              .toString(),
                          controller.productDetails.value.data?.color ?? "",
                          controller.productDetails.value.data?.make ?? "",
                          controller.productDetails.value.data?.year ?? "",
                          controller.productDetails.value.data?.fuel ?? "",
                          controller.productDetails.value.data?.transmission ??
                              "",
                          controller.productDetails.value.data?.condition ?? "",
                          controller.productDetails.value.data?.mileage ?? "",
                          controller.productDetails.value.data?.soldPrice
                              .toString(),
                          controller.selectedStatus.value,
                          controller.productDetails.value.data?.description ??
                              "",
                          controller.productDetails.value.data?.recievedAmount
                              .toString(),
                          controller.productDetails.value.data?.balanceAmount
                              .toString(),
                          "vehicle",
                          ""
                        ]);
                      },
                      child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text("Edit",
                              style: context.bodySmall!.copyWith(
                                  color: AppColors.textColorWhite,
                                  fontSize: 12))),
                    )
                  ],
                ),
                10.heightBox,
                Row(
                  children: [
                    Text('Status', style: context.bodyMedium),
                    10.widthBox,
                    Expanded(
                      child: Container(
                        padding: padding12,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF9FAFB),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          controller.selectedStatus.value,
                          style: context.bodyMedium!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                10.heightBox,
                if (product.images != null && product.images!.isNotEmpty)
                  Stack(
                    alignment: bottomCenter,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 0.0),
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: PageView.builder(
                          controller: pageController,
                          itemCount: product.images!.length,
                          onPageChanged: controller.onPageChanged,
                          itemBuilder: (context, index) {
                            return Image.network(
                              product.images![index],
                              fit: BoxFit.cover,
                            );
                          },
                        ),
                      ),
                      Align(
                        alignment: bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SmoothPageIndicator(
                            controller: pageController,
                            count: product.images!.length,
                            effect: WormEffect(
                              dotHeight: 10,
                              dotWidth: 10,
                              activeDotColor: Colors.white,
                              dotColor: Colors.grey.shade300,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                5.heightBox,
                DetailsBoxes(
                  firstheading: "Item ID",
                  firstsubheading: product.id?.toString() ?? "",
                  secondheading: "Chassis No",
                  secondsubheading: product.chassisNumber?.toString() ?? "",
                ),
                5.heightBox,
                DetailsBoxes(
                    firstheading: "Item Name",
                    firstsubheading: product.name ?? "",
                    secondheading: "Color",
                    secondsubheading: product.color ?? ""),
                5.heightBox,
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: DetailsBoxes(
                        firstheading: "Make",
                        firstsubheading: product.make ?? "",
                        secondheading: "Model",
                        secondsubheading: product.model ?? "",
                      ),
                    ),
                    5.widthBox,
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: padding10,
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.borderColor),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: crossAxisStart,
                          children: [
                            Text(
                              "Year",
                              style: context.bodySmall!.copyWith(fontSize: 14),
                            ),
                            Text(
                              product.year ?? "",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: context.bodyMedium!.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                5.heightBox,
                DetailsBoxes(
                  firstheading: "Fuel Type",
                  firstsubheading: product.fuel ?? "",
                  secondheading: "Transmission",
                  secondsubheading: product.transmission ?? "",
                ),
                5.heightBox,
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: DetailsBoxes(
                        firstheading: "Conditioned",
                        firstsubheading: product.condition ?? "",
                        secondheading: "Price",
                        secondsubheading: "AED ${product.totalPrice ?? ""}",
                      ),
                    ),
                  ],
                ),
                5.heightBox,
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: padding10,
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.borderColor),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: crossAxisStart,
                          children: [
                            Text(
                              "Milage",
                              style: context.bodySmall!.copyWith(fontSize: 14),
                            ),
                            Text(
                              product.mileage ?? "",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: context.bodyMedium!.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                5.heightBox,
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: padding10,
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.borderColor),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: crossAxisStart,
                          children: [
                            Text(
                              "Description",
                              style: context.bodySmall,
                            ),
                            Text(
                              product.description ?? "",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: context.bodyMedium!.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                10.heightBox
              ],
            ),
          ),
        );
      }),
    );
  }
}
