
import 'package:easy_doner/services/remote_services.dart';
import 'package:get/get.dart';

class BeneficiaryCategoryController extends GetxController{
  var categoryList = [].obs;
  
  void fetchCategory() async {
    var categories = await RemoteServices.fetchBeneficiaryCategory();

    if(categories != null){
      categoryList.value = categories;
    }
  }
}