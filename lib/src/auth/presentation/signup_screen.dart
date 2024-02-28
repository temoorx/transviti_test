import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transviti_test/src/app_router.dart';

@RoutePage()
class SingUpScreen extends StatelessWidget {
  const SingUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('SingUpScreen'),
            CupertinoButton(
                child: const Text('Go to Home'),
                onPressed: () {
                  context.router.push(const HomeRoute());
                }),
          ],
        ),
      ),
    );
  }
}
