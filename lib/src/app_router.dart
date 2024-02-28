import 'package:auto_route/auto_route.dart';
import 'package:transviti_test/src/auth/presentation/signin_screen.dart';

import 'auth/presentation/signup_screen.dart';
import 'home/presentation/home_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SingUpRoute.page, path: '/sign-up', initial: true),
        AutoRoute(page: SignInRoute.page, path: '/sign-in',),
        AutoRoute(page: HomeRoute.page, path: '/home'),
      ];
}
