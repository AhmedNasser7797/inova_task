import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inova_task/data/data_services/products_data_services.dart';
import 'package:inova_task/presentation/screens/products_screen.dart';
import 'package:inova_task/vars.dart';

import 'buisniss_logic/characters_cubit.dart';
import 'data/repositories/characters_repository.dart';

class AppRouter {
  late ProductsRepository productsRepository;
  late ProductsCubit productsCubit;

  AppRouter() {
    productsRepository = ProductsRepository(ProductsDataServices());
    productsCubit = ProductsCubit(productsRepository);
  }
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case productsScreenRoute:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (_) => productsCubit, child: const ProductsScreen()));
    }
    return null;
  }
}
