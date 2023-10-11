import 'package:dw_barbershop/src/features/splash/splash_page.dart';
import 'package:flutter/material.dart';

class BarbershopApp extends StatelessWidget {

  const BarbershopApp({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return MaterialApp(
        title: 'DW Barbershop',
        routes: {
          '/': (_) => SplashPage()
        },
       );
  }
}