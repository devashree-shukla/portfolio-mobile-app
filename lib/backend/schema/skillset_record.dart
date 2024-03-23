import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SkillsetRecord extends FirestoreRecord {
  SkillsetRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "sort_index" field.
  int? _sortIndex;
  int get sortIndex => _sortIndex ?? 0;
  bool hasSortIndex() => _sortIndex != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _sortIndex = castToType<int>(snapshotData['sort_index']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('skillset');

  static Stream<SkillsetRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SkillsetRecord.fromSnapshot(s));

  static Future<SkillsetRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SkillsetRecord.fromSnapshot(s));

  static SkillsetRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SkillsetRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SkillsetRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SkillsetRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SkillsetRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SkillsetRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSkillsetRecordData({
  String? name,
  int? sortIndex,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'sort_index': sortIndex,
    }.withoutNulls,
  );

  return firestoreData;
}

class SkillsetRecordDocumentEquality implements Equality<SkillsetRecord> {
  const SkillsetRecordDocumentEquality();

  @override
  bool equals(SkillsetRecord? e1, SkillsetRecord? e2) {
    return e1?.name == e2?.name && e1?.sortIndex == e2?.sortIndex;
  }

  @override
  int hash(SkillsetRecord? e) =>
      const ListEquality().hash([e?.name, e?.sortIndex]);

  @override
  bool isValidKey(Object? o) => o is SkillsetRecord;
}
