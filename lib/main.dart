import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../app/translations/app_translations.dart';

import 'app/bindings/home_bindings.dart';
import 'app/routes/app_pages.dart';
import 'app/routes/app_routes.dart';
import 'app/ui/android/home/home_page.dart';
import 'app/ui/theme/app_theme.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.initial, //Rota inicial
    initialBinding: HomeBinding(), // dependencias iniciais
    theme: appThemeData, //Tema personalizado app
    defaultTransition: Transition.fade, // Transição de telas padrão
    getPages: AppPages
        .routes, // Seu array de navegação contendo as rotas e suas pages
    home: const HomePage(), // Page inicial
    locale: const Locale('pt', 'BR'), // Língua padrão
    translationsKeys:
        AppTranslation.translations, // Suas chaves contendo as traduções<map>
  ));
}
