import 'package:alice/alice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instakilogram/bloc/bloc.dart';
import 'package:instakilogram/repositories/api_repository.dart';
import 'package:instakilogram/repositories/repositories.dart';
import 'utils/route_generator.dart';

Alice alice;

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    alice = Alice(showNotification: true);
    return MultiBlocProvider(
        providers: [
          BlocProvider<PhotoBloc>(builder: (_) => PhotoBloc(apiRepository: ApiRepository(apiClient: ApiClient(context: context))))
        ],
        child: MaterialApp(
          navigatorKey: alice.getNavigatorKey(),
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          initialRoute: '/',
          onGenerateRoute: RouteGenerator.generateRoute,
        )
    );
  }
}
