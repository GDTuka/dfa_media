@MappableLib(
  createCombinedContainer: true,
  discoveryMode: DiscoveryMode.directory,
)
library datamodels;

import 'package:dart_mappable/dart_mappable.dart';
export 'package:dart_mappable/dart_mappable.dart';

part 'remote/locker.dart';
part 'models.mapper.dart';
