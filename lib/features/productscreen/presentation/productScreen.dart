// ignore_for_file: must_be_immutable

import 'package:api_test/features/productscreen/cubit/cubit/products_cubit.dart';
import 'package:api_test/features/productscreen/data/remote.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({super.key});
  Repo repo = Repo();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<ProductsCubit, ProductsState>(
          listener: (context, state) {},
          builder: (context, state) {
            final cubit = BlocProvider.of<ProductsCubit>(context);
            // if (state is LoadingState) {
            //   const Scaffold(
            //     body: Center(
            //       child: CircularProgressIndicator(),
            //     ),
            //   );
            // }
            if (state is SuccessState) {
              return SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: ListView.separated(
                    shrinkWrap: true,
                    separatorBuilder: (context, index) => const SizedBox(
                          height: 10,
                        ),
                    itemCount: cubit.productlist.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text('${cubit.productlist[index].title}'),
                        subtitle:
                            Text('${cubit.productlist[index].description}'),
                        leading: Text('${cubit.productlist[index].price}\$'),
                      );
                    }),
              );
            } else {
              return const Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }
          }),
    );
  }
}
