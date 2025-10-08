import 'package:auction_app/app/data/getModels/get_all_spareparts_data_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../modules.dart';

class DisplaySparePartDetails extends StatelessWidget {
  DisplaySparePartDetails({super.key});

  final PageController pageController = PageController();
  final SparePartData? part = Get.arguments as SparePartData;
  final currentImage = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: screenPadding,
          child: Column(
            crossAxisAlignment: crossAxisStart,
            children: [
              HeightBox(10),
              part?.images?.isNotEmpty ?? false
                  ? Stack(
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
                            itemCount: part?.images?.length,
                            onPageChanged: (index) {
                              currentImage.value = index;
                            },
                            itemBuilder: (context, index) {
                              return Image.network(
                                part?.images?[index] ?? "",
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
                              count: part?.images?.length ?? 0,
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
                    )
                  : const SizedBox.shrink(),
              HeightBox(5),
              DetailsBoxes(
                firstheading: "Part ID",
                firstsubheading: part?.id.toString() ?? "",
                secondheading: "Part Name",
                secondsubheading: part?.name.toString() ?? "",
              ),
              HeightBox(5),
              DetailsBoxes(
                firstheading: "Make",
                firstsubheading: part?.make.toString() ?? "",
                secondheading: "Model",
                secondsubheading: part?.model.toString() ?? "",
              ),
              HeightBox(5),
              DetailsBoxes(
                firstheading: "Category",
                firstsubheading: part?.category.toString() ?? "",
                secondheading: "Condition",
                secondsubheading: part?.conditionReport.toString() ?? "",
              ),
              HeightBox(5),
              DetailsBoxes(
                firstheading: "Price",
                firstsubheading: part?.price.toString() ?? "",
                secondheading: "Status",
                secondsubheading: part?.status.toString() ?? "",
              ),
              HeightBox(5),
              infobox(
                context: context,
                heading: "Description",
                subheading: part?.description.toString() ?? "",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget infobox({
  required BuildContext context,
  required String heading,
  required String subheading,
}) {
  return Container(
    padding: padding10,
    decoration: BoxDecoration(
      border: Border.all(color: AppColors.borderColor),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      crossAxisAlignment: crossAxisStart,
      children: [
        Text(
          heading,
          style: context.bodySmall,
        ),
        Text(
          subheading,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: context.bodyMedium!
              .copyWith(fontWeight: FontWeight.bold, fontSize: 12),
        ),
      ],
    ),
  );
}
