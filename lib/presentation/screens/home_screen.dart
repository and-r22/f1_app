import 'package:f1_app/domain/entities/f1_driver.dart';
import 'package:f1_app/presentation/providers/f1_drivers_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends StatelessWidget {

  static const name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _HomeView(),
    );
  }
}

class _HomeView extends ConsumerStatefulWidget {
  const _HomeView();

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<_HomeView> {

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(getF1DriversProvider.notifier).loadF1Drivers();
    });
  }

  @override
  Widget build(BuildContext context) {

    final f1Drivers = ref.watch(getF1DriversProvider);

    final colors = Theme.of(context).colorScheme;
    final textStyle = Theme.of(context).textTheme;

    return ListView.builder(
      itemCount: f1Drivers.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {

        final driver = f1Drivers[index];

        return Container(
          color: Color.fromARGB(255, 255, 7, 7),
          child: Container(
            margin: EdgeInsets.all(5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                color: Colors.white,
                child: Row(
                  children: [
                          
                    //* Image
                    Container(
                      margin: EdgeInsets.all(5),
                      child: SizedBox(
                        height: 90,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            fit: BoxFit.cover,
                            f1Drivers[index].headshotUrl,
                          ),
                        ),
                      ),
                    ),
                          
                    SizedBox(width: 10,),
                          
                    //* Driver data
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          
                        //* Name
                        Text(
                          'NOMBRE: ${driver.firstName} ${driver.lastName}'
                        ),
                          
                        SizedBox(width: 10,),
                          
                        Text(
                          'EQUIPO: ${driver.teamName} '
                        )
                          
                      ],
                    )
                          
                  ]
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
