import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SchoolRecord extends FirestoreRecord {
  SchoolRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "telephone" field.
  String? _telephone;
  String get telephone => _telephone ?? '';
  bool hasTelephone() => _telephone != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "imageLogo" field.
  String? _imageLogo;
  String get imageLogo => _imageLogo ?? '';
  bool hasImageLogo() => _imageLogo != null;

  // "instagram" field.
  String? _instagram;
  String get instagram => _instagram ?? '';
  bool hasInstagram() => _instagram != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _telephone = snapshotData['telephone'] as String?;
    _address = snapshotData['address'] as String?;
    _email = snapshotData['email'] as String?;
    _bio = snapshotData['bio'] as String?;
    _imageLogo = snapshotData['imageLogo'] as String?;
    _instagram = snapshotData['instagram'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('School');

  static Stream<SchoolRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SchoolRecord.fromSnapshot(s));

  static Future<SchoolRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SchoolRecord.fromSnapshot(s));

  static SchoolRecord fromSnapshot(DocumentSnapshot snapshot) => SchoolRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SchoolRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SchoolRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SchoolRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SchoolRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSchoolRecordData({
  String? name,
  String? telephone,
  String? address,
  String? email,
  String? bio,
  String? imageLogo,
  String? instagram,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'telephone': telephone,
      'address': address,
      'email': email,
      'bio': bio,
      'imageLogo': imageLogo,
      'instagram': instagram,
    }.withoutNulls,
  );

  return firestoreData;
}

class SchoolRecordDocumentEquality implements Equality<SchoolRecord> {
  const SchoolRecordDocumentEquality();

  @override
  bool equals(SchoolRecord? e1, SchoolRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.telephone == e2?.telephone &&
        e1?.address == e2?.address &&
        e1?.email == e2?.email &&
        e1?.bio == e2?.bio &&
        e1?.imageLogo == e2?.imageLogo &&
        e1?.instagram == e2?.instagram;
  }

  @override
  int hash(SchoolRecord? e) => const ListEquality().hash([
        e?.name,
        e?.telephone,
        e?.address,
        e?.email,
        e?.bio,
        e?.imageLogo,
        e?.instagram
      ]);

  @override
  bool isValidKey(Object? o) => o is SchoolRecord;
}
