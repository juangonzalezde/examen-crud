import 'package:flutter/material.dart';
import '/models/proveedores.dart';
import '/services/proveedor_service.dart';
import '/widgets/proveedor_card.dart';
import 'package:provider/provider.dart';
import '/screen/screen.dart';


class ListProveedorScreen extends StatelessWidget {
  const ListProveedorScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final proveedorService = Provider.of<ProveedorService>(context);
    if (proveedorService.isLoading) return LoadingScreen();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Proveedores Disponibles'),
      ),
      body: ListView.builder(
        itemCount: proveedorService.proveedores.length,
        itemBuilder: (BuildContext context, index) => GestureDetector(
          onTap: () {
            proveedorService.SelectProveedor =
                proveedorService.proveedores[index].copy();
            Navigator.pushNamed(context, 'editprov');    // incluir en routes
          },
          child: ProveedorCard(proveedor: proveedorService.proveedores[index]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          proveedorService.SelectProveedor = Listadop(
              proveedorId: 0,
              proveedorName: '',
              proveedorLastName: '',
              proveedorEmail: '',
              proveedorState: '');
          Navigator.pushNamed(context, 'editprov');
        },
      ),
    );
  }
}
