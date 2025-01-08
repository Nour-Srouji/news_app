
import 'package:flutter/material.dart';

// import 'features/presentation/bloc/auth_cubit.dart';
// import 'features/presentation/bloc/jobs_cubit.dart';
import 'features/presentation/screens/welcome_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      // theme: ThemeData.dark().copyWith(
      //     primaryColor: const Color.fromARGB(255, 220, 20, 60),
      //     colorScheme: ThemeData.dark()
      //         .colorScheme
      //         .copyWith(secondary: const Color.fromARGB(255, 25, 26, 48))),
      debugShowCheckedModeBanner: false,
      home:  Root(),
      ));
}

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return kIsWeb ? const HomeMobile() : WelcomeScreen();
    return WelcomeScreen();
    // return const HomeMobile();
    /*return EasySplashScreen(
      logo: Image.asset("assets/images/new1.jpg"),
      navigator: HomeMobile(),
    );*/
  }
}
