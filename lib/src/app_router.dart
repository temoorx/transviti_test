import 'package:auto_route/auto_route.dart';

import 'auth/presentation/signup_screen.dart';
import 'home/presentation/home_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SingUpRoute.page, path: '/sing-up', initial: true),
        AutoRoute(page: HomeRoute.page, path: '/home'),
      ];
}
