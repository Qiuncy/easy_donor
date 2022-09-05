import 'package:easy_doner/dashboard/instituationsModel.dart';
import "package:http/http.dart" as http;
import '../dashboard/categoryModel.dart';
import '../login/loginModel.dart';
class RemoteServices {
  static var client = http.Client();

  static Future<List<Category>?> fetchCategory() async {
    var response = await client.get(Uri.parse("https://easydonor.mrndemo.co.za/api/donor/interests"),
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer 72|FZT5NMNEHZ9NkJ3Ks23iLyGSlyX7MbJwUQOWWPFa',
      });

      if(response.statusCode == 200){
          var jsonString = response.body;
          return categoryFromJson(jsonString);

      }else{
        return null;
      }
  }


static Future<List<Category>?> fetchAllCategory() async {
    var response = await client.get(Uri.parse("https://easydonor.mrndemo.co.za/api/fetch-category"),
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer 72|FZT5NMNEHZ9NkJ3Ks23iLyGSlyX7MbJwUQOWWPFa',
      });

      if(response.statusCode == 200){
          var jsonString = response.body;
          return categoryFromJson(jsonString);

      }else{
        return null;
      }
  }

  static Future<String ?> addCategory(String type, String categoryID) async {
    
    // String token = (type == 'Beneficiary') ? 'beficiarytoke' : 'Bearer 72|FZT5NMNEHZ9NkJ3Ks23iLyGSlyX7MbJwUQOWWPFa';
    var response = await client.post(Uri.parse("https://easydonor.mrndemo.co.za/api/submit-category"),
    headers: {
      'Accept': 'application/json',
      'Authorization': 'Bearer 72|FZT5NMNEHZ9NkJ3Ks23iLyGSlyX7MbJwUQOWWPFa',
      }, 
      body: {"category_id": categoryID },
      );
      
      if(response.statusCode == 200){
       
          return "Success";
       
      }else{
        return response.toString();
      }
  }

    static Future<List<Institution>?> fetchInstituation() async {
    var response = await client.get(Uri.parse("https://easydonor.mrndemo.co.za/api/donor/institutions"),
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer 72|FZT5NMNEHZ9NkJ3Ks23iLyGSlyX7MbJwUQOWWPFa',
      });

      if(response.statusCode == 200){
          var jsonString = response.body;
          return institutionFromJson(jsonString);

      }else{
        return null;
      }
  }

  static Future<User?> fetchUser(String email, String password) async {
    var response = await client.post(Uri.parse("https://easydonor.mrndemo.co.za/api/login"),
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
      },
      body: {"email": email, "password" : password
      });

      if(response.statusCode == 200){
          var jsonString = response.body;
          return userFromJson(jsonString);

      }else{
        return null;
      }
  }

  
}