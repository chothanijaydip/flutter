// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// @dart = 2.8

import 'package:flutter_devicelab/framework/devices.dart';
import 'package:flutter_devicelab/framework/framework.dart';
import 'package:flutter_devicelab/framework/utils.dart';
import 'package:flutter_devicelab/tasks/perf_tests.dart';

Future<void> main() async {
  deviceOperatingSystem = DeviceOperatingSystem.android;
  await task(PerfTest(
    '${flutterDirectory.path}/dev/benchmarks/macrobenchmarks',
    'test_driver/animated_image.dart',
    'animated_image',
    measureCpuGpu: true,
    measureMemory: true,
  ).run);
}
