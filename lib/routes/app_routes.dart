import '/screen/menu_screen.dart';
import 'package:flutter/material.dart';
import '/screen/screen.dart';

class AppRoutes {
  static const initialRoute = 'login';  // cambiar a login para iniciar   // menu para mantener
  static Map<String, Widget Function(BuildContext)> routes = {
    'login': (BuildContext context) => const LoginScreen(),
    'listprod': (BuildContext context) => const ListProductScreen(),
    'edit': (BuildContext context) => const EditProductScreen(),

    'listprov': (BuildContext context) => const ListProveedorScreen(),
    'editprov': (BuildContext context) => const EditProveedorScreen(), 

    'listcat': (BuildContext context) => const ListCategoryScreen(),
    'editcat': (BuildContext context) => const EditCategoryScreen(),

    'add_user': (BuildContext context) => const RegisterUserScreen(),
    'menu': (BuildContext context) => const MenuScreen(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const ErrorScreen(),
    );
  }
}
