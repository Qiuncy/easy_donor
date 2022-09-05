import 'package:easy_doner/donations/donationModel.dart';
import "package:http/http.dart" as http;
class DonationServices {
  static var client = http.Client();


   static Future<List<Donations>?> fetchDonations() async {
    var response = await client.get(Uri.parse("https://easydonor.mrndemo.co.za/api/donor/donations"),
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer 72|FZT5NMNEHZ9NkJ3Ks23iLyGSlyX7MbJwUQOWWPFa',
      });

      if(response.statusCode == 200){
          var jsonString = response.body;
          return donationsFromJson(jsonString);

      }else{
        return null;
      }
  }

  static Future<String ?> addDonation(String item, String date, String description, int categoryID, int institutionID) async {
    
    // String token = (type == 'Beneficiary') ? 'beficiarytoke' : 'Bearer 72|FZT5NMNEHZ9NkJ3Ks23iLyGSlyX7MbJwUQOWWPFa';
    var response = await client.post(Uri.parse("https://easydonor.mrndemo.co.za/api/donor/donate"),
    headers: {
      'Accept': 'application/json',
      'Authorization': 'Bearer 72|FZT5NMNEHZ9NkJ3Ks23iLyGSlyX7MbJwUQOWWPFa',
      }, 
      body: {"item": item , "description": description, "category_id" : categoryID, "institution_id" : institutionID  },
      );

      
      if(response.statusCode == 200){
       
          return "Success";
       
      }else{
        return response.toString();
      }
  }

}