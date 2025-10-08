class GetAllSparePartsDataModel {
  List<SparePartData>? data;

  GetAllSparePartsDataModel({this.data});

  GetAllSparePartsDataModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <SparePartData>[];
      json['data'].forEach((v) {
        data!.add(SparePartData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SparePartData {
  int? id;
  int? partId;
  String? name;
  String? make;
  String? model;
  String? category;
  String? status;
  String? description;
  String? conditionReport;
  dynamic price;
  double? soldPrice;
  double? recievedAmount;
  double? balanceAmount;
  bool? isClear;
  String? reportStatus;
  bool? showStatus;
  bool? auctionStatusCheck;
  String? feature;
  String? uploadedBy;
  String? supplier;
  String? soldBy;
  String? createdAt;
  String? updatedAt;
  List<String>? images;
  List<String>? videos;

  SparePartData({
    this.id,
    this.partId,
    this.name,
    this.make,
    this.model,
    this.category,
    this.status,
    this.description,
    this.conditionReport,
    this.price,
    this.soldPrice,
    this.recievedAmount,
    this.balanceAmount,
    this.isClear,
    this.reportStatus,
    this.showStatus,
    this.auctionStatusCheck,
    this.feature,
    this.uploadedBy,
    this.supplier,
    this.soldBy,
    this.createdAt,
    this.updatedAt,
    this.images,
    this.videos,
  });

  SparePartData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    partId = json['part_id'];
    name = json['name'];
    make = json['make'];
    model = json['model'];
    category = json['category'];
    status = json['status'];
    description = json['description'];
    conditionReport = json['condition_report'];
    price = json['price'];
    soldPrice = (json['sold_price'] ?? 0).toDouble();
    recievedAmount = (json['recieved_amount'] ?? 0).toDouble();
    balanceAmount = (json['balance_amount'] ?? 0).toDouble();
    isClear = json['is_clear'];
    reportStatus = json['report_status'];
    showStatus = json['show_status'];
    auctionStatusCheck = json['auction_status_check'];
    feature = json['feature'];
    uploadedBy = json['uploaded_by'];
    supplier = json['supplier'];
    soldBy = json['sold_by'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    images = json['images'] != null ? List<String>.from(json['images']) : [];
    videos = json['videos'] != null ? List<String>.from(json['videos']) : [];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['part_id'] = partId;
    data['name'] = name;
    data['make'] = make;
    data['model'] = model;
    data['category'] = category;
    data['status'] = status;
    data['description'] = description;
    data['condition_report'] = conditionReport;
    data['price'] = price;
    data['sold_price'] = soldPrice;
    data['recieved_amount'] = recievedAmount;
    data['balance_amount'] = balanceAmount;
    data['is_clear'] = isClear;
    data['report_status'] = reportStatus;
    data['show_status'] = showStatus;
    data['auction_status_check'] = auctionStatusCheck;
    data['feature'] = feature;
    data['uploaded_by'] = uploadedBy;
    data['supplier'] = supplier;
    data['sold_by'] = soldBy;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['images'] = images;
    data['videos'] = videos;
    return data;
  }
}
