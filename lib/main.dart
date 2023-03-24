import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_bloc_doonamis/home_page.dart';
import 'package:theme_bloc_doonamis/theme/theme_bloc/theme_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeBloc>(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            theme: state.appTheme == AppTheme.dark
                ? ThemeData.dark()
                : ThemeData.light(),
            title: 'Material App',
            home: HomePage(),
          );
        },
      ),
    );
  }
}
