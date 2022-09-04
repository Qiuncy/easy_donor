import 'package:easy_doner/services/remote_services.dart';
import 'package:get/get.dart';

class BeneficiaryInstitutionController extends GetxController{
  var institutionList = [].obs;
  
  void fetchBeneficiaryInstitution() async {
    var institution = await RemoteServices.fetchBeneficiaryInstitution();

    if(institution != null){
      institutionList.value = institution;
    }
  }
}