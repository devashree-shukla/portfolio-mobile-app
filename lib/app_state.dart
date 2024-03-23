import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  final _loadSkillsManager = StreamRequestManager<List<SkillsetRecord>>();
  Stream<List<SkillsetRecord>> loadSkills({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<SkillsetRecord>> Function() requestFn,
  }) =>
      _loadSkillsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearLoadSkillsCache() => _loadSkillsManager.clear();
  void clearLoadSkillsCacheKey(String? uniqueKey) =>
      _loadSkillsManager.clearRequest(uniqueKey);

  final _loadCertificatesManager =
      StreamRequestManager<List<CertificateRecord>>();
  Stream<List<CertificateRecord>> loadCertificates({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<CertificateRecord>> Function() requestFn,
  }) =>
      _loadCertificatesManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearLoadCertificatesCache() => _loadCertificatesManager.clear();
  void clearLoadCertificatesCacheKey(String? uniqueKey) =>
      _loadCertificatesManager.clearRequest(uniqueKey);

  final _loadCompaniesManager =
      StreamRequestManager<List<OrganizationRecord>>();
  Stream<List<OrganizationRecord>> loadCompanies({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<OrganizationRecord>> Function() requestFn,
  }) =>
      _loadCompaniesManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearLoadCompaniesCache() => _loadCompaniesManager.clear();
  void clearLoadCompaniesCacheKey(String? uniqueKey) =>
      _loadCompaniesManager.clearRequest(uniqueKey);

  final _loadTestimonialsManager =
      StreamRequestManager<List<TestimonialRecord>>();
  Stream<List<TestimonialRecord>> loadTestimonials({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<TestimonialRecord>> Function() requestFn,
  }) =>
      _loadTestimonialsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearLoadTestimonialsCache() => _loadTestimonialsManager.clear();
  void clearLoadTestimonialsCacheKey(String? uniqueKey) =>
      _loadTestimonialsManager.clearRequest(uniqueKey);
}
