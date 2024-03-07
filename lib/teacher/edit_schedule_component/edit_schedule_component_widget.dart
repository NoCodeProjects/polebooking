import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'edit_schedule_component_model.dart';
export 'edit_schedule_component_model.dart';

class EditScheduleComponentWidget extends StatefulWidget {
  const EditScheduleComponentWidget({
    super.key,
    this.courseSchedule,
  });

  final CourseSchedulesRecord? courseSchedule;

  @override
  State<EditScheduleComponentWidget> createState() =>
      _EditScheduleComponentWidgetState();
}

class _EditScheduleComponentWidgetState
    extends State<EditScheduleComponentWidget> {
  late EditScheduleComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditScheduleComponentModel());

    _model.scheduleTitleController ??=
        TextEditingController(text: widget.courseSchedule?.title);
    _model.scheduleTitleFocusNode ??= FocusNode();

    _model.scheduleNbOfAvailableSeatsController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.courseSchedule?.nbOfAvailableSeats.toString(),
      '6',
    ));
    _model.scheduleNbOfAvailableSeatsFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(6.0),
      child: Container(
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 10.0, 8.0, 10.0),
              child: TextFormField(
                controller: _model.scheduleTitleController,
                focusNode: _model.scheduleTitleFocusNode,
                autofocus: true,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Titre du cours',
                  labelStyle: FlutterFlowTheme.of(context).labelMedium,
                  hintStyle: FlutterFlowTheme.of(context).labelMedium,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).alternate,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium,
                validator: _model.scheduleTitleControllerValidator
                    .asValidator(context),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: FlutterFlowDropDown<String>(
                controller: _model.scheduleDayOfTheWeekValueController ??=
                    FormFieldController<String>(
                  _model.scheduleDayOfTheWeekValue ??=
                      widget.courseSchedule?.dayOfTheWeek,
                ),
                options: [
                  'Lundi',
                  'Mardi',
                  'Mercredi',
                  'Jeudi',
                  'Vendredi',
                  'Samedi',
                  'Dimanche'
                ],
                onChanged: (val) =>
                    setState(() => _model.scheduleDayOfTheWeekValue = val),
                width: 300.0,
                height: 50.0,
                textStyle: FlutterFlowTheme.of(context).bodyMedium,
                hintText: 'Quel jour?',
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                elevation: 2.0,
                borderColor: FlutterFlowTheme.of(context).alternate,
                borderWidth: 2.0,
                borderRadius: 8.0,
                margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                hidesUnderline: true,
                isOverButton: true,
                isSearchable: false,
                isMultiSelect: false,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Début',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                  Expanded(
                    child: Container(
                      width: 30.0,
                      constraints: BoxConstraints(
                        maxWidth: 30.0,
                      ),
                      decoration: BoxDecoration(),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                        child: FlutterFlowDropDown<String>(
                          controller:
                              _model.scheduleStartTimeValueController ??=
                                  FormFieldController<String>(
                            _model.scheduleStartTimeValue ??=
                                valueOrDefault<String>(
                              widget.courseSchedule?.startTime,
                              '06:00',
                            ),
                          ),
                          options: functions.returnTimeslotFunction()!,
                          onChanged: (val) => setState(
                              () => _model.scheduleStartTimeValue = val),
                          width: MediaQuery.sizeOf(context).width * 0.3,
                          height: 50.0,
                          textStyle: FlutterFlowTheme.of(context).bodyMedium,
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderWidth: 2.0,
                          borderRadius: 8.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              16.0, 4.0, 16.0, 4.0),
                          hidesUnderline: true,
                          isOverButton: true,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Fin',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                      child: FlutterFlowDropDown<String>(
                        controller: _model.scheduleEndTimeValueController ??=
                            FormFieldController<String>(
                          _model.scheduleEndTimeValue ??=
                              valueOrDefault<String>(
                            widget.courseSchedule?.endTime,
                            '23:00',
                          ),
                        ),
                        options: functions.returnTimeslotFunction()!,
                        onChanged: (val) =>
                            setState(() => _model.scheduleEndTimeValue = val),
                        width: MediaQuery.sizeOf(context).width * 0.3,
                        height: 50.0,
                        textStyle: FlutterFlowTheme.of(context).bodyMedium,
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 2.0,
                        borderColor: FlutterFlowTheme.of(context).alternate,
                        borderWidth: 2.0,
                        borderRadius: 8.0,
                        margin: EdgeInsetsDirectional.fromSTEB(
                            16.0, 4.0, 16.0, 4.0),
                        hidesUnderline: true,
                        isOverButton: true,
                        isSearchable: false,
                        isMultiSelect: false,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nombre de places ',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                      child: Container(
                        width: 40.0,
                        child: TextFormField(
                          controller:
                              _model.scheduleNbOfAvailableSeatsController,
                          focusNode: _model.scheduleNbOfAvailableSeatsFocusNode,
                          onFieldSubmitted: (_) async {
                            final _datePickedTime = await showTimePicker(
                              context: context,
                              initialTime: TimeOfDay.fromDateTime(
                                  DateTime.fromMicrosecondsSinceEpoch(
                                      1708642800000000)),
                              builder: (context, child) {
                                return wrapInMaterialTimePickerTheme(
                                  context,
                                  child!,
                                  headerBackgroundColor:
                                      FlutterFlowTheme.of(context).primary,
                                  headerForegroundColor:
                                      FlutterFlowTheme.of(context).info,
                                  headerTextStyle: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        fontSize: 32.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  pickerBackgroundColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                  pickerForegroundColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  selectedDateTimeBackgroundColor:
                                      FlutterFlowTheme.of(context).primary,
                                  selectedDateTimeForegroundColor:
                                      FlutterFlowTheme.of(context).info,
                                  actionButtonForegroundColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  iconSize: 24.0,
                                );
                              },
                            );
                            if (_datePickedTime != null) {
                              safeSetState(() {
                                _model.datePicked = DateTime(
                                  DateTime.fromMicrosecondsSinceEpoch(
                                          1708642800000000)
                                      .year,
                                  DateTime.fromMicrosecondsSinceEpoch(
                                          1708642800000000)
                                      .month,
                                  DateTime.fromMicrosecondsSinceEpoch(
                                          1708642800000000)
                                      .day,
                                  _datePickedTime.hour,
                                  _datePickedTime.minute,
                                );
                              });
                            }
                          },
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'ex: 6, 7',
                            labelStyle:
                                FlutterFlowTheme.of(context).labelMedium,
                            hintStyle: FlutterFlowTheme.of(context).labelMedium,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 0.0, 0.0),
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                          keyboardType: TextInputType.number,
                          validator: _model
                              .scheduleNbOfAvailableSeatsControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Toutes les semaines?',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                  Switch.adaptive(
                    value: _model.scheduleRecurrenceValue ??=
                        widget.courseSchedule!.isRecurrent,
                    onChanged: (newValue) async {
                      setState(
                          () => _model.scheduleRecurrenceValue = newValue!);
                      if (newValue!) {
                        _model.weekRecurrence = true;
                      } else {
                        _model.weekRecurrence = false;
                      }
                    },
                    activeColor: FlutterFlowTheme.of(context).primary,
                    activeTrackColor: FlutterFlowTheme.of(context).accent1,
                    inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
                    inactiveThumbColor:
                        FlutterFlowTheme.of(context).secondaryText,
                  ),
                  Text(
                    () {
                      if (widget.courseSchedule!.isRecurrent) {
                        return 'OUI';
                      } else if (null!) {
                        return 'NON';
                      } else {
                        return 'NON';
                      }
                    }(),
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: FFButtonWidget(
                onPressed: () async {
                  // SaveEditScheduleAction

                  await widget.courseSchedule!.reference
                      .update(createCourseSchedulesRecordData(
                    startTime: _model.scheduleStartTimeValue,
                    endTime: _model.scheduleEndTimeValue,
                    isRecurrent: _model.scheduleRecurrenceValue,
                    nbOfAvailableSeats: int.tryParse(
                        _model.scheduleNbOfAvailableSeatsController.text),
                    title: _model.scheduleTitleController.text,
                    description: '',
                    recurrence: _model.scheduleRecurrenceValue!
                        ? RecurrenceEnum.WEEKLY
                        : RecurrenceEnum.NONE,
                    dayOfTheWeek: _model.scheduleDayOfTheWeekValue,
                  ));
                },
                text: 'Sauvegarder',
                options: FFButtonOptions(
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: Colors.white,
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
