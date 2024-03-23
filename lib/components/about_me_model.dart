import '/flutter_flow/flutter_flow_util.dart';
import 'about_me_widget.dart' show AboutMeWidget;
import 'package:flutter/material.dart';

class AboutMeModel extends FlutterFlowModel<AboutMeWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Column widget.
  ScrollController? columnController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    columnController = ScrollController();
  }

  @override
  void dispose() {
    columnController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
