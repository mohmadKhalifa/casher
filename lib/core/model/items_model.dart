class ItemsModel {
  String? itemsId;
  String? itemsName;
  String? itemsPrice;
  String? itemsCategories;
  String? itemsUser;

  ItemsModel(
      {this.itemsId,
      this.itemsName,
      this.itemsPrice,
      this.itemsCategories,
      this.itemsUser});

  ItemsModel.fromJson(Map<String, dynamic> json) {
    itemsId = json['items_id'];
    itemsName = json['items_name'];
    itemsPrice = json['items_price'];
    itemsCategories = json['items_categories'];
    itemsUser = json['items_user'];
  }
}
