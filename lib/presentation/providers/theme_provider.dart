import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// estado de colores inmutable
final isDarkModeProvider = StateProvider((ref) => false);

// un simple boolean
final colorListProvider = Provider((ref) => colorList);


// un simple int
final selectedColorProvider = StateProvider((ref) => 3);

//
// Un objeto de tipo AppTheme
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

class ThemeNotifier extends StateNotifier<AppTheme> {
  // State = Estado = new AppTheme
  ThemeNotifier() :super (AppTheme());

  void toggleDarkMode(){
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }
  
  void changeColorIndex(int colorIndex){
    state = state.copyWith(selectedColor: colorIndex);
  }
}