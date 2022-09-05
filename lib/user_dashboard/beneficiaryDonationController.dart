import 'package:easy_doner/services/remote_services.dart';
import 'package:get/get.dart';

class BeneficiaryDonationController extends GetxController{
  var donationList = [].obs;

  @override
  void onInit() {
    fetchBeneficiaryDonation();
    super.onInit();
  }
  
  void fetchBeneficiaryDonation() async {
    var donation = await RemoteServices.fetchBeneficiaryDonation();

      print(donation);
    if(donation != null){
      donationList.value = donation;
    }
  }
  
}