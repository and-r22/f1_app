import 'package:f1_app/infraestructure/datasources/f1_driver_datasource.dart';
import 'package:f1_app/infraestructure/repositories/f1_driver_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final f1DriverRepositoryProvider = Provider((ref) {
  return F1DriverRepositoryImpl(datasource: F1DriverDatasource());
});