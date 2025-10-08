class GetAllTrucksDataModel {
  List<GetIndividualTrucksData>? data;

  GetAllTrucksDataModel({this.data});

  factory GetAllTrucksDataModel.fromJson(Map<String, dynamic> json) {
    return GetAllTrucksDataModel(
      data: (json['data'] as List?)
          ?.map((e) => GetIndividualTrucksData.fromJson(e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'data': data?.map((e) => e.toJson()).toList(),
      };
}

class GetIndividualTrucksData {
  int? id;
  String? bodyType;
  String? driveType;
  String? make;
  String? model;
  String? year;
  String? title;
  String? name;
  String? chassisNumber;
  String? mileage;
  String? damageDetails;
  String? transmission;
  String? clynder;
  String? location;
  String? color;
  String? fuel;
  Engine? engine;
  String? status;
  String? description;
  String? grade;
  String? score;
  String? steer;
  String? displacement;
  double? totalPrice;
  double? soldPrice;
  double? recievedAmount;
  double? balanceAmount;
  String? auctionResult;
  dynamic auctionStatusCheck;
  String? condition;
  String? doors;
  String? engineName;
  String? supplier;
  bool? isClear;
  String? reportStatus;
  bool? showStatus;
  dynamic feature;
  String? createdAt;
  String? updatedAt;
  List<String>? images;
  Interior? interior;
  Safety? safety;
  Exterior? exterior;
  Comfort? comfort;
  Dimension? dimension;

  GetIndividualTrucksData({
    this.id,
    this.bodyType,
    this.driveType,
    this.make,
    this.model,
    this.year,
    this.title,
    this.name,
    this.chassisNumber,
    this.mileage,
    this.damageDetails,
    this.transmission,
    this.clynder,
    this.location,
    this.color,
    this.fuel,
    this.engine,
    this.status,
    this.description,
    this.grade,
    this.score,
    this.steer,
    this.displacement,
    this.totalPrice,
    this.soldPrice,
    this.recievedAmount,
    this.balanceAmount,
    this.auctionResult,
    this.auctionStatusCheck,
    this.condition,
    this.doors,
    this.engineName,
    this.supplier,
    this.isClear,
    this.reportStatus,
    this.showStatus,
    this.feature,
    this.createdAt,
    this.updatedAt,
    this.images,
    this.interior,
    this.safety,
    this.exterior,
    this.comfort,
    this.dimension,
  });

  factory GetIndividualTrucksData.fromJson(Map<String, dynamic> json) {
    return GetIndividualTrucksData(
      id: json['id'],
      bodyType: json['body_type'],
      driveType: json['drive_type'],
      make: json['make'],
      model: json['model'],
      year: json['year'],
      title: json['title'],
      name: json['name'],
      chassisNumber: json['chassis_number'],
      mileage: json['mileage'],
      damageDetails: json['damage_details'],
      transmission: json['transmission'],
      clynder: json['clynder'],
      location: json['location'],
      color: json['color'],
      fuel: json['fuel'],
      engine:
          json['engine'] != null ? Engine.fromJson(json['engine']) : null,
      status: json['status'],
      description: json['description'],
      grade: json['grade'],
      score: json['score']?.toString(),
      steer: json['steer'],
      displacement: json['displacement'],
      totalPrice:
          (json['total_price'] as num?)?.toDouble(),
      soldPrice: (json['sold_price'] as num?)?.toDouble(),
      recievedAmount:
          (json['recieved_amount'] as num?)?.toDouble(),
      balanceAmount:
          (json['balance_amount'] as num?)?.toDouble(),
      auctionResult: json['auction_result'],
      auctionStatusCheck: json['auction_status_check'],
      condition: json['condition'],
      doors: json['doors'],
      engineName: json['engine_name'],
      supplier: json['supplier'],
      isClear: json['is_clear'],
      reportStatus: json['report_status'],
      showStatus: json['show_status'],
      feature: json['feature'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      images: (json['images'] as List?)?.map((e) => e.toString()).toList(),
      interior: json['interior'] != null
          ? Interior.fromJson(json['interior'])
          : null,
      safety:
          json['safety'] != null ? Safety.fromJson(json['safety']) : null,
      exterior:
          json['exterior'] != null ? Exterior.fromJson(json['exterior']) : null,
      comfort:
          json['comfort'] != null ? Comfort.fromJson(json['comfort']) : null,
      dimension: json['dimension'] != null
          ? Dimension.fromJson(json['dimension'])
          : null,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'body_type': bodyType,
        'drive_type': driveType,
        'make': make,
        'model': model,
        'year': year,
        'title': title,
        'name': name,
        'chassis_number': chassisNumber,
        'mileage': mileage,
        'damage_details': damageDetails,
        'transmission': transmission,
        'clynder': clynder,
        'location': location,
        'color': color,
        'fuel': fuel,
        'engine': engine?.toJson(),
        'status': status,
        'description': description,
        'grade': grade,
        'score': score,
        'steer': steer,
        'displacement': displacement,
        'total_price': totalPrice,
        'sold_price': soldPrice,
        'recieved_amount': recievedAmount,
        'balance_amount': balanceAmount,
        'auction_result': auctionResult,
        'auction_status_check': auctionStatusCheck,
        'condition': condition,
        'doors': doors,
        'engine_name': engineName,
        'supplier': supplier,
        'is_clear': isClear,
        'report_status': reportStatus,
        'show_status': showStatus,
        'feature': feature,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'images': images,
        'interior': interior?.toJson(),
        'safety': safety?.toJson(),
        'exterior': exterior?.toJson(),
        'comfort': comfort?.toJson(),
        'dimension': dimension?.toJson(),
      };
}

class Engine {
  int? id;
  String? updatedAt;
  String? createdAt;
  int? fkTruckId;
  String? maxTowingWeightBraked;
  String? minimumKerbweight;
  String? fuelTankCapacity;
  String? maxTowingWeightUnbraked;
  String? turningCircleKerbToKerb;

  Engine({
    this.id,
    this.updatedAt,
    this.createdAt,
    this.fkTruckId,
    this.maxTowingWeightBraked,
    this.minimumKerbweight,
    this.fuelTankCapacity,
    this.maxTowingWeightUnbraked,
    this.turningCircleKerbToKerb,
  });

  factory Engine.fromJson(Map<String, dynamic> json) => Engine(
        id: json['id'],
        updatedAt: json['updated_at'],
        createdAt: json['created_at'],
        fkTruckId: json['fk_truck_id'],
        maxTowingWeightBraked: json['max_towing_weight_braked']?.toString(),
        minimumKerbweight: json['minimum_kerbweight']?.toString(),
        fuelTankCapacity: json['fuel_tank_capacity']?.toString(),
        maxTowingWeightUnbraked:
            json['max_towing_weight_unbraked']?.toString(),
        turningCircleKerbToKerb:
            json['turning_circle_kerb_to_kerb']?.toString(),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'updated_at': updatedAt,
        'created_at': createdAt,
        'fk_truck_id': fkTruckId,
        'max_towing_weight_braked': maxTowingWeightBraked,
        'minimum_kerbweight': minimumKerbweight,
        'fuel_tank_capacity': fuelTankCapacity,
        'max_towing_weight_unbraked': maxTowingWeightUnbraked,
        'turning_circle_kerb_to_kerb': turningCircleKerbToKerb,
      };
}

class Interior {
  int? id;
  bool? airConditioner;
  bool? heater;
  bool? powerWindows;
  bool? leatherSeats;
  bool? headlightLeveler;
  bool? climateControl;
  bool? rearSeatArmrestCentreConsole;
  int? fkTruckId;
  bool? digitalOdometer;
  bool? sunroof;
  bool? tvLed;
  bool? tachometer;
  bool? amFmRadio;
  bool? armrestConsole;

  Interior({
    this.id,
    this.airConditioner,
    this.heater,
    this.powerWindows,
    this.leatherSeats,
    this.headlightLeveler,
    this.climateControl,
    this.rearSeatArmrestCentreConsole,
    this.fkTruckId,
    this.digitalOdometer,
    this.sunroof,
    this.tvLed,
    this.tachometer,
    this.amFmRadio,
    this.armrestConsole,
  });

  factory Interior.fromJson(Map<String, dynamic> json) => Interior(
        id: json['id'],
        airConditioner: json['air_conditioner'],
        heater: json['heater'],
        powerWindows: json['power_windows'],
        leatherSeats: json['leather_seats'],
        headlightLeveler: json['headlight_leveler'],
        climateControl: json['climate_control'],
        rearSeatArmrestCentreConsole:
            json['rear_seat_armrest_centre_console'],
        fkTruckId: json['fk_truck_id'],
        digitalOdometer: json['digital_odometer'],
        sunroof: json['sunroof'],
        tvLed: json['tv_led'],
        tachometer: json['tachometer'],
        amFmRadio: json['am_fm_radio'],
        armrestConsole: json['armrest_console'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'air_conditioner': airConditioner,
        'heater': heater,
        'power_windows': powerWindows,
        'leather_seats': leatherSeats,
        'headlight_leveler': headlightLeveler,
        'climate_control': climateControl,
        'rear_seat_armrest_centre_console': rearSeatArmrestCentreConsole,
        'fk_truck_id': fkTruckId,
        'digital_odometer': digitalOdometer,
        'sunroof': sunroof,
        'tv_led': tvLed,
        'tachometer': tachometer,
        'am_fm_radio': amFmRadio,
        'armrest_console': armrestConsole,
      };
}

class Safety {
  int? id;
  bool? childSafetyLock;
  bool? passangerAirBag;
  bool? curtainAirBag;
  bool? tractionControl;
  bool? airBrakes;
  bool? stepneyTyre;
  bool? absAntilockBraking;
  bool? driverAirBag;
  bool? rearSeatAirBag;
  bool? powerDoorLock;
  bool? oilBrakes;
  bool? toolKit;
  bool? footParkingBrake;

  Safety({
    this.id,
    this.childSafetyLock,
    this.passangerAirBag,
    this.curtainAirBag,
    this.tractionControl,
    this.airBrakes,
    this.stepneyTyre,
    this.absAntilockBraking,
    this.driverAirBag,
    this.rearSeatAirBag,
    this.powerDoorLock,
    this.oilBrakes,
    this.toolKit,
    this.footParkingBrake,
  });

  factory Safety.fromJson(Map<String, dynamic> json) => Safety(
        id: json['id'],
        childSafetyLock: json['child_safety_lock'],
        passangerAirBag: json['passanger_air_bag'],
        curtainAirBag: json['curtain_air_bag'],
        tractionControl: json['traction_control'],
        airBrakes: json['air_brakes'],
        stepneyTyre: json['stepney_tyre'],
        absAntilockBraking: json['abs_antilock_braking'],
        driverAirBag: json['driver_air_bag'],
        rearSeatAirBag: json['rear_seat_air_bag'],
        powerDoorLock: json['power_door_lock'],
        oilBrakes: json['oil_brakes'],
        toolKit: json['tool_kit'],
        footParkingBrake: json['foot_parking_brake'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'child_safety_lock': childSafetyLock,
        'passanger_air_bag': passangerAirBag,
        'curtain_air_bag': curtainAirBag,
        'traction_control': tractionControl,
        'air_brakes': airBrakes,
        'stepney_tyre': stepneyTyre,
        'abs_antilock_braking': absAntilockBraking,
        'driver_air_bag': driverAirBag,
        'rear_seat_air_bag': rearSeatAirBag,
        'power_door_lock': powerDoorLock,
        'oil_brakes': oilBrakes,
        'tool_kit': toolKit,
        'foot_parking_brake': footParkingBrake,
      };
}

class Exterior {
  int? id;
  bool? fogLightsFront;
  bool? highDeck;
  bool? justlow;
  bool? craneStep;
  bool? rearWiper;
  bool? alloyRims;
  bool? electricPump;
  bool? hidHeadlights;
  bool? sunVisor;

  Exterior({
    this.id,
    this.fogLightsFront,
    this.highDeck,
    this.justlow,
    this.craneStep,
    this.rearWiper,
    this.alloyRims,
    this.electricPump,
    this.hidHeadlights,
    this.sunVisor,
  });

  factory Exterior.fromJson(Map<String, dynamic> json) => Exterior(
        id: json['id'],
        fogLightsFront: json['fog_lights_front'],
        highDeck: json['high_deck'],
        justlow: json['justlow'],
        craneStep: json['crane_step'],
        rearWiper: json['rear_wiper'],
        alloyRims: json['alloy_rims'],
        electricPump: json['electric_pump'],
        hidHeadlights: json['HID_headlights'],
        sunVisor: json['sun_visor'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'fog_lights_front': fogLightsFront,
        'high_deck': highDeck,
        'justlow': justlow,
        'crane_step': craneStep,
        'rear_wiper': rearWiper,
        'alloy_rims': alloyRims,
        'electric_pump': electricPump,
        'HID_headlights': hidHeadlights,
        'sun_visor': sunVisor,
      };
}

class Comfort {
  int? id;
  bool? powerStreeing;
  bool? frontDoorSpeaker;
  bool? dashboardSpeakers;
  bool? pushStartSmartkey;
  bool? rearDoorSpeaker;
  bool? keylessEntry;
  bool? rearDeckSpeaker;
  bool? keyStart;
  bool? ecoMode;
  bool? navigation;
  bool? heatedSeats;
  bool? remoteController;
  bool? powerSeats;
  bool? androidLed;
  bool? powerSideMirrors;
  bool? bluetooth;
  bool? electricRearviewMirror;

  Comfort({
    this.id,
    this.powerStreeing,
    this.frontDoorSpeaker,
    this.dashboardSpeakers,
    this.pushStartSmartkey,
    this.rearDoorSpeaker,
    this.keylessEntry,
    this.rearDeckSpeaker,
    this.keyStart,
    this.ecoMode,
    this.navigation,
    this.heatedSeats,
    this.remoteController,
    this.powerSeats,
    this.androidLed,
    this.powerSideMirrors,
    this.bluetooth,
    this.electricRearviewMirror,
  });

  factory Comfort.fromJson(Map<String, dynamic> json) => Comfort(
        id: json['id'],
        powerStreeing: json['power_streeing'],
        frontDoorSpeaker: json['front_door_speaker'],
        dashboardSpeakers: json['dashboard_speakers'],
        pushStartSmartkey: json['push_start_smartkey'],
        rearDoorSpeaker: json['rear_door_speaker'],
        keylessEntry: json['keyless_entry'],
        rearDeckSpeaker: json['rear_deck_speaker'],
        keyStart: json['key_start'],
        ecoMode: json['ECO_mode'],
        navigation: json['navigation'],
        heatedSeats: json['heated_seats'],
        remoteController: json['remote_controller'],
        powerSeats: json['power_seats'],
        androidLed: json['android_led'],
        powerSideMirrors: json['power_side_mirrors'],
        bluetooth: json['bluetooth'],
        electricRearviewMirror: json['electric_rearview_mirror'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'power_streeing': powerStreeing,
        'front_door_speaker': frontDoorSpeaker,
        'dashboard_speakers': dashboardSpeakers,
        'push_start_smartkey': pushStartSmartkey,
        'rear_door_speaker': rearDoorSpeaker,
        'keyless_entry': keylessEntry,
        'rear_deck_speaker': rearDeckSpeaker,
        'key_start': keyStart,
        'ECO_mode': ecoMode,
        'navigation': navigation,
        'heated_seats': heatedSeats,
        'remote_controller': remoteController,
        'power_seats': powerSeats,
        'android_led': androidLed,
        'power_side_mirrors': powerSideMirrors,
        'bluetooth': bluetooth,
        'electric_rearview_mirror': electricRearviewMirror,
      };
}

class Dimension {
  int? id;
  String? updatedAt;
  int? fkTruckId;
  String? height;
  String? heightIncludingRoofRails;
  String? luggageCapacitySeatsdown;
  String? widthIncludingMirrors;
  String? maxLoadingWeight;
  String? numberOfSeats;
  String? maxLength;
  String? createdAt;
  String? wheelBase;
  String? luggageCapacitySeatsup;
  String? width;
  String? grossVehicleWeight;
  String? maxRoofLoad;

  Dimension({
    this.id,
    this.updatedAt,
    this.fkTruckId,
    this.height,
    this.heightIncludingRoofRails,
    this.luggageCapacitySeatsdown,
    this.widthIncludingMirrors,
    this.maxLoadingWeight,
    this.numberOfSeats,
    this.maxLength,
    this.createdAt,
    this.wheelBase,
    this.luggageCapacitySeatsup,
    this.width,
    this.grossVehicleWeight,
    this.maxRoofLoad,
  });

  factory Dimension.fromJson(Map<String, dynamic> json) => Dimension(
        id: json['id'],
        updatedAt: json['updated_at'],
        fkTruckId: json['fk_truck_id'],
        height: json['height'],
        heightIncludingRoofRails:
            json['height_including_roof_rails'],
        luggageCapacitySeatsdown:
            json['luggage_capacity_seatsdown'],
        widthIncludingMirrors: json['width_including_mirrors'],
        maxLoadingWeight: json['max_loading_weight'],
        numberOfSeats: json['number_of_seats'],
        maxLength: json['max_length'],
        createdAt: json['created_at'],
        wheelBase: json['wheel_base'],
        luggageCapacitySeatsup: json['luggage_capacity_seatsup'],
        width: json['width'],
        grossVehicleWeight: json['gross_vehicle_weight'],
        maxRoofLoad: json['max_roof_load'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'updated_at': updatedAt,
        'fk_truck_id': fkTruckId,
        'height': height,
        'height_including_roof_rails': heightIncludingRoofRails,
        'luggage_capacity_seatsdown': luggageCapacitySeatsdown,
        'width_including_mirrors': widthIncludingMirrors,
        'max_loading_weight': maxLoadingWeight,
        'number_of_seats': numberOfSeats,
        'max_length': maxLength,
        'created_at': createdAt,
        'wheel_base': wheelBase,
        'luggage_capacity_seatsup': luggageCapacitySeatsup,
        'width': width,
        'gross_vehicle_weight': grossVehicleWeight,
        'max_roof_load': maxRoofLoad,
      };
}
