import 'package:easy_doner/services/donation_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class DonationsController extends GetxController{
  var donationList = [].obs;

  TextEditingController item =  TextEditingController();
  TextEditingController date =  TextEditingController();
  TextEditingController description =  TextEditingController();

  @override
  void onInit() {
    fetchDonations();
    super.onInit();
  }
  
  void fetchDonations() async {
    var donations = await DonationServices.fetchDonations();
    if(donations != null){
      donationList.value = donations;
    }

  }
  void addDonation() async {
   await DonationServices.addDonation(item.text, date.text, description.text, 4, 6);
   item.text = "";
   date.text = "";
   description.text = "";
  }
}