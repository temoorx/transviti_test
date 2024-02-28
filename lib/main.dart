import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:transviti_test/src/home/provider/home_provider.dart';

import 'src/app_router.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
  GetIt.I.registerSingleton<AppRouter>(AppRouter());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = GetIt.I<AppRouter>();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context) => ProductProvider()..fetchProducts()),
      ],
      child: MaterialApp.router(
        routerConfig: appRouter.config(),
        title: 'Transviti Test',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
      ),
    );
  }
}
