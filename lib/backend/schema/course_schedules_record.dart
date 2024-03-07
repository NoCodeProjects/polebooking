import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CourseSchedulesRecord extends FirestoreRecord {
  CourseSchedulesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "startTime" field.
  String? _startTime;
  String get startTime => _startTime ?? '';
  bool hasStartTime() => _startTime != null;

  // "endTime" field.
  String? _endTime;
  String get endTime => _endTime ?? '';
  bool hasEndTime() => _endTime != null;

  // "isRecurrent" field.
  bool? _isRecurrent;
  bool get isRecurrent => _isRecurrent ?? false;
  bool hasIsRecurrent() => _isRecurrent != null;

  // "nbOfAvailableSeats" field.
  int? _nbOfAvailableSeats;
  int get nbOfAvailableSeats => _nbOfAvailableSeats ?? 0;
  bool hasNbOfAvailableSeats() => _nbOfAvailableSeats != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "recurrence" field.
  RecurrenceEnum? _recurrence;
  RecurrenceEnum? get recurrence => _recurrence;
  bool hasRecurrence() => _recurrence != null;

  // "dayOfTheWeek" field.
  String? _dayOfTheWeek;
  String get dayOfTheWeek => _dayOfTheWeek ?? '';
  bool hasDayOfTheWeek() => _dayOfTheWeek != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _startTime = snapshotData['startTime'] as String?;
    _endTime = snapshotData['endTime'] as String?;
    _isRecurrent = snapshotData['isRecurrent'] as bool?;
    _nbOfAvailableSeats = castToType<int>(snapshotData['nbOfAvailableSeats']);
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _recurrence = deserializeEnum<RecurrenceEnum>(snapshotData['recurrence']);
    _dayOfTheWeek = snapshotData['dayOfTheWeek'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('CourseSchedules')
          : FirebaseFirestore.instance.collectionGroup('CourseSchedules');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('CourseSchedules').doc(id);

  static Stream<CourseSchedulesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CourseSchedulesRecord.fromSnapshot(s));

  static Future<CourseSchedulesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CourseSchedulesRecord.fromSnapshot(s));

  static CourseSchedulesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CourseSchedulesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CourseSchedulesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CourseSchedulesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CourseSchedulesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CourseSchedulesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCourseSchedulesRecordData({
  String? startTime,
  String? endTime,
  bool? isRecurrent,
  int? nbOfAvailableSeats,
  String? title,
  String? description,
  RecurrenceEnum? recurrence,
  String? dayOfTheWeek,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'startTime': startTime,
      'endTime': endTime,
      'isRecurrent': isRecurrent,
      'nbOfAvailableSeats': nbOfAvailableSeats,
      'title': title,
      'description': description,
      'recurrence': recurrence,
      'dayOfTheWeek': dayOfTheWeek,
    }.withoutNulls,
  );

  return firestoreData;
}

class CourseSchedulesRecordDocumentEquality
    implements Equality<CourseSchedulesRecord> {
  const CourseSchedulesRecordDocumentEquality();

  @override
  bool equals(CourseSchedulesRecord? e1, CourseSchedulesRecord? e2) {
    return e1?.startTime == e2?.startTime &&
        e1?.endTime == e2?.endTime &&
        e1?.isRecurrent == e2?.isRecurrent &&
        e1?.nbOfAvailableSeats == e2?.nbOfAvailableSeats &&
        e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.recurrence == e2?.recurrence &&
        e1?.dayOfTheWeek == e2?.dayOfTheWeek;
  }

  @override
  int hash(CourseSchedulesRecord? e) => const ListEquality().hash([
        e?.startTime,
        e?.endTime,
        e?.isRecurrent,
        e?.nbOfAvailableSeats,
        e?.title,
        e?.description,
        e?.recurrence,
        e?.dayOfTheWeek
      ]);

  @override
  bool isValidKey(Object? o) => o is CourseSchedulesRecord;
}
