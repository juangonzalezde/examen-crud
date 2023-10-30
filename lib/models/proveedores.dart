import 'dart:convert';

class Proveedor {
  Proveedor({
    required this.listado,
  });

  List<Listadop> listado;

  factory Proveedor.fromJson(String str) => Proveedor.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Proveedor.fromMap(Map<String, dynamic> json) => Proveedor(
          listado: 
          List<Listadop>.from(json["Proveedores Listado"].map((x) => Listadop.fromMap(x))),
  );


  Map<String, dynamic> toMap() => {
        "Proveedores Listado": List<dynamic>.from(listado.map((x) => x.toMap())),
      };
}

class Listadop {
  Listadop({
    required this.proveedorId,
    required this.proveedorName,
    required this.proveedorLastName,
    required this.proveedorEmail,
    required this.proveedorState,
  });

  int proveedorId;
  String proveedorName;
  String proveedorLastName;
  String proveedorEmail;
  String proveedorState;

  factory Listadop.fromJson(String str) => Listadop.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Listadop.fromMap(Map<String, dynamic> json) => Listadop(
        proveedorId: json["providerid"],
        proveedorName: json["provider_name"],
        proveedorLastName: json["provider_last_name"],
        proveedorEmail: json["provider_mail"],
        proveedorState: json["provider_state"],
      );

  Map<String, dynamic> toMap() => {
        "providerid": proveedorId,
        "provider_name": proveedorName,
        "provider_last_name": proveedorLastName,
        "provider_mail": proveedorEmail,
        "provider_state": proveedorState,
      };

  Listadop copy() => Listadop(
      proveedorId: proveedorId,
      proveedorName: proveedorName,
      proveedorLastName: proveedorLastName,
      proveedorEmail: proveedorEmail,
      proveedorState: proveedorState);
}
