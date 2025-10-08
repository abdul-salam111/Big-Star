// To parse this JSON data, do
//
//     final getProductDetails = getProductDetailsFromJson(jsonString);

import 'dart:convert';

GetProductDetails getProductDetailsFromJson(String str) =>
    GetProductDetails.fromJson(json.decode(str));

String getProductDetailsToJson(GetProductDetails data) =>
    json.encode(data.toJson());

class GetProductDetails {
  Data? data;

  GetProductDetails({
    this.data,
  });

  factory GetProductDetails.fromJson(Map<String, dynamic> json) =>
      GetProductDetails(
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
      };
}

class Data {
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
  dynamic description;
  String? grade;
  dynamic score;
  String? steer;
  String? displacement;
  double? totalPrice;
  double? soldPrice;
  double? recievedAmount;
  double? balanceAmount;
  String? auctionResult;
  String? condition;
  String? doors;
  String? engineName;
  String? supplier;
  bool? isClear;
  String? reportStatus;
  String? feature;
  dynamic uploadedBy;
  dynamic soldBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  List<String>? images;
  List<dynamic>? videos;
  Interior? interior;
  Safety? safety;
  Exterior? exterior;
  Comfort? comfort;
  Dimension? dimension;
  String? barcode;
  Bikeperformance? bikeperformance;
  Bikeusability? bikeusability;
  Bikesafety? bikesafety;
  Bikeconvenience? bikeconvenience;

