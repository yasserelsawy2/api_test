import 'package:api_test/features/productscreen/data/model.dart';
import 'package:api_test/features/productscreen/data/remote.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit() : super(ProductsInitial());

  Repo repo = Repo();
  List<Products> productlist = [];

  Future getproductlist() async {
    emit(LoadingState());
    List<dynamic> datalist = await repo.getdata();
    productlist = datalist.map((e) => Products.fromjson(e)).toList();
    emit(SuccessState());
    print(productlist.length);
  }
}
