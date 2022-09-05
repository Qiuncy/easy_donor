import 'package:easy_doner/services/remote_services.dart';
import 'package:get/get.dart';

class BeneficiaryInstitutionController extends GetxController{
  var institutionList = [].obs;

  @override
  void onInit() {
    fetchBeneficiaryInstitution();
    super.onInit();
  }
  
  void fetchBeneficiaryInstitution() async {
    var institution = await RemoteServices.fetchBeneficiaryInstitution();

    if(institution != null){
      institutionList.value = institution;
    }
  }
  void addInstitution(String id) async {
     await RemoteServices.addInstitution(id);

  }
}