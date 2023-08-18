class SaleInfo {
  SaleInfo({
      this.country, 
      this.saleability, 
      this.isEbook,});

  SaleInfo.fromJson(dynamic json) {
    country = json['country'];
    saleability = json['saleability'];
    isEbook = json['isEbook'];
  }
  String? country;
  String? saleability;
  bool? isEbook;



}