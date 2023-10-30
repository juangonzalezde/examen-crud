import 'dart:convert';

class Category {
  Category({
    required this.listadocat, 
  });

  List<Listadocat> listadocat;

  factory Category.fromJson(String str) => Category.fromMap(json.decode(str));
  String toJson() => json.encode(toMap());

  factory Category.fromMap(Map<String, dynamic> json) => Category(
     listadocat:
              List<Listadocat>.from(json["Listado Categorias"].map((x) => Listadocat.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "Listado Categorias": List<dynamic>.from(listadocat.map((x) => x.toMap())),
      };
    
}

class Listadocat {
  int categoryId;
  String categoryName;
  String categoryState;

  Listadocat({
    required this.categoryId,
    required this.categoryName,
    required this.categoryState,
  });

  factory Listadocat.fromJson(String str) => Listadocat.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Listadocat.fromMap(Map<String, dynamic> json) => Listadocat(
        categoryId: json["category_id"],
        categoryName: json["category_name"],
        categoryState: json["category_state"],
      );

  Map<String, dynamic> toMap() => {
        "category_id": categoryId,
        "category_name": categoryName,
        "category_state": categoryState,
      };

  Listadocat copy() => Listadocat(
      categoryId: categoryId,
      categoryName: categoryName,
      categoryState: categoryState);
}
