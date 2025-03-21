import 'package:f1_app/domain/entities/f1_driver.dart';
import 'package:f1_app/presentation/providers/f1_drivers_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getF1DriversProvider = StateNotifierProvider<F1DriverNotifier, List<F1Driver>>((ref) {
  
  final fetchF1Drivers = ref.watch(f1DriverRepositoryProvider).getDrivers;

  return F1DriverNotifier(
    fetchF1Drivers: fetchF1Drivers,
  );
  
});

typedef F1DriverCallback = Future<List<F1Driver>> Function();

class F1DriverNotifier extends StateNotifier<List<F1Driver>> {

  F1DriverNotifier({
    required this.fetchF1Drivers
  }): super([]);
  
  F1DriverCallback fetchF1Drivers;

  Future<void> loadF1Drivers() async {
    final f1Drivers = await fetchF1Drivers();
    state = [...state, ...f1Drivers];
  }
  
}