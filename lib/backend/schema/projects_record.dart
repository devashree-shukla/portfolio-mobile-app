import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProjectsRecord extends FirestoreRecord {
  ProjectsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "project_name" field.
  String? _projectName;
  String get projectName => _projectName ?? '';
  bool hasProjectName() => _projectName != null;

  // "project_description" field.
  String? _projectDescription;
  String get projectDescription => _projectDescription ?? '';
  bool hasProjectDescription() => _projectDescription != null;

  // "project_url" field.
  String? _projectUrl;
  String get projectUrl => _projectUrl ?? '';
  bool hasProjectUrl() => _projectUrl != null;

  // "project_is_current" field.
  bool? _projectIsCurrent;
  bool get projectIsCurrent => _projectIsCurrent ?? false;
  bool hasProjectIsCurrent() => _projectIsCurrent != null;

  // "project_start_date" field.
  DateTime? _projectStartDate;
  DateTime? get projectStartDate => _projectStartDate;
  bool hasProjectStartDate() => _projectStartDate != null;

  // "project_end_date" field.
  DateTime? _projectEndDate;
  DateTime? get projectEndDate => _projectEndDate;
  bool hasProjectEndDate() => _projectEndDate != null;

  // "project_associated_with" field.
  DocumentReference? _projectAssociatedWith;
  DocumentReference? get projectAssociatedWith => _projectAssociatedWith;
  bool hasProjectAssociatedWith() => _projectAssociatedWith != null;

  // "project_is_academic" field.
  bool? _projectIsAcademic;
  bool get projectIsAcademic => _projectIsAcademic ?? false;
  bool hasProjectIsAcademic() => _projectIsAcademic != null;

  // "project_associated_academy" field.
  DocumentReference? _projectAssociatedAcademy;
  DocumentReference? get projectAssociatedAcademy => _projectAssociatedAcademy;
  bool hasProjectAssociatedAcademy() => _projectAssociatedAcademy != null;

  // "major_associated_skill" field.
  List<String>? _majorAssociatedSkill;
  List<String> get majorAssociatedSkill => _majorAssociatedSkill ?? const [];
  bool hasMajorAssociatedSkill() => _majorAssociatedSkill != null;

  // "sort_index" field.
  int? _sortIndex;
  int get sortIndex => _sortIndex ?? 0;
  bool hasSortIndex() => _sortIndex != null;

  void _initializeFields() {
    _projectName = snapshotData['project_name'] as String?;
    _projectDescription = snapshotData['project_description'] as String?;
    _projectUrl = snapshotData['project_url'] as String?;
    _projectIsCurrent = snapshotData['project_is_current'] as bool?;
    _projectStartDate = snapshotData['project_start_date'] as DateTime?;
    _projectEndDate = snapshotData['project_end_date'] as DateTime?;
    _projectAssociatedWith =
        snapshotData['project_associated_with'] as DocumentReference?;
    _projectIsAcademic = snapshotData['project_is_academic'] as bool?;
    _projectAssociatedAcademy =
        snapshotData['project_associated_academy'] as DocumentReference?;
    _majorAssociatedSkill = getDataList(snapshotData['major_associated_skill']);
    _sortIndex = castToType<int>(snapshotData['sort_index']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('projects');

  static Stream<ProjectsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProjectsRecord.fromSnapshot(s));

  static Future<ProjectsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProjectsRecord.fromSnapshot(s));

  static ProjectsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProjectsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProjectsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProjectsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProjectsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProjectsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProjectsRecordData({
  String? projectName,
  String? projectDescription,
  String? projectUrl,
  bool? projectIsCurrent,
  DateTime? projectStartDate,
  DateTime? projectEndDate,
  DocumentReference? projectAssociatedWith,
  bool? projectIsAcademic,
  DocumentReference? projectAssociatedAcademy,
  int? sortIndex,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'project_name': projectName,
      'project_description': projectDescription,
      'project_url': projectUrl,
      'project_is_current': projectIsCurrent,
      'project_start_date': projectStartDate,
      'project_end_date': projectEndDate,
      'project_associated_with': projectAssociatedWith,
      'project_is_academic': projectIsAcademic,
      'project_associated_academy': projectAssociatedAcademy,
      'sort_index': sortIndex,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProjectsRecordDocumentEquality implements Equality<ProjectsRecord> {
  const ProjectsRecordDocumentEquality();

  @override
  bool equals(ProjectsRecord? e1, ProjectsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.projectName == e2?.projectName &&
        e1?.projectDescription == e2?.projectDescription &&
        e1?.projectUrl == e2?.projectUrl &&
        e1?.projectIsCurrent == e2?.projectIsCurrent &&
        e1?.projectStartDate == e2?.projectStartDate &&
        e1?.projectEndDate == e2?.projectEndDate &&
        e1?.projectAssociatedWith == e2?.projectAssociatedWith &&
        e1?.projectIsAcademic == e2?.projectIsAcademic &&
        e1?.projectAssociatedAcademy == e2?.projectAssociatedAcademy &&
        listEquality.equals(
            e1?.majorAssociatedSkill, e2?.majorAssociatedSkill) &&
        e1?.sortIndex == e2?.sortIndex;
  }

  @override
  int hash(ProjectsRecord? e) => const ListEquality().hash([
        e?.projectName,
        e?.projectDescription,
        e?.projectUrl,
        e?.projectIsCurrent,
        e?.projectStartDate,
        e?.projectEndDate,
        e?.projectAssociatedWith,
        e?.projectIsAcademic,
        e?.projectAssociatedAcademy,
        e?.majorAssociatedSkill,
        e?.sortIndex
      ]);

  @override
  bool isValidKey(Object? o) => o is ProjectsRecord;
}
