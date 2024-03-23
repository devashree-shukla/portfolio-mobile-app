import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BlogsRecord extends FirestoreRecord {
  BlogsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "datetime" field.
  String? _datetime;
  String get datetime => _datetime ?? '';
  bool hasDatetime() => _datetime != null;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  bool hasLink() => _link != null;

  // "sort_index" field.
  int? _sortIndex;
  int get sortIndex => _sortIndex ?? 0;
  bool hasSortIndex() => _sortIndex != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _datetime = snapshotData['datetime'] as String?;
    _link = snapshotData['link'] as String?;
    _sortIndex = castToType<int>(snapshotData['sort_index']);
    _category = snapshotData['category'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Blogs');

  static Stream<BlogsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BlogsRecord.fromSnapshot(s));

  static Future<BlogsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BlogsRecord.fromSnapshot(s));

  static BlogsRecord fromSnapshot(DocumentSnapshot snapshot) => BlogsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BlogsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BlogsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BlogsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BlogsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBlogsRecordData({
  String? title,
  String? datetime,
  String? link,
  int? sortIndex,
  String? category,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'datetime': datetime,
      'link': link,
      'sort_index': sortIndex,
      'category': category,
    }.withoutNulls,
  );

  return firestoreData;
}

class BlogsRecordDocumentEquality implements Equality<BlogsRecord> {
  const BlogsRecordDocumentEquality();

  @override
  bool equals(BlogsRecord? e1, BlogsRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.datetime == e2?.datetime &&
        e1?.link == e2?.link &&
        e1?.sortIndex == e2?.sortIndex &&
        e1?.category == e2?.category;
  }

  @override
  int hash(BlogsRecord? e) => const ListEquality()
      .hash([e?.title, e?.datetime, e?.link, e?.sortIndex, e?.category]);

  @override
  bool isValidKey(Object? o) => o is BlogsRecord;
}
