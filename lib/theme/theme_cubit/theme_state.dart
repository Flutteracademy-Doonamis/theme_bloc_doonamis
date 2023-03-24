part of 'theme_cubit.dart';

enum AppTheme {
  light,
  dark,
}

enum StatusTheme {
  success,
  error,
}

class ThemeState {
  final AppTheme appTheme;

  ThemeState({
    this.appTheme = AppTheme.light,
  });

  factory ThemeState.initial() {
    return ThemeState();
  }

  ThemeState copyWith({AppTheme? appTheme}) {
    return ThemeState(
      appTheme: appTheme ?? this.appTheme,
    );
  }
}
