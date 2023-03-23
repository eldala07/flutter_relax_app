import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui/pages/home/home.dart';
import 'package:ui/pages/login/login.dart';
import 'package:ui/pages/recoverPassword/recover_password.dart';

import 'pages/register/register.dart';

var routes = () {
  return <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) =>
          const MyHomeScreen(title: 'uxitude - Relax app'),
    ),
    GoRoute(
      path: '/login',
      builder: (BuildContext context, GoRouterState state) =>
          const LoginScreen(),
    ),
    GoRoute(
      path: '/register',
      builder: (BuildContext context, GoRouterState state) =>
          const RegisterScreen(),
    ),
    GoRoute(
      path: '/recover',
      builder: (BuildContext context, GoRouterState state) =>
          const RecoverPasswordScreen(),
    ),
  ];
};
