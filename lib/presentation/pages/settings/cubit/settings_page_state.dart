import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_page_state.freezed.dart';

@freezed
class SettingsPageState with _$SettingsPageState {
  const factory SettingsPageState.initial() = _SettingsPageInitial;
  const factory SettingsPageState.loading() = SettingsPageStateLoading;
  const factory SettingsPageState.loaded() = SettingsPageStateLoaded;
}
