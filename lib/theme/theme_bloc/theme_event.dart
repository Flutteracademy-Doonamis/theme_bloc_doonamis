part of 'theme_bloc.dart';

abstract class ThemeEvent {
  const ThemeEvent();
}

class ChangeThemeEventWithNumber extends ThemeEvent {
  final int randInt;
  const ChangeThemeEventWithNumber({
    required this.randInt,
  });
}
