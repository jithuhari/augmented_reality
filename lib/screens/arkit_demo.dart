import 'package:arkit_plugin/arkit_plugin.dart';
import 'package:flutter/material.dart';

class ArKitDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ARKitSceneView(
      onARKitViewCreated: (c) => onArKitViewCreated(c),
    );
  }

  void onArKitViewCreated(ARKitController c) {
    final node = ARKitNode(
      geometry: ARKitBox(width: 0.1, height: 0.1, length: 0.1),
    );
    c.add(node);
  }
}
