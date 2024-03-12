import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/request_manager.dart';

import 'projects_widget.dart' show ProjectsWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProjectsModel extends FlutterFlowModel<ProjectsWidget> {
  /// Query cache managers for this widget.

  final _loadProjectsManager = StreamRequestManager<List<ProjectsRecord>>();
  Stream<List<ProjectsRecord>> loadProjects({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<ProjectsRecord>> Function() requestFn,
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
