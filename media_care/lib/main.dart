import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:media_care/presentation/screens/hospitals_clinics/cubit/home_cubit.dart';
import 'package:media_care/presentation/screens/hospitals_clinics/hospitals_crinics_screen.dart';
import 'package:media_care/presentation/screens/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HomeCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Medicare',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes: {
          MainScreen.routeName: (context) => const MainScreen(),
          HospitalsCrinicsScreen.routeName: (context) =>
              const HospitalsCrinicsScreen(),
        },
      ),
    );
  }
}
