import 'package:api_test/features/productscreen/cubit/cubit/products_cubit.dart';
import 'package:api_test/features/productscreen/presentation/productScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsCubit()..getproductlist(),
      child: MaterialApp(
        home: ProductScreen(),
      ),
    );
  }
}
