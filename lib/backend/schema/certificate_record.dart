import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class CertificateRecord extends FirestoreRecord {
  CertificateRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "certificate_name" field.
  String? _certificateName;
  String get certificateName => _certificateName ?? '';
  bool hasCertificateName() => _certificateName != null;

  // "certificate_organization" field.
  String? _certificateOrganization;
  String get certificateOrganization => _certificateOrganization ?? '';
  bool hasCertificateOrganization() => _certificateOrganization != null;

  // "certificate_image" field.
  String? _certificateImage;
  String get certificateImage => _certificateImage ?? '';
  bool hasCertificateImage() => _certificateImage != null;

  // "certificate_url" field.
  String? _certificateUrl;
  String get certificateUrl => _certificateUrl ?? '';
  bool hasCertificateUrl() => _certificateUrl != null;

  // "certificate_expiration_date" field.
  DateTime? _certificateExpirationDate;
  DateTime? get certificateExpirationDate => _certificateExpirationDate;
  bool hasCertificateExpirationDate() => _certificateExpirationDate != null;

  // "certificate_issue_date" field.
  DateTime? _certificateIssueDate;
  DateTime? get certificateIssueDate => _certificateIssueDate;
  bool hasCertificateIssueDate() => _certificateIssueDate != null;

  // "certificate_id" field.
  String? _certificateId;
  String get certificateId => _certificateId ?? '';
  bool hasCertificateId() => _certificateId != null;

  // "certificate_major_associated_skill" field.
  List<String>? _certificateMajorAssociatedSkill;
  List<String> get certificateMajorAssociatedSkill =>
      _certificateMajorAssociatedSkill ?? const [];
  bool hasCertificateMajorAssociatedSkill() =>
      _certificateMajorAssociatedSkill != null;

  void _initializeFields() {
    _certificateName = snapshotData['certificate_name'] as String?;
    _certificateOrganization =
        snapshotData['certificate_organization'] as String?;
    _certificateImage = snapshotData['certificate_image'] as String?;
    _certificateUrl = snapshotData['certificate_url'] as String?;
    _certificateExpirationDate =
        snapshotData['certificate_expiration_date'] as DateTime?;
    _certificateIssueDate = snapshotData['certificate_issue_date'] as DateTime?;
    _certificateId = snapshotData['certificate_id'] as String?;
    _certificateMajorAssociatedSkill =
        getDataList(snapshotData['certificate_major_associated_skill']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Certificate');

  static Stream<CertificateRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CertificateRecord.fromSnapshot(s));

  static Future<CertificateRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CertificateRecord.fromSnapshot(s));

  static CertificateRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CertificateRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CertificateRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CertificateRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CertificateRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CertificateRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCertificateRecordData({
  String? certificateName,
  String? certificateOrganization,
  String? certificateImage,
  String? certificateUrl,
  DateTime? certificateExpirationDate,
  DateTime? certificateIssueDate,
  String? certificateId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'certificate_name': certificateName,
      'certificate_organization': certificateOrganization,
      'certificate_image': certificateImage,
      'certificate_url': certificateUrl,
      'certificate_expiration_date': certificateExpirationDate,
      'certificate_issue_date': certificateIssueDate,
      'certificate_id': certificateId,
    }.withoutNulls,
  );

  return firestoreData;
}

class CertificateRecordDocumentEquality implements Equality<CertificateRecord> {
  const CertificateRecordDocumentEquality();

  @override
  bool equals(CertificateRecord? e1, CertificateRecord? e2) {
    const listEquality = ListEquality();
    return e1?.certificateName == e2?.certificateName &&
        e1?.certificateOrganization == e2?.certificateOrganization &&
        e1?.certificateImage == e2?.certificateImage &&
        e1?.certificateUrl == e2?.certificateUrl &&
        e1?.certificateExpirationDate == e2?.certificateExpirationDate &&
        e1?.certificateIssueDate == e2?.certificateIssueDate &&
        e1?.certificateId == e2?.certificateId &&
        listEquality.equals(e1?.certificateMajorAssociatedSkill,
            e2?.certificateMajorAssociatedSkill);
  }

  @override
  int hash(CertificateRecord? e) => const ListEquality().hash([
        e?.certificateName,
        e?.certificateOrganization,
        e?.certificateImage,
        e?.certificateUrl,
        e?.certificateExpirationDate,
        e?.certificateIssueDate,
        e?.certificateId,
        e?.certificateMajorAssociatedSkill
      ]);

  @override
  bool isValidKey(Object? o) => o is CertificateRecord;
}
