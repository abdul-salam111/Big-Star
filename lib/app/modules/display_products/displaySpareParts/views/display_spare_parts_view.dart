import 'package:auction_app/app/modules/display_products/displaySpareParts/views/display_spare_part_details.dart';
import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import '../../../modules.dart';
import '../controllers/display_spare_parts_controller.dart';

class DisplaySparePartsView extends GetView<DisplaySparePartsController> {
  const DisplaySparePartsView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.focusScope.unfocus();
      },
      child: Scaffold(
        appBar: CustomAppBar(),
        body: Obx(() {
          if (controller.isLoading.value &&
              controller.isRefreshLoading.value == false) {
            return Center(
              child: LoadingIndicator(size: 40),
            );
          }

          return Padding(
            padding: screenPadding,
            child: Column(
              children: [
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(width: 5),
                    Text(
                      "Spare Parts",
                      style: context.bodyMedium!
                          .copyWith(fontWeight: FontWeight.w900, fontSize: 14),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: TextField(
                        focusNode: controller.searchFocusNode,
                        autofocus: false,
                        onChanged: (value) {
                          controller.search(value);
                        },
                        cursorHeight: 15,
                        style: context.displayLarge!.copyWith(fontSize: 14),
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                          prefixIconConstraints:
                              BoxConstraints(minWidth: 25, minHeight: 25),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide:
                                BorderSide(color: AppColors.borderColor),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide:
                                BorderSide(color: AppColors.borderColor),
                          ),
                          hintText: "Search",
                          prefixIcon: Icon(Iconsax.search_normal, size: 15),
                          hintStyle:
                              context.displayLarge!.copyWith(fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                ),
                HeightBox(10),
                // Header Row
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffF5F7FA),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 40,
                        child: Checkbox(
                          activeColor: AppColors.primaryColor,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          side: BorderSide(width: 1),
                          value: controller.selectAll.value,
                          onChanged: controller.toggleSelectAll,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Id',
                          style: context.displayLarge!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Name',
                          style: context.displayLarge!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Make',
                          style: context.displayLarge!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Model',
                          style: context.displayLarge!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 40,
                        child: Text(
                          'More',
                          style: context.displayLarge!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                // List View
                Expanded(
                  child: RefreshIndicator(
                    onRefresh: () async {
                      await controller.refreshData();
                    },
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: controller.paginatedData.length,
                      itemBuilder: (context, index) {
                        var part = controller.paginatedData[index];
                        return Container(
                          decoration: BoxDecoration(
                            color: index % 2 != 0
                                ? Color(0xffF5F7FA)
                                : Colors.white,
                            border: Border(
                              bottom: BorderSide(color: Colors.grey[300]!),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                mainAxisAlignment: mainAxisSpaceBetween,
                                children: [
                                  // Fix 3: Use fixed width instead of flex: 0
                                  SizedBox(
                                    width: 40,
                                    child: Obx(
                                      () => Checkbox(
                                        activeColor: AppColors.primaryColor,
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        side: const BorderSide(width: 1),
                                        value: controller.selectedRows
                                            .contains(part.id),
                                        onChanged: (value) {
                                          controller
                                              .toggleRowSelection(part.id!);
                                        },
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Text(
                                      part.id.toString(),
                                      style: context.displayLarge,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: AutoSizeText(
                                      part.name ?? "",
                                      style: context.displayLarge,
                                      maxLines: 1,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Text(
                                      part.make ?? "",
                                      style: context.displayLarge,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Text(
                                      part.model ?? "",
                                      style: context.displayLarge,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 40,
                                    child: Obx(
                                      () => IconButton(
                                        icon: Icon(
                                          controller.expandedRows
                                                  .contains(part.id)
                                              ? Iconsax.arrow_square_up
                                              : Iconsax.arrow_square_down,
                                          color: AppColors.buttonDisabledColor,
                                          size: 20,
                                        ),
                                        onPressed: () {
                                          controller.toggleExpandRow(part.id!);
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Fix 4: Properly handle expanded content
                              Obx(() {
                                if (!controller.expandedRows
                                    .contains(part.id)) {
                                  return SizedBox.shrink();
                                }

                                return Padding(
                                  padding:
                                      const EdgeInsets.only(top: 0, left: 10),
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                          color: part.status == "Outofstock"
                                              ? Colors.red[100]
                                              : part.status == "Instock"
                                                  ? Colors.green[100]
                                                  : Colors.grey[200],
                                          border: Border.all(
                                              color: AppColors.borderColor),
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ),
                                        child: Row(
                                          children: [
                                            Text(
                                              'Status:',
                                              style: context.displayLarge!
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.bold),
                                            ),
                                            SizedBox(width: 5),
                                            Text(
                                              part.status ?? "",
                                              style: context.displayLarge!
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.normal),
                                            ),
                                          ],
                                        ),
                                      ),
                                      WidthBox(10),
                                      Text(
                                        'Category:',
                                        style: context.displayLarge!.copyWith(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        part.category ?? "",
                                        style: context.displayLarge!.copyWith(
                                            fontWeight: FontWeight.normal),
                                      ),
                                      WidthBox(10),
                                      InkWell(
                                        onTap: () {
                                          Get.to(
                                              () => DisplaySparePartDetails(),
                                              arguments: part);
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.all(6),
                                          decoration: BoxDecoration(
                                            color: Colors.orange,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: Icon(
                                            Iconsax.eye,
                                            color: Colors.white,
                                            size: 15,
                                          ),
                                        ),
                                      ),
                                      WidthBox(10),
                                      InkWell(
                                        onTap: () {
                                          // Get.toNamed(Routes.CUSTOMERMANAGEMENT,
                                          //     arguments: item);
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.all(6),
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: Icon(
                                            Iconsax.trash,
                                            color: Colors.white,
                                            size: 15,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }),
                              HeightBox(5),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
                // Pagination
                Obx(() => Padding(
                      padding: const EdgeInsets.only(bottom: 8.0, top: 8),
                      child: SizedBox(
                        height: 50,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: controller.buildPagination(),
                        ),
                      ),
                    )),
              ],
            ),
          );
        }),
      ),
    );
  }
}
