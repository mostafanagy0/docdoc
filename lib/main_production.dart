import 'package:docdoc/core/di/dependancy_ingection.dart';
import 'package:docdoc/core/routing/app_router.dart';
import 'package:docdoc/doc_app.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
