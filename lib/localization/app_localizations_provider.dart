import 'dart:ui';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final changeLocaleStateNotifierProvider = StateNotifierProvider<ChangeLocaleStateNotifier, Locale>((ref) {
  return ChangeLocaleStateNotifier(ref);
});

class ChangeLocaleStateNotifier extends StateNotifier<Locale> {
  final Ref ref;
  ChangeLocaleStateNotifier(this.ref) : super(window.locale);

  void changeLocale(Locale locale) {
    state = locale;
  }
}
