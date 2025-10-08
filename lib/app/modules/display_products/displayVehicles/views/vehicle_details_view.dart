import 'package:auction_app/app/data/getModels/get_vehicles_model.dart';
import 'package:auction_app/app/modules/modules.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class VehicleDetailsView extends StatelessWidget {
  VehicleDetailsView({
    super.key,
  });

  final PageController pageController = PageController();
  final AllVehicleData? vehicle = Get.arguments as AllVehicleData;
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
                      itemCount: vehicle?.images?.length,
                      onPageChanged: (index) {
                        currentImage.value = index;
                      },
                      itemBuilder: (context, index) {
                        return Image.network(
                          vehicle?.images?[index] ?? "",
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
                        count: vehicle?.images?.length ?? 0,
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
              HeightBox(5),
              DetailsBoxes(
                firstheading: "Item ID",
                firstsubheading: vehicle?.id.toString() ?? "",
                secondheading: "Chasis Number",
                secondsubheading: vehicle?.chassisNumber.toString() ?? "",
              ),
              HeightBox(5),
              DetailsBoxes(
                firstheading: "Vehicle Name",
                firstsubheading: vehicle?.name.toString() ?? "",
                secondheading: "Model",
                secondsubheading: vehicle?.model.toString() ?? "",
              ),
              HeightBox(5),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: DetailsBoxes(
                      firstheading: "Make",
                      firstsubheading: vehicle?.make.toString() ?? "",
                      secondheading: "Year",
                      secondsubheading: vehicle?.year.toString() ?? "",
                    ),
                  ),
                  WidthBox(5),
                  Expanded(
                    flex: 1,
                    child: infobox(
                        context: context,
                        heading: "Color",
                        subheading: vehicle?.color.toString() ?? ""),
                  )
                ],
              ),
              HeightBox(5),
              DetailsBoxes(
                firstheading: "Mileage",
                firstsubheading: vehicle?.mileage.toString() ?? "",
                secondheading: "Fuel Type",
                secondsubheading: vehicle?.fuel.toString() ?? "",
              ),
              HeightBox(5),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: DetailsBoxes(
                      firstheading: "Transmission",
                      firstsubheading: vehicle?.transmission.toString() ?? "",
                      secondheading: "Condition",
                      secondsubheading: vehicle?.condition.toString() ?? "",
                    ),
                  ),
                  WidthBox(5),
                  Expanded(
                    flex: 1,
                    child: infobox(
                        context: context,
                        heading: "Doors",
                        subheading: vehicle?.doors.toString() ?? ""),
                  )
                ],
              ),
              HeightBox(5),
              DetailsBoxes(
                firstheading: "Actual Price",
                firstsubheading: "${vehicle?.totalPrice.toString()} AED",
                secondheading: "Sold Price",
                secondsubheading: "${vehicle?.soldPrice.toString()} AED",
              ),
              HeightBox(5),
              DetailsBoxes(
                firstheading: "Received Amount",
                firstsubheading: "${vehicle?.recievedAmount.toString()} AED",
                secondheading: "Uploaded On",
                secondsubheading: DateTime.parse(vehicle?.createdAt ?? "")
                    .toFriendlyDateTime(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget infobox(
    {required BuildContext context,
    required String heading,
    required String subheading}) {
  return Container(
    padding: padding10,
    decoration: BoxDecoration(
        border: Border.all(color: AppColors.borderColor),
        borderRadius: BorderRadius.circular(10)),
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
