import 'package:asyncstate/asyncstate.dart';
import 'package:dw_barbershop/src/core/ui/barbershopp_theme.dart';
import 'package:dw_barbershop/src/core/ui/widgets/barbershop_loader.dart';
import 'package:dw_barbershop/src/features/auth/login/login_page.dart';
import 'package:dw_barbershop/src/features/splash/splash_page.dart';
import 'package:flutter/material.dart';

class BarbershopApp extends StatelessWidget {
  const BarbershopApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AsyncStateBuilder(
      customLoader: const BarbershopLoader(),
      builder: (AsyncNavigatorObserver) {
        return MaterialApp(
          title: 'DW Barbershop',
          theme: BarbershoppTheme.themeData,
          navigatorObservers: [AsyncNavigatorObserver],
          routes: {
            '/': (_) => const SplashPage(),
            '/auth/login': (_) => const LoginPage(),
            '/home/adm': (_) => const Text('Adm'),
            '/home/employee': (_) => const Text('Employee'),
          },
        );
      },
    );
  }
}
