import 'package:flutter_bloc/flutter_bloc.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState.initial());

  void changeThemeWithClick() {
    if (state.appTheme == AppTheme.light) {
      emit(state.copyWith(appTheme: AppTheme.dark));
    } else if (state.appTheme == AppTheme.dark) {
      emit(state.copyWith(appTheme: AppTheme.light));
    }

    try {} catch (e) {}
  }
}
