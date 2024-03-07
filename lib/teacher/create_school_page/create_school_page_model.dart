import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'create_school_page_widget.dart' show CreateSchoolPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateSchoolPageModel extends FlutterFlowModel<CreateSchoolPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for schoolNameTextField widget.
  FocusNode? schoolNameTextFieldFocusNode;
  TextEditingController? schoolNameTextFieldController;
  String? Function(BuildContext, String?)?
      schoolNameTextFieldControllerValidator;
  // State field(s) for schoolLogoUploadField widget.
  FocusNode? schoolLogoUploadFieldFocusNode;
  TextEditingController? schoolLogoUploadFieldController;
  String? Function(BuildContext, String?)?
      schoolLogoUploadFieldControllerValidator;
  // State field(s) for schoolAddressTextField widget.
  FocusNode? schoolAddressTextFieldFocusNode;
  TextEditingController? schoolAddressTextFieldController;
  String? Function(BuildContext, String?)?
      schoolAddressTextFieldControllerValidator;
  // State field(s) for schoolEmailTextField widget.
  FocusNode? schoolEmailTextFieldFocusNode;
  TextEditingController? schoolEmailTextFieldController;
  String? Function(BuildContext, String?)?
      schoolEmailTextFieldControllerValidator;
  // State field(s) for schoolTelephoneTextField widget.
  FocusNode? schoolTelephoneTextFieldFocusNode;
  TextEditingController? schoolTelephoneTextFieldController;
  String? Function(BuildContext, String?)?
      schoolTelephoneTextFieldControllerValidator;
  // State field(s) for schoolInstagramTextField widget.
  FocusNode? schoolInstagramTextFieldFocusNode;
  TextEditingController? schoolInstagramTextFieldController;
  String? Function(BuildContext, String?)?
      schoolInstagramTextFieldControllerValidator;
  // State field(s) for schoolBioTextField widget.
  FocusNode? schoolBioTextFieldFocusNode;
  TextEditingController? schoolBioTextFieldController;
  String? Function(BuildContext, String?)?
      schoolBioTextFieldControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in createSchoolButton widget.
  SchoolRecord? schoolDetails;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    schoolNameTextFieldFocusNode?.dispose();
    schoolNameTextFieldController?.dispose();

    schoolLogoUploadFieldFocusNode?.dispose();
    schoolLogoUploadFieldController?.dispose();

    schoolAddressTextFieldFocusNode?.dispose();
    schoolAddressTextFieldController?.dispose();

    schoolEmailTextFieldFocusNode?.dispose();
    schoolEmailTextFieldController?.dispose();

    schoolTelephoneTextFieldFocusNode?.dispose();
    schoolTelephoneTextFieldController?.dispose();

    schoolInstagramTextFieldFocusNode?.dispose();
    schoolInstagramTextFieldController?.dispose();

    schoolBioTextFieldFocusNode?.dispose();
    schoolBioTextFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
