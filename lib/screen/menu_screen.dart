import '/widgets/background.dart';
import 'package:flutter/material.dart';
import '/widgets/widgets.dart';
import 'package:provider/provider.dart';
import '/providers/providers.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 250,
              ),
              CardContainer(
                  child: Column(children: [
                const SizedBox(height: 30),
                Text(
                  'Menu - Menu',
                  style: Theme.of(context).textTheme.headline5,
                ),
                const SizedBox(height: 40),
                ChangeNotifierProvider(
                  create: (_) => MenuFormProvider(),
                  child: MenuForm(),
                ),
                const SizedBox(height: 50),
              ])),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuForm extends StatelessWidget {
  const MenuForm({super.key});

  @override
  Widget build(BuildContext context) {
    final MenuForm = Provider.of<MenuFormProvider>(context);
    return Container(
      child: Form(
        key: MenuForm.formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(children: [
          MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            disabledColor: Colors.grey,
            color: Colors.blue,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
              child: Text(
                '*Proveedores*',
                style: const TextStyle(color: Colors.white),
              ),
            ),
            elevation: 0,
            onPressed: MenuForm.isLoading
                ? null
                : () async {
                    FocusScope.of(context).unfocus();
                    MenuForm.isLoading = true;
                    Navigator.pushNamed(context, 'listprov');
                    MenuForm.isLoading = false;
                  },
          ),
          MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            disabledColor: Colors.grey,
            color: Colors.blue,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
              child: Text(
                '*Categorias*',
                style: const TextStyle(color: Colors.white),
              ),
            ),
            elevation: 0,
            onPressed: MenuForm.isLoading
                ? null
                : () async {
                    FocusScope.of(context).unfocus();
                    MenuForm.isLoading = true;
                      Navigator.pushNamed(context, 'listcat');
                    MenuForm.isLoading = false;
                  },
          ),          
          MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            disabledColor: Colors.grey,
            color: Colors.blue,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
              child: Text(
                '*Productos*',
                style: const TextStyle(color: Colors.white),
              ),
            ),
            elevation: 0,
            onPressed: MenuForm.isLoading
                ? null
                : () async {
                    FocusScope.of(context).unfocus();
                    MenuForm.isLoading = true;
                    Navigator.pushNamed(context, 'listprod');
                    MenuForm.isLoading = false;
                  },
          )          
        ]),
      ),
    );
  }
}
