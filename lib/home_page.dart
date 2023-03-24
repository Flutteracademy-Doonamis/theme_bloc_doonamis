import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_bloc_doonamis/theme/theme_bloc/theme_bloc.dart';
import 'package:theme_bloc_doonamis/theme/theme_cubit/theme_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final int randInt = Random().nextInt(10);
            print(randInt);
            context
                .read<ThemeBloc>()
                .add(ChangeThemeEventWithNumber(randInt: randInt));
            // context.read<ThemeCubit>().changeTheme();
          },
          child: const Text(
            "Cambiar Tema",
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}
