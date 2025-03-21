import 'package:f1_app/domain/datasources/f1_dirvers_datasource.dart';
import 'package:f1_app/domain/entities/f1_driver.dart';
import 'package:f1_app/domain/repositories/f1_drivers_repository.dart';

class F1DriverRepositoryImpl extends F1DriversRepository {

  final F1DriversDatasource datasource;

  F1DriverRepositoryImpl({required this.datasource});
  
  @override
  Future<List<F1Driver>> getDrivers() {
    return datasource.getDrivers();
  }

}