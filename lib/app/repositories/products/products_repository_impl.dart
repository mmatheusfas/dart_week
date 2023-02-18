import 'package:dio/dio.dart';
import 'package:dw9_delivery_app/app/core/exceptions/repository_exception.dart';
import 'package:dw9_delivery_app/app/core/rest_client/custom_dio.dart';
import 'package:dw9_delivery_app/app/models/product_model.dart';
import 'package:dw9_delivery_app/app/repositories/products/products_repository.dart';

class ProductRepositoryImpl implements ProductsRepository {
  final CustomDio dio;

  ProductRepositoryImpl({
    required this.dio,
  });

  @override
  Future<List<ProductModel>> getAllProducts() async {
    try {
      final result = await dio.unauth().get('/products');

      return result.data
          .map<ProductModel>((p) => ProductModel.fromMap(p))
          .toList();
    } on DioError catch (e) {
      //log('Erro ao buscar produtos', error: e, stackTrace: s);
      throw RepositoryException(message: e.toString());
    }
  }
}
