import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AcademicsRecord extends FirestoreRecord {
  AcademicsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "school" field.
  String? _school;
  String get school => _school ?? '';
  bool hasSchool() => _school != null;

  // "degree" field.
  String? _degree;
  String get degree => _degree ?? '';
  bool hasDegree() => _degree != null;

  // "grade" field.
  String? _grade;
  String get grade => _grade ?? '';
  bool hasGrade() => _grade != null;

  // "start_date" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "end_date" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  bool hasEndDate() => _endDate != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "field_of_study" field.
  String? _fieldOfStudy;
  String get fieldOfStudy => _fieldOfStudy ?? '';
  bool hasFieldOfStudy() => _fieldOfStudy != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  bool hasUrl() => _url != null;

  void _initializeFields() {
    _school = snapshotData['school'] as String?;
    _degree = snapshotData['degree'] as String?;
    _grade = snapshotData['grade'] as String?;
    _startDate = snapshotData['start_date'] as DateTime?;
    _endDate = snapshotData['end_date'] as DateTime?;
    _description = snapshotData['description'] as String?;
    _fieldOfStudy = snapshotData['field_of_study'] as String?;
    _url = snapshotData['url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Academics');

  static Stream<AcademicsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AcademicsRecord.fromSnapshot(s));

  static Future<AcademicsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AcademicsRecord.fromSnapshot(s));

  static AcademicsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AcademicsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AcademicsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AcademicsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AcademicsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AcademicsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAcademicsRecordData({
  String? school,
  String? degree,
  String? grade,
  DateTime? startDate,
  DateTime? endDate,
  String? description,
  String? fieldOfStudy,
  String? url,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'school': school,
      'degree': degree,
      'grade': grade,
      'start_date': startDate,
      'end_date': endDate,
      'description': description,
      'field_of_study': fieldOfStudy,
      'url': url,
    }.withoutNulls,
  );

  return firestoreData;
}

class AcademicsRecordDocumentEquality implements Equality<AcademicsRecord> {
  const AcademicsRecordDocumentEquality();

  @override
  bool equals(AcademicsRecord? e1, AcademicsRecord? e2) {
    return e1?.school == e2?.school &&
        e1?.degree == e2?.degree &&
        e1?.grade == e2?.grade &&
        e1?.startDate == e2?.startDate &&
        e1?.endDate == e2?.endDate &&
        e1?.description == e2?.description &&
        e1?.fieldOfStudy == e2?.fieldOfStudy &&
        e1?.url == e2?.url;
  }

  @override
  int hash(AcademicsRecord? e) => const ListEquality().hash([
        e?.school,
        e?.degree,
        e?.grade,
        e?.startDate,
        e?.endDate,
        e?.description,
        e?.fieldOfStudy,
        e?.url
      ]);

  @override
  bool isValidKey(Object? o) => o is AcademicsRecord;
}
