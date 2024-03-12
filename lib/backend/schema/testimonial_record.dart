import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TestimonialRecord extends FirestoreRecord {
  TestimonialRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "given_by" field.
  String? _givenBy;
  String get givenBy => _givenBy ?? '';
  bool hasGivenBy() => _givenBy != null;

  // "given_by_image" field.
  String? _givenByImage;
  String get givenByImage => _givenByImage ?? '';
  bool hasGivenByImage() => _givenByImage != null;

  // "given_by_role" field.
  String? _givenByRole;
  String get givenByRole => _givenByRole ?? '';
  bool hasGivenByRole() => _givenByRole != null;

  // "given_by_organization" field.
  String? _givenByOrganization;
  String get givenByOrganization => _givenByOrganization ?? '';
  bool hasGivenByOrganization() => _givenByOrganization != null;

  // "given_by_date" field.
  DateTime? _givenByDate;
  DateTime? get givenByDate => _givenByDate;
  bool hasGivenByDate() => _givenByDate != null;

  // "given_description" field.
  String? _givenDescription;
  String get givenDescription => _givenDescription ?? '';
  bool hasGivenDescription() => _givenDescription != null;

  // "given_addition_detail" field.
  List<String>? _givenAdditionDetail;
  List<String> get givenAdditionDetail => _givenAdditionDetail ?? const [];
  bool hasGivenAdditionDetail() => _givenAdditionDetail != null;

  // "given_by_url" field.
  String? _givenByUrl;
  String get givenByUrl => _givenByUrl ?? '';
  bool hasGivenByUrl() => _givenByUrl != null;

  void _initializeFields() {
    _givenBy = snapshotData['given_by'] as String?;
    _givenByImage = snapshotData['given_by_image'] as String?;
    _givenByRole = snapshotData['given_by_role'] as String?;
    _givenByOrganization = snapshotData['given_by_organization'] as String?;
    _givenByDate = snapshotData['given_by_date'] as DateTime?;
    _givenDescription = snapshotData['given_description'] as String?;
    _givenAdditionDetail = getDataList(snapshotData['given_addition_detail']);
    _givenByUrl = snapshotData['given_by_url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Testimonial');

  static Stream<TestimonialRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TestimonialRecord.fromSnapshot(s));

  static Future<TestimonialRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TestimonialRecord.fromSnapshot(s));

  static TestimonialRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TestimonialRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TestimonialRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TestimonialRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TestimonialRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TestimonialRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTestimonialRecordData({
  String? givenBy,
  String? givenByImage,
  String? givenByRole,
  String? givenByOrganization,
  DateTime? givenByDate,
  String? givenDescription,
  String? givenByUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'given_by': givenBy,
      'given_by_image': givenByImage,
      'given_by_role': givenByRole,
      'given_by_organization': givenByOrganization,
      'given_by_date': givenByDate,
      'given_description': givenDescription,
      'given_by_url': givenByUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class TestimonialRecordDocumentEquality implements Equality<TestimonialRecord> {
  const TestimonialRecordDocumentEquality();

  @override
  bool equals(TestimonialRecord? e1, TestimonialRecord? e2) {
    const listEquality = ListEquality();
    return e1?.givenBy == e2?.givenBy &&
        e1?.givenByImage == e2?.givenByImage &&
        e1?.givenByRole == e2?.givenByRole &&
        e1?.givenByOrganization == e2?.givenByOrganization &&
        e1?.givenByDate == e2?.givenByDate &&
        e1?.givenDescription == e2?.givenDescription &&
        listEquality.equals(e1?.givenAdditionDetail, e2?.givenAdditionDetail) &&
        e1?.givenByUrl == e2?.givenByUrl;
  }

  @override
  int hash(TestimonialRecord? e) => const ListEquality().hash([
        e?.givenBy,
        e?.givenByImage,
        e?.givenByRole,
        e?.givenByOrganization,
        e?.givenByDate,
        e?.givenDescription,
        e?.givenAdditionDetail,
        e?.givenByUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is TestimonialRecord;
}
