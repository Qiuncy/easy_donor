import 'package:easy_doner/services/remote_services.dart';
import 'package:get/get.dart';

class InstituationController extends GetxController{
  var instituationList = [].obs;
  
  void fetchInstituation() async {
    var instituation = await RemoteServices.fetchInstituation();

    
    if(instituation != null){
      instituationList.value = instituation;
    }
  }
}