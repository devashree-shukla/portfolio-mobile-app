import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DisplaypicturesRecord extends FirestoreRecord {
  DisplaypicturesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "profile_pic" field.
  String? _profilePic;
  String get profilePic => _profilePic ?? '';
  bool hasProfilePic() => _profilePic != null;

  // "is_current" field.
  bool? _isCurrent;
  bool get isCurrent => _isCurrent ?? false;
  bool hasIsCurrent() => _isCurrent != null;

  void _initializeFields() {
    _profilePic = snapshotData['profile_pic'] as String?;
    _isCurrent = snapshotData['is_current'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('displaypictures');

  static Stream<DisplaypicturesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DisplaypicturesRecord.fromSnapshot(s));

  static Future<DisplaypicturesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DisplaypicturesRecord.fromSnapshot(s));

  static DisplaypicturesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DisplaypicturesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DisplaypicturesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DisplaypicturesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DisplaypicturesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DisplaypicturesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDisplaypicturesRecordData({
  String? profilePic,
  bool? isCurrent,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'profile_pic': profilePic,
      'is_current': isCurrent,
    }.withoutNulls,
  );

  return firestoreData;
}

class DisplaypicturesRecordDocumentEquality
    implements Equality<DisplaypicturesRecord> {
  const DisplaypicturesRecordDocumentEquality();

  @override
  bool equals(DisplaypicturesRecord? e1, DisplaypicturesRecord? e2) {
    return e1?.profilePic == e2?.profilePic && e1?.isCurrent == e2?.isCurrent;
  }

  @override
  int hash(DisplaypicturesRecord? e) =>
      const ListEquality().hash([e?.profilePic, e?.isCurrent]);

  @override
  bool isValidKey(Object? o) => o is DisplaypicturesRecord;
}
