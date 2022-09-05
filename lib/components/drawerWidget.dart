
import 'package:easy_doner/index.dart';
import 'package:easy_doner/login/loginController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerWidget extends StatelessWidget {
 
  const DrawerWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Easy Donor'),
            ),
            ListTile(
              title: const Text('Dashboard'),
              onTap: () {
                if(LoginController.type == "Donor"){
                Get.to(()=> DashboardWidget());
                }else{
                  Get.to(()=> UserDashboardWidget());
                }
              },
            ),
            ListTile(
              title: const Text('Donations'),
              onTap: () {
                Get.to(()=> DonationsWidget());
              },
            ),
            ListTile(
              title: const Text('Browse'),
              onTap: () {
                  Get.to(()=> MapOrganisationWidget()); 
              },
            ),
            ListTile(
              title: const Text('logout'),
              onTap: () {
                LoginController.accessToken = false;
                  Get.to(()=> HomePageWidget()); 
              },
            ),
            
           
          ],
        ),
      );
  }
}