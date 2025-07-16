import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkModeProvider = StateProvider((ref) => false);

final colorListProvider = Provider((ref) => colorList);

final selectedColorsProvider = StateProvider((ref) => 0);

final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

// Notifier or controller
class ThemeNotifier extends StateNotifier<AppTheme> {
  // this state is equal to a new instance of the class with its default values
  // state = new AppTheme();
  ThemeNotifier(): super(AppTheme());

  void toogleDarkmode(){
    state = state.copyWith(isDarkmode: !state.isDarkmode);
  }

  void changeColorIndex(int colorIndex){
    state = state.copyWith(selecteColor: colorIndex);
  }

}
