import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrganizationRecord extends FirestoreRecord {
  OrganizationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "organization_is_current" field.
  bool? _organizationIsCurrent;
  bool get organizationIsCurrent => _organizationIsCurrent ?? false;
  bool hasOrganizationIsCurrent() => _organizationIsCurrent != null;

  // "organization_start_date" field.
  DateTime? _organizationStartDate;
  DateTime? get organizationStartDate => _organizationStartDate;
  bool hasOrganizationStartDate() => _organizationStartDate != null;

  // "organization_end_date" field.
  DateTime? _organizationEndDate;
  DateTime? get organizationEndDate => _organizationEndDate;
  bool hasOrganizationEndDate() => _organizationEndDate != null;

  // "role_description" field.
  String? _roleDescription;
  String get roleDescription => _roleDescription ?? '';
  bool hasRoleDescription() => _roleDescription != null;

  // "organization_url" field.
  String? _organizationUrl;
  String get organizationUrl => _organizationUrl ?? '';
  bool hasOrganizationUrl() => _organizationUrl != null;

  // "role_type" field.
  String? _roleType;
  String get roleType => _roleType ?? '';
  bool hasRoleType() => _roleType != null;

  // "major_associated_skill" field.
  List<String>? _majorAssociatedSkill;
  List<String> get majorAssociatedSkill => _majorAssociatedSkill ?? const [];
  bool hasMajorAssociatedSkill() => _majorAssociatedSkill != null;

  void _initializeFields() {
    _role = snapshotData['role'] as String?;
    _name = snapshotData['name'] as String?;
    _location = snapshotData['location'] as String?;
    _organizationIsCurrent = snapshotData['organization_is_current'] as bool?;
    _organizationStartDate =
        snapshotData['organization_start_date'] as DateTime?;
    _organizationEndDate = snapshotData['organization_end_date'] as DateTime?;
    _roleDescription = snapshotData['role_description'] as String?;
    _organizationUrl = snapshotData['organization_url'] as String?;
    _roleType = snapshotData['role_type'] as String?;
    _majorAssociatedSkill = getDataList(snapshotData['major_associated_skill']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Organization');

  static Stream<OrganizationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrganizationRecord.fromSnapshot(s));

  static Future<OrganizationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrganizationRecord.fromSnapshot(s));

  static OrganizationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OrganizationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrganizationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrganizationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrganizationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrganizationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrganizationRecordData({
  String? role,
  String? name,
  String? location,
  bool? organizationIsCurrent,
  DateTime? organizationStartDate,
  DateTime? organizationEndDate,
  String? roleDescription,
  String? organizationUrl,
  String? roleType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'role': role,
      'name': name,
      'location': location,
      'organization_is_current': organizationIsCurrent,
      'organization_start_date': organizationStartDate,
      'organization_end_date': organizationEndDate,
      'role_description': roleDescription,
      'organization_url': organizationUrl,
      'role_type': roleType,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrganizationRecordDocumentEquality
    implements Equality<OrganizationRecord> {
  const OrganizationRecordDocumentEquality();

  @override
  bool equals(OrganizationRecord? e1, OrganizationRecord? e2) {
    const listEquality = ListEquality();
    return e1?.role == e2?.role &&
        e1?.name == e2?.name &&
        e1?.location == e2?.location &&
        e1?.organizationIsCurrent == e2?.organizationIsCurrent &&
        e1?.organizationStartDate == e2?.organizationStartDate &&
        e1?.organizationEndDate == e2?.organizationEndDate &&
        e1?.roleDescription == e2?.roleDescription &&
        e1?.organizationUrl == e2?.organizationUrl &&
        e1?.roleType == e2?.roleType &&
        listEquality.equals(e1?.majorAssociatedSkill, e2?.majorAssociatedSkill);
  }

  @override
  int hash(OrganizationRecord? e) => const ListEquality().hash([
        e?.role,
        e?.name,
        e?.location,
        e?.organizationIsCurrent,
        e?.organizationStartDate,
        e?.organizationEndDate,
        e?.roleDescription,
        e?.organizationUrl,
        e?.roleType,
        e?.majorAssociatedSkill
      ]);

  @override
  bool isValidKey(Object? o) => o is OrganizationRecord;
}
