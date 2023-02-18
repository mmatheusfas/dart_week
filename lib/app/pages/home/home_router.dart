import 'package:dw9_delivery_app/app/core/rest_client/custom_dio.dart';
import 'package:dw9_delivery_app/app/pages/home/home_controller.dart';
import 'package:dw9_delivery_app/app/repositories/products/products_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_page.dart';

class HomeRouter {
  HomeRouter._();

  static Widget get page => MultiProvider(
        providers: [
          Provider(
            create: (context) =>
                ProductRepositoryImpl(dio: context.read<CustomDio>()),
          ),
          Provider(
            create: (context) =>
                HomeController(context.read<ProductRepositoryImpl>()),
          ),
        ],
        child: const HomePage(),
      );
}
