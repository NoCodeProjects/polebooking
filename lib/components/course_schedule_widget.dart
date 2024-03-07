import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'course_schedule_model.dart';
export 'course_schedule_model.dart';

class CourseScheduleWidget extends StatefulWidget {
  const CourseScheduleWidget({
    super.key,
    this.courseTitle,
    this.courseTime,
    required this.courseStartTime,
    required this.courseEndTime,
  });

  final String? courseTitle;
  final String? courseTime;
  final String? courseStartTime;
  final String? courseEndTime;

  @override
  State<CourseScheduleWidget> createState() => _CourseScheduleWidgetState();
}

class _CourseScheduleWidgetState extends State<CourseScheduleWidget> {
  late CourseScheduleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CourseScheduleModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          valueOrDefault<String>(
            widget.courseTitle,
            'Titre du cours',
          ),
          style: FlutterFlowTheme.of(context).bodyLarge,
        ),
        Text(
          valueOrDefault<String>(
            (String courseStartTime, String courseEndTime) {
              return courseStartTime + " - " + courseEndTime;
            }(widget.courseStartTime!, widget.courseEndTime!),
            '/',
          ),
          style: FlutterFlowTheme.of(context).bodySmall.override(
                fontFamily: 'Readex Pro',
                color: FlutterFlowTheme.of(context).secondaryText,
              ),
        ),
      ],
    );
  }
}
