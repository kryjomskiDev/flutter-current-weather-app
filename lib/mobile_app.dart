import 'dart:async';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:fimber_io/fimber_io.dart';
import 'package:wheather_app/presentation/router/router.gr.dart';

import 'weather_app.dart';

const _supportedEnvironments = [Environment.dev, Environment.prod];

Future<void>? runMobileApp(String environment) => runZonedGuarded<Future<void>>(
      () async {
        WidgetsFlutterBinding.ensureInitialized();
        if (!_supportedEnvironments.contains(environment)) {
          throw ArgumentError('Environment $environment is not suppported');
        }
        if (environment != Environment.test && environment != Environment.prod) {
          Fimber.plantTree(DebugTree(useColors: true));
        }
        //configureDependencies(environment);
        runApp(WeatherApp(
          mainRouter: MainRouter(),
        ));
      },
      (err, st) {},
    );
