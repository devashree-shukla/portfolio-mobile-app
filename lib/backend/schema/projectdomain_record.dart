import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProjectdomainRecord extends FirestoreRecord {
  ProjectdomainRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "sort_index" field.
  int? _sortIndex;
  int get sortIndex => _sortIndex ?? 0;
  bool hasSortIndex() => _sortIndex != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _image = snapshotData['image'] as String?;
    _sortIndex = castToType<int>(snapshotData['sort_index']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('projectdomain');

  static Stream<ProjectdomainRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProjectdomainRecord.fromSnapshot(s));

  static Future<ProjectdomainRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProjectdomainRecord.fromSnapshot(s));

  static ProjectdomainRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProjectdomainRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProjectdomainRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProjectdomainRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProjectdomainRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProjectdomainRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProjectdomainRecordData({
  String? name,
  String? image,
  int? sortIndex,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'image': image,
      'sort_index': sortIndex,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProjectdomainRecordDocumentEquality
    implements Equality<ProjectdomainRecord> {
  const ProjectdomainRecordDocumentEquality();

  @override
  bool equals(ProjectdomainRecord? e1, ProjectdomainRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.image == e2?.image &&
        e1?.sortIndex == e2?.sortIndex;
  }

  @override
  int hash(ProjectdomainRecord? e) =>
      const ListEquality().hash([e?.name, e?.image, e?.sortIndex]);

  @override
  bool isValidKey(Object? o) => o is ProjectdomainRecord;
}
