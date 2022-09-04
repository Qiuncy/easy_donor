
import 'package:easy_doner/services/remote_services.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController{
  var categoryList = [].obs;
  
  void fetchCategory() async {
    var categories = await RemoteServices.fetchCategory();

    if(categories != null){
      categoryList.value = categories;
    }
  }
}