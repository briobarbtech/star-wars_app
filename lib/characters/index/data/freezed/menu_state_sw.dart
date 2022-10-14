import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_state_sw.freezed.dart';
part 'menu_state_sw.g.dart';

enum MenuState { menu, report }

@Freezed()
class MenuStateSW with _$MenuStateSW {
  const factory MenuStateSW(
      {
      // Aquí guardo el estado del switch
      @Default(MenuState.menu) menuState}) = _MenuStateSW;

  factory MenuStateSW.fromJson(Map<String, dynamic> json) =>
      _$MenuStateSWFromJson(json);
}
