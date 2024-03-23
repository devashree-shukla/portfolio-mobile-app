import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'creative_writings_widget.dart' show CreativeWritingsWidget;
import 'package:flutter/material.dart';

class CreativeWritingsModel extends FlutterFlowModel<CreativeWritingsWidget> {
  /// Query cache managers for this widget.

  final _loadProjectsManager = StreamRequestManager<List<BlogsRecord>>();
  Stream<List<BlogsRecord>> loadProjects({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<BlogsRecord>> Function() requestFn,
  }) =>
      _loadProjectsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearLoadProjectsCache() => _loadProjectsManager.clear();
  void clearLoadProjectsCacheKey(String? uniqueKey) =>
      _loadProjectsManager.clearRequest(uniqueKey);

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    /// Dispose query cache managers for this widget.

    clearLoadProjectsCache();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
