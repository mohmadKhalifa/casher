class CategoriesModel {
  String? categoriesId;
  String? categoriesName;
  String? categoriesUsers;

  CategoriesModel(
      {this.categoriesId, this.categoriesName, this.categoriesUsers});

  CategoriesModel.fromJson(Map<String, dynamic> json) {
    categoriesId = json['categories_id'];
    categoriesName = json['categories_name'];
    categoriesUsers = json['categories_users'];
  }
}
