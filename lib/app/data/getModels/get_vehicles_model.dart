// Generated Dart model for the provided JSON
// File: GetVehiclesModel.dart

class GetVehiclesModel {
  GetVehiclesModel({required this.data});

  List<AllVehicleData> data;

  factory GetVehiclesModel.fromJson(Map<String, dynamic> json) => GetVehiclesModel(
        data: json['data'] == null
            ? []
            : List<AllVehicleData>.from(json['data'].map((x) => AllVehicleData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'data': List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class AllVehicleData {
  AllVehicleData({
    required this.id,
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
    this.showStatus,
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
    this.feature,
    this.createdAt,
    this.updatedAt,
    this.images,
    this.videos,
    this.interior,
    this.safety,
    this.exterior,
    this.comfort,
    this.dimension,
    this.bikeperformance,
    this.bikeusability,
    this.bikesafety,
    this.bikeconvenience,
  });

  int id;
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
  bool? showStatus;
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
  bool? auctionStatusCheck;
  String? condition;
  String? doors;
  String? engineName;
  String? supplier;
  bool? isClear;
  String? reportStatus;
  String? feature;
  String? createdAt;
  String? updatedAt;
  List<String>? images;
  List<dynamic>? videos;
  Interior? interior;
  Safety? safety;
  Exterior? exterior;
  Comfort? comfort;
  Dimension? dimension;
  BikePerformance? bikeperformance;
  BikeUsability? bikeusability;
  BikeSafety? bikesafety;
  BikeConvenience? bikeconvenience;

  factory AllVehicleData.fromJson(Map<String, dynamic> json) => AllVehicleData(
        id: json['id'] ?? 0,
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
        engine: json['engine'] == null ? null : Engine.fromJson(json['engine']),
        status: json['status'],
        showStatus: json['show_status'],
        description: json['description'],
        grade: json['grade'],
        score: json['score'],
        steer: json['steer'],
        displacement: json['displacement'],
        totalPrice: json['total_price'] != null
            ? (json['total_price'] as num).toDouble()
            : null,
        soldPrice: json['sold_price'] != null ? (json['sold_price'] as num).toDouble() : null,
        recievedAmount: json['recieved_amount'] != null ? (json['recieved_amount'] as num).toDouble() : null,
        balanceAmount: json['balance_amount'] != null ? (json['balance_amount'] as num).toDouble() : null,
        auctionResult: json['auction_result'],
        auctionStatusCheck: json['auction_status_check'],
        condition: json['condition'],
        doors: json['doors'],
        engineName: json['engine_name'],
        supplier: json['supplier'],
        isClear: json['is_clear'],
        reportStatus: json['report_status'],
        feature: json['feature'],
        createdAt: json['created_at'],
        updatedAt: json['updated_at'],
        images: json['images'] == null ? null : List<String>.from(json['images']),
        videos: json['videos'] == null ? null : List<dynamic>.from(json['videos']),
        interior: json['interior'] == null ? null : Interior.fromJson(json['interior']),
        safety: json['safety'] == null ? null : Safety.fromJson(json['safety']),
        exterior: json['exterior'] == null ? null : Exterior.fromJson(json['exterior']),
        comfort: json['comfort'] == null ? null : Comfort.fromJson(json['comfort']),
        dimension: json['dimension'] == null ? null : Dimension.fromJson(json['dimension']),
        bikeperformance: json['bikeperformance'] == null ? null : BikePerformance.fromJson(json['bikeperformance']),
        bikeusability: json['bikeusability'] == null ? null : BikeUsability.fromJson(json['bikeusability']),
        bikesafety: json['bikesafety'] == null ? null : BikeSafety.fromJson(json['bikesafety']),
        bikeconvenience: json['bikeconvenience'] == null ? null : BikeConvenience.fromJson(json['bikeconvenience']),
      );

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
        'show_status': showStatus,
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
        'feature': feature,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'images': images,
        'videos': videos,
        'interior': interior?.toJson(),
        'safety': safety?.toJson(),
        'exterior': exterior?.toJson(),
        'comfort': comfort?.toJson(),
        'dimension': dimension?.toJson(),
        'bikeperformance': bikeperformance?.toJson(),
        'bikeusability': bikeusability?.toJson(),
        'bikesafety': bikesafety?.toJson(),
        'bikeconvenience': bikeconvenience?.toJson(),
      };
}

class Engine {
  Engine({
    this.fkVehicleId,
    this.createdAt,
    this.id,
    this.maxTowingWeightBraked,
    this.minimumKerbweight,
    this.fuelTankCapacity,
    this.updatedAt,
    this.maxTowingWeightUnbraked,
    this.turningCircleKerbToKerb,
  });

  int? fkVehicleId;
  String? createdAt;
  int? id;
  dynamic maxTowingWeightBraked;
  dynamic minimumKerbweight;
  dynamic fuelTankCapacity;
  String? updatedAt;
  dynamic maxTowingWeightUnbraked;
  dynamic turningCircleKerbToKerb;

  factory Engine.fromJson(Map<String, dynamic> json) => Engine(
        fkVehicleId: json['fk_vehicle_id'],
        createdAt: json['created_at'],
        id: json['id'],
        maxTowingWeightBraked: json['max_towing_weight_braked'],
        minimumKerbweight: json['minimum_kerbweight'],
        fuelTankCapacity: json['fuel_tank_capacity'],
        updatedAt: json['updated_at'],
        maxTowingWeightUnbraked: json['max_towing_weight_unbraked'],
        turningCircleKerbToKerb: json['turning_circle_kerb_to_kerb'],
      );

  Map<String, dynamic> toJson() => {
        'fk_vehicle_id': fkVehicleId,
        'created_at': createdAt,
        'id': id,
        'max_towing_weight_braked': maxTowingWeightBraked,
        'minimum_kerbweight': minimumKerbweight,
        'fuel_tank_capacity': fuelTankCapacity,
        'updated_at': updatedAt,
        'max_towing_weight_unbraked': maxTowingWeightUnbraked,
        'turning_circle_kerb_to_kerb': turningCircleKerbToKerb,
      };
}

class Interior {
  Interior({
    this.updatedAt,
    this.fkVehicleId,
    this.digitalOdometer,
    this.sunroof,
    this.tvLed,
    this.tachometer,
    this.amFmRadio,
    this.armrestConsole,
    this.airConditioner,
    this.id,
    this.createdAt,
    this.heater,
    this.powerWindows,
    this.leatherSeats,
    this.headlightLeveler,
    this.climateControl,
    this.rearSeatArmrestCentreConsole,
  });

  String? updatedAt;
  int? fkVehicleId;
  bool? digitalOdometer;
  bool? sunroof;
  bool? tvLed;
  bool? tachometer;
  bool? amFmRadio;
  bool? armrestConsole;
  bool? airConditioner;
  int? id;
  String? createdAt;
  bool? heater;
  bool? powerWindows;
  bool? leatherSeats;
  bool? headlightLeveler;
  bool? climateControl;
  bool? rearSeatArmrestCentreConsole;

  factory Interior.fromJson(Map<String, dynamic> json) => Interior(
        updatedAt: json['updated_at'],
        fkVehicleId: json['fk_vehicle_id'],
        digitalOdometer: json['digital_odometer'],
        sunroof: json['sunroof'],
        tvLed: json['tv_led'],
        tachometer: json['tachometer'],
        amFmRadio: json['am_fm_radio'],
        armrestConsole: json['armrest_console'],
        airConditioner: json['air_conditioner'],
        id: json['id'],
        createdAt: json['created_at'],
        heater: json['heater'],
        powerWindows: json['power_windows'],
        leatherSeats: json['leather_seats'],
        headlightLeveler: json['headlight_leveler'],
        climateControl: json['climate_control'],
        rearSeatArmrestCentreConsole: json['rear_seat_armrest_centre_console'],
      );

  Map<String, dynamic> toJson() => {
        'updated_at': updatedAt,
        'fk_vehicle_id': fkVehicleId,
        'digital_odometer': digitalOdometer,
        'sunroof': sunroof,
        'tv_led': tvLed,
        'tachometer': tachometer,
        'am_fm_radio': amFmRadio,
        'armrest_console': armrestConsole,
        'air_conditioner': airConditioner,
        'id': id,
        'created_at': createdAt,
        'heater': heater,
        'power_windows': powerWindows,
        'leather_seats': leatherSeats,
        'headlight_leveler': headlightLeveler,
        'climate_control': climateControl,
        'rear_seat_armrest_centre_console': rearSeatArmrestCentreConsole,
      };
}

class Safety {
  Safety({
    this.id,
    this.absAntilockBraking,
    this.createdAt,
    this.driverAirBag,
    this.passangerAirBag,
    this.curtainAirBag,
    this.tractionControl,
    this.airBrakes,
    this.stepneyTyre,
    this.fkVehicleId,
    this.updatedAt,
    this.childSafetyLock,
    this.rearSeatAirBag,
    this.powerDoorLock,
    this.oilBrakes,
    this.toolKit,
    this.footParkingBrake,
  });

  int? id;
  bool? absAntilockBraking;
  String? createdAt;
  bool? driverAirBag;
  bool? passangerAirBag;
  bool? curtainAirBag;
  bool? tractionControl;
  bool? airBrakes;
  bool? stepneyTyre;
  int? fkVehicleId;
  String? updatedAt;
  bool? childSafetyLock;
  bool? rearSeatAirBag;
  bool? powerDoorLock;
  bool? oilBrakes;
  bool? toolKit;
  bool? footParkingBrake;

  factory Safety.fromJson(Map<String, dynamic> json) => Safety(
        id: json['id'],
        absAntilockBraking: json['abs_antilock_braking'],
        createdAt: json['created_at'],
        driverAirBag: json['driver_air_bag'],
        passangerAirBag: json['passanger_air_bag'],
        curtainAirBag: json['curtain_air_bag'],
        tractionControl: json['traction_control'],
        airBrakes: json['air_brakes'],
        stepneyTyre: json['stepney_tyre'],
        fkVehicleId: json['fk_vehicle_id'],
        updatedAt: json['updated_at'],
        childSafetyLock: json['child_safety_lock'],
        rearSeatAirBag: json['rear_seat_air_bag'],
        powerDoorLock: json['power_door_lock'],
        oilBrakes: json['oil_brakes'],
        toolKit: json['tool_kit'],
        footParkingBrake: json['foot_parking_brake'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'abs_antilock_braking': absAntilockBraking,
        'created_at': createdAt,
        'driver_air_bag': driverAirBag,
        'passanger_air_bag': passangerAirBag,
        'curtain_air_bag': curtainAirBag,
        'traction_control': tractionControl,
        'air_brakes': airBrakes,
        'stepney_tyre': stepneyTyre,
        'fk_vehicle_id': fkVehicleId,
        'updated_at': updatedAt,
        'child_safety_lock': childSafetyLock,
        'rear_seat_air_bag': rearSeatAirBag,
        'power_door_lock': powerDoorLock,
        'oil_brakes': oilBrakes,
        'tool_kit': toolKit,
        'foot_parking_brake': footParkingBrake,
      };
}

class Exterior {
  Exterior({
    this.id,
    this.createdAt,
    this.fogLightsFront,
    this.highDeck,
    this.justlow,
    this.hidHeadlights,
    this.sunVisor,
    this.fkVehicleId,
    this.updatedAt,
    this.alloyRims,
    this.electricPump,
    this.craneStep,
    this.rearWiper,
  });

  int? id;
  String? createdAt;
  bool? fogLightsFront;
  bool? highDeck;
  bool? justlow;
  bool? hidHeadlights;
  bool? sunVisor;
  int? fkVehicleId;
  String? updatedAt;
  bool? alloyRims;
  bool? electricPump;
  bool? craneStep;
  bool? rearWiper;

  factory Exterior.fromJson(Map<String, dynamic> json) => Exterior(
        id: json['id'],
        createdAt: json['created_at'],
        fogLightsFront: json['fog_lights_front'],
        highDeck: json['high_deck'],
        justlow: json['justlow'],
        hidHeadlights: json['HID_headlights'],
        sunVisor: json['sun_visor'],
        fkVehicleId: json['fk_vehicle_id'],
        updatedAt: json['updated_at'],
        alloyRims: json['alloy_rims'],
        electricPump: json['electric_pump'],
        craneStep: json['crane_step'],
        rearWiper: json['rear_wiper'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'created_at': createdAt,
        'fog_lights_front': fogLightsFront,
        'high_deck': highDeck,
        'justlow': justlow,
        'HID_headlights': hidHeadlights,
        'sun_visor': sunVisor,
        'fk_vehicle_id': fkVehicleId,
        'updated_at': updatedAt,
        'alloy_rims': alloyRims,
        'electric_pump': electricPump,
        'crane_step': craneStep,
        'rear_wiper': rearWiper,
      };
}

class Comfort {
  Comfort({
    this.updatedAt,
    this.remoteController,
    this.powerSeats,
    this.id,
    this.androidLed,
    this.powerSideMirrors,
    this.fkVehicleId,
    this.bluetooth,
    this.electricRearviewMirror,
    this.powerStreeing,
    this.frontDoorSpeaker,
    this.dashboardSpeakers,
    this.pushStartSmartkey,
    this.rearDoorSpeaker,
    this.keylessEntry,
    this.rearDeckSpeaker,
    this.keyStart,
    this.ecoMode,
    this.createdAt,
    this.navigation,
    this.heatedSeats,
  });

  String? updatedAt;
  bool? remoteController;
  bool? powerSeats;
  int? id;
  bool? androidLed;
  bool? powerSideMirrors;
  int? fkVehicleId;
  bool? bluetooth;
  bool? electricRearviewMirror;
  bool? powerStreeing;
  bool? frontDoorSpeaker;
  bool? dashboardSpeakers;
  bool? pushStartSmartkey;
  bool? rearDoorSpeaker;
  bool? keylessEntry;
  bool? rearDeckSpeaker;
  bool? keyStart;
  bool? ecoMode;
  String? createdAt;
  bool? navigation;
  bool? heatedSeats;

  factory Comfort.fromJson(Map<String, dynamic> json) => Comfort(
        updatedAt: json['updated_at'],
        remoteController: json['remote_controller'],
        powerSeats: json['power_seats'],
        id: json['id'],
        androidLed: json['android_led'],
        powerSideMirrors: json['power_side_mirrors'],
        fkVehicleId: json['fk_vehicle_id'],
        bluetooth: json['bluetooth'],
        electricRearviewMirror: json['electric_rearview_mirror'],
        powerStreeing: json['power_streeing'],
        frontDoorSpeaker: json['front_door_speaker'],
        dashboardSpeakers: json['dashboard_speakers'],
        pushStartSmartkey: json['push_start_smartkey'],
        rearDoorSpeaker: json['rear_door_speaker'],
        keylessEntry: json['keyless_entry'],
        rearDeckSpeaker: json['rear_deck_speaker'],
        keyStart: json['key_start'],
        ecoMode: json['ECO_mode'],
        createdAt: json['created_at'],
        navigation: json['navigation'],
        heatedSeats: json['heated_seats'],
      );

  Map<String, dynamic> toJson() => {
        'updated_at': updatedAt,
        'remote_controller': remoteController,
        'power_seats': powerSeats,
        'id': id,
        'android_led': androidLed,
        'power_side_mirrors': powerSideMirrors,
        'fk_vehicle_id': fkVehicleId,
        'bluetooth': bluetooth,
        'electric_rearview_mirror': electricRearviewMirror,
        'power_streeing': powerStreeing,
        'front_door_speaker': frontDoorSpeaker,
        'dashboard_speakers': dashboardSpeakers,
        'push_start_smartkey': pushStartSmartkey,
        'rear_door_speaker': rearDoorSpeaker,
        'keyless_entry': keylessEntry,
        'rear_deck_speaker': rearDeckSpeaker,
        'key_start': keyStart,
        'ECO_mode': ecoMode,
        'created_at': createdAt,
        'navigation': navigation,
        'heated_seats': heatedSeats,
      };
}

class Dimension {
  Dimension({
    this.maxLength,
    this.createdAt,
    this.id,
    this.wheelBase,
    this.luggageCapacitySeatsup,
    this.width,
    this.grossVehicleWeight,
    this.maxRoofLoad,
    this.updatedAt,
    this.fkVehicleId,
    this.height,
    this.heightIncludingRoofRails,
    this.luggageCapacitySeatsdown,
    this.widthIncludingMirrors,
    this.maxLoadingWeight,
    this.numberOfSeats,
  });

  dynamic maxLength;
  String? createdAt;
  int? id;
  dynamic wheelBase;
  dynamic luggageCapacitySeatsup;
  dynamic width;
  dynamic grossVehicleWeight;
  dynamic maxRoofLoad;
  String? updatedAt;
  int? fkVehicleId;
  dynamic height;
  dynamic heightIncludingRoofRails;
  dynamic luggageCapacitySeatsdown;
  dynamic widthIncludingMirrors;
  dynamic maxLoadingWeight;
  String? numberOfSeats;

  factory Dimension.fromJson(Map<String, dynamic> json) => Dimension(
        maxLength: json['max_length'],
        createdAt: json['created_at'],
        id: json['id'],
        wheelBase: json['wheel_base'],
        luggageCapacitySeatsup: json['luggage_capacity_seatsup'],
        width: json['width'],
        grossVehicleWeight: json['gross_vehicle_weight'],
        maxRoofLoad: json['max_roof_load'],
        updatedAt: json['updated_at'],
        fkVehicleId: json['fk_vehicle_id'],
        height: json['height'],
        heightIncludingRoofRails: json['height_including_roof_rails'],
        luggageCapacitySeatsdown: json['luggage_capacity_seatsdown'],
        widthIncludingMirrors: json['width_including_mirrors'],
        maxLoadingWeight: json['max_loading_weight'],
        numberOfSeats: json['number_of_seats'],
      );

  Map<String, dynamic> toJson() => {
        'max_length': maxLength,
        'created_at': createdAt,
        'id': id,
        'wheel_base': wheelBase,
        'luggage_capacity_seatsup': luggageCapacitySeatsup,
        'width': width,
        'gross_vehicle_weight': grossVehicleWeight,
        'max_roof_load': maxRoofLoad,
        'updated_at': updatedAt,
        'fk_vehicle_id': fkVehicleId,
        'height': height,
        'height_including_roof_rails': heightIncludingRoofRails,
        'luggage_capacity_seatsdown': luggageCapacitySeatsdown,
        'width_including_mirrors': widthIncludingMirrors,
        'max_loading_weight': maxLoadingWeight,
        'number_of_seats': numberOfSeats,
      };
}

class BikePerformance {
  BikePerformance({
    this.id,
    this.desmodromicEngineTechnology,
    this.createdAt,
    this.lightweightDesign,
    this.updatedAt,
    this.fkVehicleId,
    this.fuelInjection,
    this.highPerformanceSuspension,
  });

  int? id;
  bool? desmodromicEngineTechnology;
  String? createdAt;
  bool? lightweightDesign;
  String? updatedAt;
  int? fkVehicleId;
  bool? fuelInjection;
  bool? highPerformanceSuspension;

  factory BikePerformance.fromJson(Map<String, dynamic> json) => BikePerformance(
        id: json['id'],
        desmodromicEngineTechnology: json['desmodromic_engine_technology'],
        createdAt: json['created_at'],
        lightweightDesign: json['lightweight_design'],
        updatedAt: json['updated_at'],
        fkVehicleId: json['fk_vehicle_id'],
        fuelInjection: json['fuel_injection'],
        highPerformanceSuspension: json['high_performance_suspension'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'desmodromic_engine_technology': desmodromicEngineTechnology,
        'created_at': createdAt,
        'lightweight_design': lightweightDesign,
        'updated_at': updatedAt,
        'fk_vehicle_id': fkVehicleId,
        'fuel_injection': fuelInjection,
        'high_performance_suspension': highPerformanceSuspension,
      };
}

class BikeUsability {
  BikeUsability({
    this.ridingErgonomics,
    this.createdAt,
    this.id,
    this.instrumentation,
    this.fkVehicleId,
    this.updatedAt,
    this.seat,
    this.fuelCapacity,
  });

  bool? ridingErgonomics;
  String? createdAt;
  int? id;
  bool? instrumentation;
  int? fkVehicleId;
  String? updatedAt;
  bool? seat;
  bool? fuelCapacity;

  factory BikeUsability.fromJson(Map<String, dynamic> json) => BikeUsability(
        ridingErgonomics: json['riding_ergonomics'],
        createdAt: json['created_at'],
        id: json['id'],
        instrumentation: json['instrumentation'],
        fkVehicleId: json['fk_vehicle_id'],
        updatedAt: json['updated_at'],
        seat: json['seat'],
        fuelCapacity: json['fuel_capacity'],
      );

  Map<String, dynamic> toJson() => {
        'riding_ergonomics': ridingErgonomics,
        'created_at': createdAt,
        'id': id,
        'instrumentation': instrumentation,
        'fk_vehicle_id': fkVehicleId,
        'updated_at': updatedAt,
        'seat': seat,
        'fuel_capacity': fuelCapacity,
      };
}

class BikeSafety {
  BikeSafety({
    this.id,
    this.highPerformanceBrakes,
    this.createdAt,
    this.updatedAt,
    this.fkVehicleId,
    this.highQualityTires,
  });

  int? id;
  bool? highPerformanceBrakes;
  String? createdAt;
  String? updatedAt;
  int? fkVehicleId;
  bool? highQualityTires;

  factory BikeSafety.fromJson(Map<String, dynamic> json) => BikeSafety(
        id: json['id'],
        highPerformanceBrakes: json['high_performance_brakes'],
        createdAt: json['created_at'],
        updatedAt: json['updated_at'],
        fkVehicleId: json['fk_vehicle_id'],
        highQualityTires: json['high_quality_tires'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'high_performance_brakes': highPerformanceBrakes,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'fk_vehicle_id': fkVehicleId,
        'high_quality_tires': highQualityTires,
      };
}

class BikeConvenience {
  BikeConvenience({
    this.createdAt,
    this.lighting,
    this.id,
    this.security,
    this.fkVehicleId,
    this.updatedAt,
    this.storage,
    this.adjustableSuspension,
  });

  String? createdAt;
  bool? lighting;
  int? id;
  bool? security;
  int? fkVehicleId;
  String? updatedAt;
  bool? storage;
  bool? adjustableSuspension;

  factory BikeConvenience.fromJson(Map<String, dynamic> json) => BikeConvenience(
        createdAt: json['created_at'],
        lighting: json['lighting'],
        id: json['id'],
        security: json['security'],
        fkVehicleId: json['fk_vehicle_id'],
        updatedAt: json['updated_at'],
        storage: json['storage'],
        adjustableSuspension: json['adjustable_suspension'],
      );

  Map<String, dynamic> toJson() => {
        'created_at': createdAt,
        'lighting': lighting,
        'id': id,
        'security': security,
        'fk_vehicle_id': fkVehicleId,
        'updated_at': updatedAt,
        'storage': storage,
        'adjustable_suspension': adjustableSuspension,
      };
}
