import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JobRolesRecord extends FirestoreRecord {
  JobRolesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "role_name" field.
  String? _roleName;
  String get roleName => _roleName ?? '';
  bool hasRoleName() => _roleName != null;

  // "role_language" field.
  List<String>? _roleLanguage;
  List<String> get roleLanguage => _roleLanguage ?? const [];
  bool hasRoleLanguage() => _roleLanguage != null;

  // "no_of_search" field.
  int? _noOfSearch;
  int get noOfSearch => _noOfSearch ?? 0;
  bool hasNoOfSearch() => _noOfSearch != null;

  // "role_image" field.
  String? _roleImage;
  String get roleImage => _roleImage ?? '';
  bool hasRoleImage() => _roleImage != null;

  // "companyRef" field.
  DocumentReference? _companyRef;
  DocumentReference? get companyRef => _companyRef;
  bool hasCompanyRef() => _companyRef != null;

  // "jobRef" field.
  List<DocumentReference>? _jobRef;
  List<DocumentReference> get jobRef => _jobRef ?? const [];
  bool hasJobRef() => _jobRef != null;

  void _initializeFields() {
    _roleName = snapshotData['role_name'] as String?;
    _roleLanguage = getDataList(snapshotData['role_language']);
    _noOfSearch = castToType<int>(snapshotData['no_of_search']);
    _roleImage = snapshotData['role_image'] as String?;
    _companyRef = snapshotData['companyRef'] as DocumentReference?;
    _jobRef = getDataList(snapshotData['jobRef']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('jobRoles');

  static Stream<JobRolesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JobRolesRecord.fromSnapshot(s));

  static Future<JobRolesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JobRolesRecord.fromSnapshot(s));

  static JobRolesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      JobRolesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JobRolesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JobRolesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JobRolesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JobRolesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJobRolesRecordData({
  String? roleName,
  int? noOfSearch,
  String? roleImage,
  DocumentReference? companyRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'role_name': roleName,
      'no_of_search': noOfSearch,
      'role_image': roleImage,
      'companyRef': companyRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class JobRolesRecordDocumentEquality implements Equality<JobRolesRecord> {
  const JobRolesRecordDocumentEquality();

  @override
  bool equals(JobRolesRecord? e1, JobRolesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.roleName == e2?.roleName &&
        listEquality.equals(e1?.roleLanguage, e2?.roleLanguage) &&
        e1?.noOfSearch == e2?.noOfSearch &&
        e1?.roleImage == e2?.roleImage &&
        e1?.companyRef == e2?.companyRef &&
        listEquality.equals(e1?.jobRef, e2?.jobRef);
  }

  @override
  int hash(JobRolesRecord? e) => const ListEquality().hash([
        e?.roleName,
        e?.roleLanguage,
        e?.noOfSearch,
        e?.roleImage,
        e?.companyRef,
        e?.jobRef
      ]);

  @override
  bool isValidKey(Object? o) => o is JobRolesRecord;
}
