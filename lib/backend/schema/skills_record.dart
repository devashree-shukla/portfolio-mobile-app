import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SkillsRecord extends FirestoreRecord {
  SkillsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "category" field.
  DocumentReference? _category;
  DocumentReference? get category => _category;
  bool hasCategory() => _category != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "sort_index" field.
  int? _sortIndex;
  int get sortIndex => _sortIndex ?? 0;
  bool hasSortIndex() => _sortIndex != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _category = snapshotData['category'] as DocumentReference?;
    _image = snapshotData['image'] as String?;
    _sortIndex = castToType<int>(snapshotData['sort_index']);
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('skills');

  static Stream<SkillsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SkillsRecord.fromSnapshot(s));

  static Future<SkillsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SkillsRecord.fromSnapshot(s));

  static SkillsRecord fromSnapshot(DocumentSnapshot snapshot) => SkillsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SkillsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SkillsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SkillsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SkillsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSkillsRecordData({
  DocumentReference? category,
  String? image,
  int? sortIndex,
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'category': category,
      'image': image,
      'sort_index': sortIndex,
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class SkillsRecordDocumentEquality implements Equality<SkillsRecord> {
  const SkillsRecordDocumentEquality();

  @override
  bool equals(SkillsRecord? e1, SkillsRecord? e2) {
    return e1?.category == e2?.category &&
        e1?.image == e2?.image &&
        e1?.sortIndex == e2?.sortIndex &&
        e1?.name == e2?.name;
  }

  @override
  int hash(SkillsRecord? e) =>
      const ListEquality().hash([e?.category, e?.image, e?.sortIndex, e?.name]);

  @override
  bool isValidKey(Object? o) => o is SkillsRecord;
}
