class ItemModel{

  String? name;
  String? image;
  String? categoryName;
  bool? isFavourite;
  double? price;
  double? rating;



  ItemModel.fromJson(Map<String , dynamic>json){
    name = json['name'];
    image = json['image'];
    categoryName = json['categoryName'];
    isFavourite = json['isFavourite'];
    price = json['price'];
    rating = json['rating'];
  }

}