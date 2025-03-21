class F1DriverResponse {
    final int driverNumber;
  final String broadcastName;
  final String fullName;
  final String nameAcronym;
  final String teamName;
  final String teamColour;
  final String firstName;
  final String lastName;
  final String headshotUrl;
  final String countryCode;
  final int sessionKey;
  final int meetingKey;

    F1DriverResponse({
        required this.driverNumber,
        required this.broadcastName,
        required this.fullName,
        required this.nameAcronym,
        required this.teamName,
        required this.teamColour,
        required this.firstName,
        required this.lastName,
        required this.headshotUrl,
        required this.countryCode,
        required this.sessionKey,
        required this.meetingKey,
    });

    factory F1DriverResponse.fromJson(Map<String, dynamic> json) => F1DriverResponse(
      driverNumber: json['driver_number'],
      broadcastName: json['broadcast_name'] as String? ?? '',
      fullName: json['full_name'] as String? ?? '',
      nameAcronym: json['name_acronym'] as String? ?? '',
      teamName: json['team_name'] as String? ?? '',
      teamColour: json['team_colour'] as String? ?? '',
      firstName: json['first_name'] as String? ?? '',
      lastName: json['last_name'] as String? ?? '',
      headshotUrl: json['headshot_url'] as String? ?? '',
      countryCode: json['country_code'] as String? ?? '',
      sessionKey: json['session_key'],
      meetingKey: json['meeting_key'],
    );

    Map<String, dynamic> toJson() => {
        'driver_number': driverNumber,
        'broadcast_name': broadcastName,
        'full_name': fullName,
        'name_acronym': nameAcronym,
        'team_name': teamName,
        'team_colour': teamColour,
        'first_name': firstName,
        'last_name': lastName,
        'headshot_url': headshotUrl,
        'country_code': countryCode,
        'session_key': sessionKey,
        'meeting_key': meetingKey,
    };
}