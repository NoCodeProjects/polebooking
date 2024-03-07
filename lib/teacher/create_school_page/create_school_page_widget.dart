import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'create_school_page_model.dart';
export 'create_school_page_model.dart';

class CreateSchoolPageWidget extends StatefulWidget {
  const CreateSchoolPageWidget({super.key});

  @override
  State<CreateSchoolPageWidget> createState() => _CreateSchoolPageWidgetState();
}

class _CreateSchoolPageWidgetState extends State<CreateSchoolPageWidget> {
  late CreateSchoolPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateSchoolPageModel());

    _model.schoolNameTextFieldController ??= TextEditingController();
    _model.schoolNameTextFieldFocusNode ??= FocusNode();

    _model.schoolLogoUploadFieldController ??= TextEditingController();
    _model.schoolLogoUploadFieldFocusNode ??= FocusNode();

    _model.schoolAddressTextFieldController ??= TextEditingController();
    _model.schoolAddressTextFieldFocusNode ??= FocusNode();

    _model.schoolEmailTextFieldController ??= TextEditingController();
    _model.schoolEmailTextFieldFocusNode ??= FocusNode();

    _model.schoolTelephoneTextFieldController ??= TextEditingController();
    _model.schoolTelephoneTextFieldFocusNode ??= FocusNode();

    _model.schoolInstagramTextFieldController ??= TextEditingController();
    _model.schoolInstagramTextFieldFocusNode ??= FocusNode();

    _model.schoolBioTextFieldController ??= TextEditingController();
    _model.schoolBioTextFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 16.0),
                child: Text(
                  'Pole Room',
                  style: FlutterFlowTheme.of(context).displaySmall.override(
                        fontFamily: 'Outfit',
                        color: FlutterFlowTheme.of(context).primary,
                      ),
                ),
              ),
              Container(
                decoration: BoxDecoration(),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AuthUserStreamWidget(
                        builder: (context) => Text(
                          (String teacherName) {
                            return "Bonjour " + teacherName;
                          }(currentUserDisplayName),
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Outfit',
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 24.0),
                        child: Text(
                          'Tout ce qui va aider vos élèves à vous trouver',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context).labelMedium,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 16.0),
                        child: TextFormField(
                          controller: _model.schoolNameTextFieldController,
                          focusNode: _model.schoolNameTextFieldFocusNode,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontWeight: FontWeight.w500,
                                ),
                            hintText: 'Nom de l\'école',
                            hintStyle: FlutterFlowTheme.of(context).labelMedium,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).info,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            filled: true,
                            fillColor: FlutterFlowTheme.of(context).info,
                            contentPadding: EdgeInsets.all(24.0),
                            suffixIcon: Icon(
                              Icons.drive_file_rename_outline,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 35.0,
                            ),
                          ),
                          style: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                          cursorColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          validator: _model
                              .schoolNameTextFieldControllerValidator
                              .asValidator(context),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 16.0),
                        child: TextFormField(
                          controller: _model.schoolLogoUploadFieldController,
                          focusNode: _model.schoolLogoUploadFieldFocusNode,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontWeight: FontWeight.w500,
                                ),
                            hintText: 'Le logo si il y en a un',
                            hintStyle: FlutterFlowTheme.of(context).labelMedium,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).info,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            filled: true,
                            fillColor: FlutterFlowTheme.of(context).info,
                            contentPadding: EdgeInsets.all(24.0),
                            suffixIcon: Icon(
                              Icons.cloud_upload,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 35.0,
                            ),
                          ),
                          style: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                          cursorColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          validator: _model
                              .schoolLogoUploadFieldControllerValidator
                              .asValidator(context),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 16.0),
                        child: TextFormField(
                          controller: _model.schoolAddressTextFieldController,
                          focusNode: _model.schoolAddressTextFieldFocusNode,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontWeight: FontWeight.w500,
                                ),
                            hintText: 'Addresse de l\'école',
                            hintStyle: FlutterFlowTheme.of(context).labelMedium,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).info,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            filled: true,
                            fillColor: FlutterFlowTheme.of(context).info,
                            contentPadding: EdgeInsets.all(24.0),
                            suffixIcon: Icon(
                              Icons.map_outlined,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 35.0,
                            ),
                          ),
                          style: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                          cursorColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          validator: _model
                              .schoolAddressTextFieldControllerValidator
                              .asValidator(context),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 16.0),
                        child: TextFormField(
                          controller: _model.schoolEmailTextFieldController,
                          focusNode: _model.schoolEmailTextFieldFocusNode,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontWeight: FontWeight.w500,
                                ),
                            hintText: 'Email pour vous contacter',
                            hintStyle: FlutterFlowTheme.of(context).labelMedium,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).info,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            filled: true,
                            fillColor: FlutterFlowTheme.of(context).info,
                            contentPadding: EdgeInsets.all(24.0),
                            suffixIcon: Icon(
                              Icons.email_outlined,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 35.0,
                            ),
                          ),
                          style: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                          keyboardType: TextInputType.emailAddress,
                          cursorColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          validator: _model
                              .schoolEmailTextFieldControllerValidator
                              .asValidator(context),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 16.0),
                        child: TextFormField(
                          controller: _model.schoolTelephoneTextFieldController,
                          focusNode: _model.schoolTelephoneTextFieldFocusNode,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontWeight: FontWeight.w500,
                                ),
                            hintText: 'Un téléphone où vous joindre',
                            hintStyle: FlutterFlowTheme.of(context).labelMedium,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).info,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            filled: true,
                            fillColor: FlutterFlowTheme.of(context).info,
                            contentPadding: EdgeInsets.all(24.0),
                            suffixIcon: Icon(
                              Icons.phone_enabled,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 35.0,
                            ),
                          ),
                          style: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                          keyboardType: TextInputType.phone,
                          cursorColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          validator: _model
                              .schoolTelephoneTextFieldControllerValidator
                              .asValidator(context),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 16.0),
                        child: TextFormField(
                          controller: _model.schoolInstagramTextFieldController,
                          focusNode: _model.schoolInstagramTextFieldFocusNode,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontWeight: FontWeight.w500,
                                ),
                            hintText: 'Compte Instagram',
                            hintStyle: FlutterFlowTheme.of(context).labelMedium,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).info,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            filled: true,
                            fillColor: FlutterFlowTheme.of(context).info,
                            contentPadding: EdgeInsets.all(24.0),
                            suffixIcon: FaIcon(
                              FontAwesomeIcons.instagram,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 35.0,
                            ),
                          ),
                          style: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                          cursorColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          validator: _model
                              .schoolInstagramTextFieldControllerValidator
                              .asValidator(context),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 16.0),
                        child: TextFormField(
                          controller: _model.schoolBioTextFieldController,
                          focusNode: _model.schoolBioTextFieldFocusNode,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontWeight: FontWeight.w500,
                                ),
                            hintText: 'Une bio',
                            hintStyle: FlutterFlowTheme.of(context).labelMedium,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).info,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            filled: true,
                            fillColor: FlutterFlowTheme.of(context).info,
                            contentPadding: EdgeInsets.all(24.0),
                            suffixIcon: Icon(
                              Icons.text_snippet_outlined,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 35.0,
                            ),
                          ),
                          style: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                          cursorColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          validator: _model
                              .schoolBioTextFieldControllerValidator
                              .asValidator(context),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 16.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              // CreateSchoolAction

                              var schoolRecordReference =
                                  SchoolRecord.collection.doc();
                              await schoolRecordReference
                                  .set(createSchoolRecordData(
                                name: _model.schoolNameTextFieldController.text,
                                telephone: _model
                                    .schoolTelephoneTextFieldController.text,
                                address: _model
                                    .schoolAddressTextFieldController.text,
                                email:
                                    _model.schoolEmailTextFieldController.text,
                                bio: _model.schoolBioTextFieldController.text,
                                instagram: _model
                                    .schoolInstagramTextFieldController.text,
                              ));
                              _model.schoolDetails =
                                  SchoolRecord.getDocumentFromData(
                                      createSchoolRecordData(
                                        name: _model
                                            .schoolNameTextFieldController.text,
                                        telephone: _model
                                            .schoolTelephoneTextFieldController
                                            .text,
                                        address: _model
                                            .schoolAddressTextFieldController
                                            .text,
                                        email: _model
                                            .schoolEmailTextFieldController
                                            .text,
                                        bio: _model
                                            .schoolBioTextFieldController.text,
                                        instagram: _model
                                            .schoolInstagramTextFieldController
                                            .text,
                                      ),
                                      schoolRecordReference);
                              // SetIsTeacherTrueAction

                              await currentUserReference!
                                  .update(createUsersRecordData(
                                isTeacher: true,
                              ));
                              // PassTeacherName

                              context.goNamed('ManageCoursesPage');

                              setState(() {});
                            },
                            text: 'Créer mon école',
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 50.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                          ),
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
    );
  }
}
