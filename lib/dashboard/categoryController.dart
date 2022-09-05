
import 'package:easy_doner/services/remote_services.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController{
  var categoryList = [].obs;
  var allCategoryList = [].obs;

  @override
  void onInit() {
    fetchCategory();
    fetchAllCategories();
    super.onInit();
  }
  
  void fetchCategory() async {
    var categories = await RemoteServices.fetchCategory();

    if(categories != null){
      categoryList.value = categories;
    }
  }

  void fetchAllCategories() async {
    var categories = await RemoteServices.fetchAllCategory();

    if(categories != null){
      allCategoryList.value = categories;
    }
  }

  void addCategory(String categoryID) async {
   
    await RemoteServices.addCategory('Donor',categoryID);

  }
}