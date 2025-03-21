import 'package:dio/dio.dart';
import 'package:f1_app/domain/datasources/f1_dirvers_datasource.dart';
import 'package:f1_app/domain/entities/f1_driver.dart';
import 'package:f1_app/infraestructure/mappers/f1_driver_mapper.dart';
import 'package:f1_app/infraestructure/models/f1_driver_response.dart';

class F1DriverDatasource extends F1DriversDatasource {
  
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.openf1.org/v1'
    )
  );

  List<F1Driver> _jsonToF1Drivers(List<dynamic> json) {
    final f1Drivers = json
      .map((json) =>
        F1DriverMapper.f1driverToEntity(F1DriverResponse.fromJson(json))
      ).toList();

    return f1Drivers;
  }

  @override
  Future<List<F1Driver>> getDrivers() async {
    
    final response = await dio.get('/drivers?session_key=latest');

    return _jsonToF1Drivers(response.data);
    
  }

  

}