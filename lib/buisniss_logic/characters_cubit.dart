import 'package:bloc/bloc.dart';
import 'package:inova_task/data/model/product_model.dart';
import 'package:meta/meta.dart';

import '../data/repositories/characters_repository.dart';

part 'characters_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  final ProductsRepository productsRepository;
  ProductsCubit(this.productsRepository) : super(ProductsInitial());
  List<ProductModel> products = [];
  Future<List<ProductModel>> getAllCharacters() async {
    await productsRepository.getAllCharacters().then((products) {
      emit(ProductsLoaded(products));
      this.products = products;
    });
    return products;
  }
}
