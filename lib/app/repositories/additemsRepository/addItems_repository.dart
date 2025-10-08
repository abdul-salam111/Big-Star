import 'package:auction_app/app/config/network/network_services_api.dart';
import 'package:auction_app/app/res/res.dart';

class AddItemsRepository {
  final apiService = NetworkServicesApi();
  Future addNewBodyType(String bodyType) async {
    try {
      final response = await apiService.postApi(
        AppUrls.register_bodytype,
        {"vehbodytype": bodyType},
      );
      
      return response;
    } catch (e) {
      throw Exception("Failed to add new body type: $e");
    }
  }

  Future addNewTransmission(String transmission) async {
    try {
      final response = await apiService.postApi(
        AppUrls.register_transmission,
        {"vehtransmission": transmission},
      );
      return response;
    } catch (e) {
      throw Exception("Failed to add new transmission type: $e");
    }
  }

  Future addNewColor(String color) async {
    try {
      final response = await apiService.postApi(
        AppUrls.register_color,
        {"vehcolor": color},
      );
      return response;
    } catch (e) {
      throw Exception("Failed to add new color type: $e");
    }
  }

  Future addNewDisplacement(String displacement) async {
    try {
      final response = await apiService.postApi(
        AppUrls.register_displacement,
        {"vehdisplacement": displacement},
      );
      return response;
    } catch (e) {
      throw Exception("Failed to add new displacement type: $e");
    }
  }

  Future addNewDriveType(String driveType) async {
    try {
      final response = await apiService.postApi(
        AppUrls.register_drivetype,
        {"vehdrivetype": driveType},
      );
      return response;
    } catch (e) {
      throw Exception("Failed to add new drive type: $e");
    }
  }

  Future addNewScore(String score) async {
    try {
      final response = await apiService.postApi(
        AppUrls.register_score,
        {"vehscore": score},
      );
      return response;
    } catch (e) {
      throw Exception("Failed to add new score type: $e");
    }
  }
}
