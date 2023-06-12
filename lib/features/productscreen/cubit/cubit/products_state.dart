part of 'products_cubit.dart';

@immutable
abstract class ProductsState {}

class ProductsInitial extends ProductsState {}

class SuccessState extends ProductsState {}

class LoadingState extends ProductsState {}
