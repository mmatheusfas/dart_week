import 'package:dw9_delivery_app/app/pages/product_details/product_detail_controller.dart';
import 'package:dw9_delivery_app/app/pages/product_details/product_details_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetailsRouter {
  ProductDetailsRouter._();

  static Widget get page => MultiProvider(
        providers: [
          Provider(
            create: (context) => ProductDetailController(),
          )
        ],
        builder: (context, child) {
          final args = ModalRoute.of(context)!.settings.arguments
              as Map<String, dynamic>;

          //Recebendo o product de delivery_product_tile pelo args
          return ProductDetailsPage(
            product: args['product'],
            order: args['order'],
          );
        },
      );
}
