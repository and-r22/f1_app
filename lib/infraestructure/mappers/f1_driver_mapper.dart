import 'package:f1_app/domain/entities/f1_driver.dart';
import 'package:f1_app/infraestructure/models/f1_driver_response.dart';

class F1DriverMapper {

  static F1Driver f1driverToEntity (F1DriverResponse f1driver) => F1Driver(
    driverNumber: f1driver.driverNumber, 
    broadcastName: f1driver.broadcastName, 
    fullName: f1driver.fullName, 
    nameAcronym: f1driver.nameAcronym, 
    teamName: f1driver.teamName, 
    teamColour: f1driver.teamColour, 
    firstName: f1driver.firstName, 
    lastName: f1driver.lastName, 
    headshotUrl: f1driver.headshotUrl, 
    countryCode: f1driver.countryCode, 
    sessionKey: f1driver.sessionKey, 
    meetingKey: f1driver.meetingKey
  );

}