  Data({
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
    this.condition,
    this.doors,
    this.engineName,
    this.supplier,
    this.isClear,
    this.reportStatus,
    this.feature,
    this.uploadedBy,
    this.soldBy,
    this.createdAt,
    this.updatedAt,
    this.images,
    this.videos,
    this.interior,
    this.safety,
    this.exterior,
    this.comfort,
    this.dimension,
    this.barcode,
    this.bikeperformance,
    this.bikeusability,
    this.bikesafety,
    this.bikeconvenience,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        bodyType: json["body_type"],
        driveType: json["drive_type"],
        make: json["make"],
        model: json["model"],
        year: json["year"],
        title: json["title"],
        name: json["name"],
        chassisNumber: json["chassis_number"],
        mileage: json["mileage"],
        damageDetails: json["damage_details"],
        transmission: json["transmission"],
        clynder: json["clynder"],
        location: json["location"],
        color: json["color"],
        fuel: json["fuel"],
        engine: json["engine"] == null ? null : Engine.fromJson(json["engine"]),
        status: json["status"],
        description: json["description"],
        grade: json["grade"],
        score: json["score"],
        steer: json["steer"],
        displacement: json["displacement"],
        totalPrice: json["total_price"],
        soldPrice: json["sold_price"],
        recievedAmount: json["recieved_amount"],
        balanceAmount: json["balance_amount"],
        auctionResult: json["auction_result"],
        condition: json["condition"],
        doors: json["doors"],
        engineName: json["engine_name"],
        supplier: json["supplier"],
        isClear: json["is_clear"],
        reportStatus: json["report_status"],
        feature: json["feature"],
        uploadedBy: json["uploaded_by"],
        soldBy: json["sold_by"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        images: json["images"] == null
            ? []
            : List<String>.from(json["images"]!.map((x) => x)),
        videos: json["videos"] == null
            ? []
            : List<dynamic>.from(json["videos"]!.map((x) => x)),
        interior: json["interior"] == null
            ? null
            : Interior.fromJson(json["interior"]),
        safety: json["safety"] == null ? null : Safety.fromJson(json["safety"]),
        exterior: json["exterior"] == null
            ? null
            : Exterior.fromJson(json["exterior"]),
        comfort:
            json["comfort"] == null ? null : Comfort.fromJson(json["comfort"]),
        dimension: json["dimension"] == null
            ? null
            : Dimension.fromJson(json["dimension"]),
        barcode: json["barcode"],
        bikeperformance: json["bikeperformance"] == null
            ? null
            : Bikeperformance.fromJson(json["bikeperformance"]),
        bikeusability: json["bikeusability"] == null
            ? null
            : Bikeusability.fromJson(json["bikeusability"]),
        bikesafety: json["bikesafety"] == null
            ? null
            : Bikesafety.fromJson(json["bikesafety"]),
        bikeconvenience: json["bikeconvenience"] == null
            ? null
            : Bikeconvenience.fromJson(json["bikeconvenience"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "body_type": bodyType,
        "drive_type": driveType,
        "make": make,
        "model": model,
        "year": year,
        "title": title,
        "name": name,
        "chassis_number": chassisNumber,
        "mileage": mileage,
        "damage_details": damageDetails,
        "transmission": transmission,
        "clynder": clynder,
        "location": location,
        "color": color,
        "fuel": fuel,
        "engine": engine?.toJson(),
        "status": status,
        "description": description,
        "grade": grade,
        "score": score,
        "steer": steer,
        "displacement": displacement,
        "total_price": totalPrice,
        "sold_price": soldPrice,
        "recieved_amount": recievedAmount,
        "balance_amount": balanceAmount,
        "auction_result": auctionResult,
        "condition": condition,
        "doors": doors,
        "engine_name": engineName,
        "supplier": supplier,
        "is_clear": isClear,
        "report_status": reportStatus,
        "feature": feature,
        "uploaded_by": uploadedBy,
        "sold_by": soldBy,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "images":
            images == null ? [] : List<dynamic>.from(images!.map((x) => x)),
        "videos":
            videos == null ? [] : List<dynamic>.from(videos!.map((x) => x)),
        "interior": interior?.toJson(),
        "safety": safety?.toJson(),
        "exterior": exterior?.toJson(),
        "comfort": comfort?.toJson(),
        "dimension": dimension?.toJson(),
        "barcode": barcode,
        "bikeperformance": bikeperformance?.toJson(),
        "bikeusability": bikeusability?.toJson(),
        "bikesafety": bikesafety?.toJson(),
        "bikeconvenience": bikeconvenience?.toJson(),
      };
}

class Bikeconvenience {
  int? fkVehicleId;
  DateTime? updatedAt;
  bool? storage;
  bool? adjustableSuspension;
  DateTime? createdAt;
  int? id;
  bool? lighting;
  bool? security;

  Bikeconvenience({
    this.fkVehicleId,
    this.updatedAt,
    this.storage,
    this.adjustableSuspension,
    this.createdAt,
    this.id,
    this.lighting,
    this.security,
  });

  factory Bikeconvenience.fromJson(Map<String, dynamic> json) =>
      Bikeconvenience(
        fkVehicleId: json["fk_vehicle_id"],
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        storage: json["storage"],
        adjustableSuspension: json["adjustable_suspension"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        id: json["id"],
        lighting: json["lighting"],
        security: json["security"],
      );

  Map<String, dynamic> toJson() => {
        "fk_vehicle_id": fkVehicleId,
        "updated_at": updatedAt?.toIso8601String(),
        "storage": storage,
        "adjustable_suspension": adjustableSuspension,
        "created_at": createdAt?.toIso8601String(),
        "id": id,
        "lighting": lighting,
        "security": security,
      };
}

class Bikeperformance {
  DateTime? updatedAt;
  int? fkVehicleId;
  bool? fuelInjection;
  bool? highPerformanceSuspension;
  bool? desmodromicEngineTechnology;
  DateTime? createdAt;
  int? id;
  bool? lightweightDesign;

  Bikeperformance({
    this.updatedAt,
    this.fkVehicleId,
    this.fuelInjection,
    this.highPerformanceSuspension,
    this.desmodromicEngineTechnology,
    this.createdAt,
    this.id,
    this.lightweightDesign,
  });

  factory Bikeperformance.fromJson(Map<String, dynamic> json) =>
      Bikeperformance(
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        fkVehicleId: json["fk_vehicle_id"],
        fuelInjection: json["fuel_injection"],
        highPerformanceSuspension: json["high_performance_suspension"],
        desmodromicEngineTechnology: json["desmodromic_engine_technology"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        id: json["id"],
        lightweightDesign: json["lightweight_design"],
      );

  Map<String, dynamic> toJson() => {
        "updated_at": updatedAt?.toIso8601String(),
        "fk_vehicle_id": fkVehicleId,
        "fuel_injection": fuelInjection,
        "high_performance_suspension": highPerformanceSuspension,
        "desmodromic_engine_technology": desmodromicEngineTechnology,
        "created_at": createdAt?.toIso8601String(),
        "id": id,
        "lightweight_design": lightweightDesign,
      };
}

class Bikesafety {
  DateTime? updatedAt;
  int? fkVehicleId;
  bool? highQualityTires;
  bool? highPerformanceBrakes;
  DateTime? createdAt;
  int? id;

  Bikesafety({
    this.updatedAt,
    this.fkVehicleId,
    this.highQualityTires,
    this.highPerformanceBrakes,
    this.createdAt,
    this.id,
  });

  factory Bikesafety.fromJson(Map<String, dynamic> json) => Bikesafety(
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        fkVehicleId: json["fk_vehicle_id"],
        highQualityTires: json["high_quality_tires"],
        highPerformanceBrakes: json["high_performance_brakes"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "updated_at": updatedAt?.toIso8601String(),
        "fk_vehicle_id": fkVehicleId,
        "high_quality_tires": highQualityTires,
        "high_performance_brakes": highPerformanceBrakes,
        "created_at": createdAt?.toIso8601String(),
        "id": id,
      };
}

class Bikeusability {
  DateTime? updatedAt;
  int? fkVehicleId;
  bool? seat;
  bool? fuelCapacity;
  DateTime? createdAt;
  int? id;
  bool? ridingErgonomics;
  bool? instrumentation;

  Bikeusability({
    this.updatedAt,
    this.fkVehicleId,
    this.seat,
    this.fuelCapacity,
    this.createdAt,
    this.id,
    this.ridingErgonomics,
    this.instrumentation,
  });

  factory Bikeusability.fromJson(Map<String, dynamic> json) => Bikeusability(
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        fkVehicleId: json["fk_vehicle_id"],
        seat: json["seat"],
        fuelCapacity: json["fuel_capacity"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        id: json["id"],
        ridingErgonomics: json["riding_ergonomics"],
        instrumentation: json["instrumentation"],
      );

  Map<String, dynamic> toJson() => {
        "updated_at": updatedAt?.toIso8601String(),
        "fk_vehicle_id": fkVehicleId,
        "seat": seat,
        "fuel_capacity": fuelCapacity,
        "created_at": createdAt?.toIso8601String(),
        "id": id,
        "riding_ergonomics": ridingErgonomics,
        "instrumentation": instrumentation,
      };
}

class Comfort {
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
  DateTime? createdAt;
  bool? navigation;
  bool? heatedSeats;
  DateTime? updatedAt;
  bool? remoteController;
  bool? powerSeats;

  Comfort({
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
    this.updatedAt,
    this.remoteController,
    this.powerSeats,
  });

  factory Comfort.fromJson(Map<String, dynamic> json) => Comfort(
        id: json["id"],
        androidLed: json["android_led"],
        powerSideMirrors: json["power_side_mirrors"],
        fkVehicleId: json["fk_vehicle_id"],
        bluetooth: json["bluetooth"],
        electricRearviewMirror: json["electric_rearview_mirror"],
        powerStreeing: json["power_streeing"],
        frontDoorSpeaker: json["front_door_speaker"],
        dashboardSpeakers: json["dashboard_speakers"],
        pushStartSmartkey: json["push_start_smartkey"],
        rearDoorSpeaker: json["rear_door_speaker"],
        keylessEntry: json["keyless_entry"],
        rearDeckSpeaker: json["rear_deck_speaker"],
        keyStart: json["key_start"],
        ecoMode: json["ECO_mode"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        navigation: json["navigation"],
        heatedSeats: json["heated_seats"],
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        remoteController: json["remote_controller"],
        powerSeats: json["power_seats"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "android_led": androidLed,
        "power_side_mirrors": powerSideMirrors,
        "fk_vehicle_id": fkVehicleId,
        "bluetooth": bluetooth,
        "electric_rearview_mirror": electricRearviewMirror,
        "power_streeing": powerStreeing,
        "front_door_speaker": frontDoorSpeaker,
        "dashboard_speakers": dashboardSpeakers,
        "push_start_smartkey": pushStartSmartkey,
        "rear_door_speaker": rearDoorSpeaker,
        "keyless_entry": keylessEntry,
        "rear_deck_speaker": rearDeckSpeaker,
        "key_start": keyStart,
        "ECO_mode": ecoMode,
        "created_at": createdAt?.toIso8601String(),
        "navigation": navigation,
        "heated_seats": heatedSeats,
        "updated_at": updatedAt?.toIso8601String(),
        "remote_controller": remoteController,
        "power_seats": powerSeats,
      };
}

class Dimension {
  int? fkVehicleId;
  DateTime? updatedAt;
  dynamic height;
  dynamic heightIncludingRoofRails;
  dynamic luggageCapacitySeatsdown;
  dynamic widthIncludingMirrors;
  dynamic maxLoadingWeight;
  String? numberOfSeats;
  DateTime? createdAt;
  int? id;
  dynamic maxLength;
  dynamic wheelBase;
  dynamic luggageCapacitySeatsup;
  dynamic width;
  dynamic grossVehicleWeight;
  dynamic maxRoofLoad;

  Dimension({
    this.fkVehicleId,
    this.updatedAt,
    this.height,
    this.heightIncludingRoofRails,
    this.luggageCapacitySeatsdown,
    this.widthIncludingMirrors,
    this.maxLoadingWeight,
    this.numberOfSeats,
    this.createdAt,
    this.id,
    this.maxLength,
    this.wheelBase,
    this.luggageCapacitySeatsup,
    this.width,
    this.grossVehicleWeight,
    this.maxRoofLoad,
  });

  factory Dimension.fromJson(Map<String, dynamic> json) => Dimension(
        fkVehicleId: json["fk_vehicle_id"],
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        height: json["height"],
        heightIncludingRoofRails: json["height_including_roof_rails"],
        luggageCapacitySeatsdown: json["luggage_capacity_seatsdown"],
        widthIncludingMirrors: json["width_including_mirrors"],
        maxLoadingWeight: json["max_loading_weight"],
        numberOfSeats: json["number_of_seats"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        id: json["id"],
        maxLength: json["max_length"],
        wheelBase: json["wheel_base"],
        luggageCapacitySeatsup: json["luggage_capacity_seatsup"],
        width: json["width"],
        grossVehicleWeight: json["gross_vehicle_weight"],
        maxRoofLoad: json["max_roof_load"],
      );

  Map<String, dynamic> toJson() => {
        "fk_vehicle_id": fkVehicleId,
        "updated_at": updatedAt?.toIso8601String(),
        "height": height,
        "height_including_roof_rails": heightIncludingRoofRails,
        "luggage_capacity_seatsdown": luggageCapacitySeatsdown,
        "width_including_mirrors": widthIncludingMirrors,
        "max_loading_weight": maxLoadingWeight,
        "number_of_seats": numberOfSeats,
        "created_at": createdAt?.toIso8601String(),
        "id": id,
        "max_length": maxLength,
        "wheel_base": wheelBase,
        "luggage_capacity_seatsup": luggageCapacitySeatsup,
        "width": width,
        "gross_vehicle_weight": grossVehicleWeight,
        "max_roof_load": maxRoofLoad,
      };
}

class Engine {
  int? fkVehicleId;
  DateTime? updatedAt;
  dynamic fuelTankCapacity;
  dynamic maxTowingWeightUnbraked;
  dynamic turningCircleKerbToKerb;
  DateTime? createdAt;
  int? id;
  dynamic maxTowingWeightBraked;
  dynamic minimumKerbweight;

  Engine({
    this.fkVehicleId,
    this.updatedAt,
    this.fuelTankCapacity,
    this.maxTowingWeightUnbraked,
    this.turningCircleKerbToKerb,
    this.createdAt,
    this.id,
    this.maxTowingWeightBraked,
    this.minimumKerbweight,
  });

  factory Engine.fromJson(Map<String, dynamic> json) => Engine(
        fkVehicleId: json["fk_vehicle_id"],
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        fuelTankCapacity: json["fuel_tank_capacity"],
        maxTowingWeightUnbraked: json["max_towing_weight_unbraked"],
        turningCircleKerbToKerb: json["turning_circle_kerb_to_kerb"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        id: json["id"],
        maxTowingWeightBraked: json["max_towing_weight_braked"],
        minimumKerbweight: json["minimum_kerbweight"],
      );

  Map<String, dynamic> toJson() => {
        "fk_vehicle_id": fkVehicleId,
        "updated_at": updatedAt?.toIso8601String(),
        "fuel_tank_capacity": fuelTankCapacity,
        "max_towing_weight_unbraked": maxTowingWeightUnbraked,
        "turning_circle_kerb_to_kerb": turningCircleKerbToKerb,
        "created_at": createdAt?.toIso8601String(),
        "id": id,
        "max_towing_weight_braked": maxTowingWeightBraked,
        "minimum_kerbweight": minimumKerbweight,
      };
}

class Exterior {
  DateTime? updatedAt;
  int? fkVehicleId;
  bool? alloyRims;
  bool? electricPump;
  bool? craneStep;
  bool? rearWiper;
  int? id;
  DateTime? createdAt;
  bool? fogLightsFront;
  bool? highDeck;
  bool? justlow;
  bool? hidHeadlights;
  bool? sunVisor;

  Exterior({
    this.updatedAt,
    this.fkVehicleId,
    this.alloyRims,
    this.electricPump,
    this.craneStep,
    this.rearWiper,
    this.id,
    this.createdAt,
    this.fogLightsFront,
    this.highDeck,
    this.justlow,
    this.hidHeadlights,
    this.sunVisor,
  });

  factory Exterior.fromJson(Map<String, dynamic> json) => Exterior(
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        fkVehicleId: json["fk_vehicle_id"],
        alloyRims: json["alloy_rims"],
        electricPump: json["electric_pump"],
        craneStep: json["crane_step"],
        rearWiper: json["rear_wiper"],
        id: json["id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        fogLightsFront: json["fog_lights_front"],
        highDeck: json["high_deck"],
        justlow: json["justlow"],
        hidHeadlights: json["HID_headlights"],
        sunVisor: json["sun_visor"],
      );

  Map<String, dynamic> toJson() => {
        "updated_at": updatedAt?.toIso8601String(),
        "fk_vehicle_id": fkVehicleId,
        "alloy_rims": alloyRims,
        "electric_pump": electricPump,
        "crane_step": craneStep,
        "rear_wiper": rearWiper,
        "id": id,
        "created_at": createdAt?.toIso8601String(),
        "fog_lights_front": fogLightsFront,
        "high_deck": highDeck,
        "justlow": justlow,
        "HID_headlights": hidHeadlights,
        "sun_visor": sunVisor,
      };
}

class Interior {
  int? id;
  bool? airConditioner;
  DateTime? createdAt;
  bool? heater;
  bool? powerWindows;
  bool? leatherSeats;
  bool? headlightLeveler;
  bool? climateControl;
  bool? rearSeatArmrestCentreConsole;
  DateTime? updatedAt;
  int? fkVehicleId;
  bool? digitalOdometer;
  bool? sunroof;
  bool? tvLed;
  bool? tachometer;
  bool? amFmRadio;
  bool? armrestConsole;

  Interior({
    this.id,
    this.airConditioner,
    this.createdAt,
    this.heater,
    this.powerWindows,
    this.leatherSeats,
    this.headlightLeveler,
    this.climateControl,
    this.rearSeatArmrestCentreConsole,
    this.updatedAt,
    this.fkVehicleId,
    this.digitalOdometer,
    this.sunroof,
    this.tvLed,
    this.tachometer,
    this.amFmRadio,
    this.armrestConsole,
  });

  factory Interior.fromJson(Map<String, dynamic> json) => Interior(
        id: json["id"],
        airConditioner: json["air_conditioner"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        heater: json["heater"],
        powerWindows: json["power_windows"],
        leatherSeats: json["leather_seats"],
        headlightLeveler: json["headlight_leveler"],
        climateControl: json["climate_control"],
        rearSeatArmrestCentreConsole: json["rear_seat_armrest_centre_console"],
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        fkVehicleId: json["fk_vehicle_id"],
        digitalOdometer: json["digital_odometer"],
        sunroof: json["sunroof"],
        tvLed: json["tv_led"],
        tachometer: json["tachometer"],
        amFmRadio: json["am_fm_radio"],
        armrestConsole: json["armrest_console"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "air_conditioner": airConditioner,
        "created_at": createdAt?.toIso8601String(),
        "heater": heater,
        "power_windows": powerWindows,
        "leather_seats": leatherSeats,
        "headlight_leveler": headlightLeveler,
        "climate_control": climateControl,
        "rear_seat_armrest_centre_console": rearSeatArmrestCentreConsole,
        "updated_at": updatedAt?.toIso8601String(),
        "fk_vehicle_id": fkVehicleId,
        "digital_odometer": digitalOdometer,
        "sunroof": sunroof,
        "tv_led": tvLed,
        "tachometer": tachometer,
        "am_fm_radio": amFmRadio,
        "armrest_console": armrestConsole,
      };
}

class Safety {
  DateTime? updatedAt;
  int? fkVehicleId;
  bool? childSafetyLock;
  bool? passangerAirBag;
  bool? rearSeatAirBag;
  bool? powerDoorLock;
  bool? oilBrakes;
  bool? toolKit;
  bool? footParkingBrake;
  bool? absAntilockBraking;
  DateTime? createdAt;
  int? id;
  bool? driverAirBag;
  bool? curtainAirBag;
  bool? tractionControl;
  bool? airBrakes;
  bool? stepneyTyre;

  Safety({
    this.updatedAt,
    this.fkVehicleId,
    this.childSafetyLock,
    this.passangerAirBag,
    this.rearSeatAirBag,
    this.powerDoorLock,
    this.oilBrakes,
    this.toolKit,
    this.footParkingBrake,
    this.absAntilockBraking,
    this.createdAt,
    this.id,
    this.driverAirBag,
    this.curtainAirBag,
    this.tractionControl,
    this.airBrakes,
    this.stepneyTyre,
  });

  factory Safety.fromJson(Map<String, dynamic> json) => Safety(
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        fkVehicleId: json["fk_vehicle_id"],
        childSafetyLock: json["child_safety_lock"],
        passangerAirBag: json["passanger_air_bag"],
        rearSeatAirBag: json["rear_seat_air_bag"],
        powerDoorLock: json["power_door_lock"],
        oilBrakes: json["oil_brakes"],
        toolKit: json["tool_kit"],
        footParkingBrake: json["foot_parking_brake"],
        absAntilockBraking: json["abs_antilock_braking"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        id: json["id"],
        driverAirBag: json["driver_air_bag"],
        curtainAirBag: json["curtain_air_bag"],
        tractionControl: json["traction_control"],
        airBrakes: json["air_brakes"],
        stepneyTyre: json["stepney_tyre"],
      );

  Map<String, dynamic> toJson() => {
        "updated_at": updatedAt?.toIso8601String(),
        "fk_vehicle_id": fkVehicleId,
        "child_safety_lock": childSafetyLock,
        "passanger_air_bag": passangerAirBag,
        "rear_seat_air_bag": rearSeatAirBag,
        "power_door_lock": powerDoorLock,
        "oil_brakes": oilBrakes,
        "tool_kit": toolKit,
        "foot_parking_brake": footParkingBrake,
        "abs_antilock_braking": absAntilockBraking,
        "created_at": createdAt?.toIso8601String(),
        "id": id,
        "driver_air_bag": driverAirBag,
        "curtain_air_bag": curtainAirBag,
        "traction_control": tractionControl,
        "air_brakes": airBrakes,
        "stepney_tyre": stepneyTyre,
      };
}
