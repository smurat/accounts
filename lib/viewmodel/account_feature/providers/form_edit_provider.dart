import 'package:hooks_riverpod/hooks_riverpod.dart';

final formEditProviderProvider = StateProvider.autoDispose<bool>((ref) {
  return false;
});
