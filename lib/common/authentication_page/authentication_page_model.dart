import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'authentication_page_widget.dart' show AuthenticationPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AuthenticationPageModel
    extends FlutterFlowModel<AuthenticationPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for firstname widget.
  FocusNode? firstnameFocusNode;
  TextEditingController? firstnameController;
  String? Function(BuildContext, String?)? firstnameControllerValidator;
  // State field(s) for lastname widget.
  FocusNode? lastnameFocusNode;
  TextEditingController? lastnameController;
  String? Function(BuildContext, String?)? lastnameControllerValidator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for studentEmailAddressLogin widget.
  FocusNode? studentEmailAddressLoginFocusNode;
  TextEditingController? studentEmailAddressLoginController;
  String? Function(BuildContext, String?)?
      studentEmailAddressLoginControllerValidator;
  // State field(s) for studentPasswordLogin widget.
  FocusNode? studentPasswordLoginFocusNode;
  TextEditingController? studentPasswordLoginController;
  late bool studentPasswordLoginVisibility;
  String? Function(BuildContext, String?)?
      studentPasswordLoginControllerValidator;
  // Stores action output result for [Backend Call - Read Document] action in LogInWithGoogleButton widget.
  SchoolRecord? userSchool;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    studentPasswordLoginVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    firstnameFocusNode?.dispose();
    firstnameController?.dispose();

    lastnameFocusNode?.dispose();
    lastnameController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressController?.dispose();

    passwordFocusNode?.dispose();
    passwordController?.dispose();

    studentEmailAddressLoginFocusNode?.dispose();
    studentEmailAddressLoginController?.dispose();

    studentPasswordLoginFocusNode?.dispose();
    studentPasswordLoginController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
