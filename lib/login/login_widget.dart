import 'package:easy_doner/dashboard/dashboard_widget.dart';
import 'package:easy_doner/dashboard/instituationsController.dart';
import 'package:easy_doner/index.dart';
import 'package:easy_doner/login/loginController.dart';
import 'package:easy_doner/user_dashboard/user_donations_widget.dart';
import 'package:get/get.dart';

import '../dashboard/categoryController.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {

  final scaffoldKey = GlobalKey<ScaffoldState>();

  
  final LoginController c = Get.put(LoginController());
  final CategoryController category = Get.put(CategoryController());
  final InstituationController instituation= Get.put(InstituationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF652D6A),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 1.1,
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, 0.74),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.7,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).secondaryBackground,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(0),
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                child: Text(
                                  'LOGIN',
                                  style: FlutterFlowTheme.of(context)
                                      .title2
                                      .override(
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                              Expanded(
                                child: DefaultTabController(
                                  length: 1,
                                  initialIndex: 0,
                                  child: Column(
                                    children: [
                                      Padding(
                                              padding:
                                                  EdgeInsetsDirectional.fromSTEB(
                                                      10, 0, 10, 0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsetsDirectional
                                                        .fromSTEB(0, 10, 0, 0),
                                                    child: TextFormField(
                                                      controller: c.email,
                                                      autofocus: true,
                                                      obscureText: false,
                                                      decoration: InputDecoration(
                                                        labelText:
                                                            'ENTER YOUR EMAIL',
                                                        hintText: 'ENTER EMAIL',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText2,
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                            color:
                                                                Color(0xFFC9CCDB),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              const BorderRadius
                                                                  .only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    4.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    4.0),
                                                          ),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                            color:
                                                                Color(0xFFC9CCDB),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              const BorderRadius
                                                                  .only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    4.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    4.0),
                                                          ),
                                                        ),
                                                      ),
                                                      style: FlutterFlowTheme.of(
                                                              context)
                                                          .bodyText1
                                                          .override(
                                                            fontFamily:
                                                                'Montserrat',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                          ),
                                                      keyboardType: TextInputType
                                                          .emailAddress,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsetsDirectional
                                                        .fromSTEB(0, 10, 0, 0),
                                                    child: TextFormField(
                                                      controller: c.password,
                                                      autofocus: true,
                                                      obscureText: false,
                                                      decoration: InputDecoration(
                                                        labelText:
                                                            'ENTER YOUR PASSWORD',
                                                        hintText:
                                                            'ENTER PASSWORD',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText2,
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                            color:
                                                                Color(0xFFC9CCDB),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              const BorderRadius
                                                                  .only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    4.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    4.0),
                                                          ),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                            color:
                                                                Color(0xFFC9CCDB),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              const BorderRadius
                                                                  .only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    4.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    4.0),
                                                          ),
                                                        ),
                                                      ),
                                                      style: FlutterFlowTheme.of(
                                                              context)
                                                          .bodyText1
                                                          .override(
                                                            fontFamily:
                                                                'Montserrat',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                          ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsetsDirectional
                                                        .fromSTEB(20, 20, 20, 20),
                                                    child:InkWell(
                                                      onTap: () async {
                                                      
                                                          if(c.email.text == "donor@easydonor.org" && c.password.text == "12345"){
                                                            category.fetchCategory();
                                                            instituation.fetchInstituation();
                                                            LoginController.accessToken = true;
                                                             LoginController.type = "Donor";
                                                            Get.to(() => DashboardWidget());
                                                          }else if(c.email.text == "bene@easydonor.org" && c.password.text == "12345"){
                                                            LoginController.accessToken = true;
                                                            LoginController.type = "Beneficiary";
                                                            Get.to(() => UserDashboardWidget());
                                                          }else{
                                                            Get.snackbar(
                                                            "Error",
                                                            "Invalid login details",
                                                            icon: Icon(Icons.person, color: Colors.white),
                                                            snackPosition: SnackPosition.BOTTOM,
                                                              
                                                            );
                                                             
                                                          }
                                                      },

                                                      child:  Container(
                                                      width: double.infinity,
                                                      height: 50,
                                                      decoration: BoxDecoration(
                                                        gradient: LinearGradient(
                                                          colors: [
                                                            Color(0xFF4BD4C0),
                                                            Color(0xFF3FA9A0)
                                                          ],
                                                          stops: [0, 1],
                                                          begin:
                                                              AlignmentDirectional(
                                                                  0, -1),
                                                          end:
                                                              AlignmentDirectional(
                                                                  0, 1),
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                50),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          Text(
                                                            'LOGIN',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .title2
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                      
                                                      ),
                                                    
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsetsDirectional
                                                        .fromSTEB(0, 20, 0, 0),
                                                    child: InkWell(
                                                      onTap: () async {
                                                            Get.to(() => RegisterWidget());
                                                           //Get.to(DashboardWidget());  
                                                      },
                                                      child: Text(
                                                        'DON\'T HAVE AN ACCOUNT?  REGISTER HERE',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'EASY DONOR',
                              style: FlutterFlowTheme.of(context).title1.override(
                                    fontFamily: 'Roboto',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    fontSize: 40,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
