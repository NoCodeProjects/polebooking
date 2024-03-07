import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'edit_schedule_component_widget.dart' show EditScheduleComponentWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditScheduleComponentModel
    extends FlutterFlowModel<EditScheduleComponentWidget> {
  ///  Local state fields for this component.

  bool weekRecurrence = true;

  ///  State fields for stateful widgets in this component.

  // State field(s) for ScheduleTitle widget.
  FocusNode? scheduleTitleFocusNode;
  TextEditingController? scheduleTitleController;
  String? Function(BuildContext, String?)? scheduleTitleControllerValidator;
  // State field(s) for ScheduleDayOfTheWeek widget.
  String? scheduleDayOfTheWeekValue;
  FormFieldController<String>? scheduleDayOfTheWeekValueController;
  // State field(s) for ScheduleStartTime widget.
  String? scheduleStartTimeValue;
  FormFieldController<String>? scheduleStartTimeValueController;
  // State field(s) for ScheduleEndTime widget.
  String? scheduleEndTimeValue;
  FormFieldController<String>? scheduleEndTimeValueController;
  // State field(s) for ScheduleNbOfAvailableSeats widget.
  FocusNode? scheduleNbOfAvailableSeatsFocusNode;
  TextEditingController? scheduleNbOfAvailableSeatsController;
  String? Function(BuildContext, String?)?
      scheduleNbOfAvailableSeatsControllerValidator;
  DateTime? datePicked;
  // State field(s) for ScheduleRecurrence widget.
  bool? scheduleRecurrenceValue;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    scheduleTitleFocusNode?.dispose();
    scheduleTitleController?.dispose();

    scheduleNbOfAvailableSeatsFocusNode?.dispose();
    scheduleNbOfAvailableSeatsController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
