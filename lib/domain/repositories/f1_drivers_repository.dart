import 'package:f1_app/domain/entities/f1_driver.dart';

abstract class F1DriversRepository {

  Future<List<F1Driver>> getDrivers();

}