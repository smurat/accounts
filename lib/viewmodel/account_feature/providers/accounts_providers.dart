import 'dart:async';
import 'package:accounts_app/core/network_manager/dio_provider.dart';
import 'package:accounts_app/model/account/account_model.dart';
import 'package:accounts_app/utils/extensions.dart';
import 'package:accounts_app/utils/logger.dart';
import 'package:accounts_app/utils/viewmodel_helpers/request_state.dart';
import 'package:accounts_app/viewmodel/account_feature/repositories/accounts_repository.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'accounts_providers.g.dart';

const int pageSize = 10;

@riverpod
AccountsRepository accountsRepository(AccountsRepositoryRef ref) {
  return AccountsRepository(
    dio: ref.watch(dioProvider),
  );
}

@riverpod
Future<List<AccountModel>> fetchAccounts(FetchAccountsRef ref) {
  final cancelToken = CancelToken();

  ref.onDispose(() => cancelToken.cancel());

  return ref.watch(accountsRepositoryProvider).fetchAccounts(cancelToken: cancelToken);
}

@riverpod
Future<List<AccountModel>> fetchAccountsWithPagination(FetchAccountsRef ref, int page, {int? limit}) {
  assert(page > 0, 'page offset starts at 1');
  final cancelToken = CancelToken();

  ref.onDispose(() => cancelToken.cancel());

  ref.cacheFor();

  return ref.watch(accountsRepositoryProvider).fetchAccountsPagination(page: page, cancelToken: cancelToken);
}

final totalAccountCountProvider = Provider<AsyncValue<int>>(
  (ref) => ref.read(fetchAccountsWithPaginationProvider(1)).whenData((e) => e.length),
  dependencies: const [fetchAccountsWithPaginationProvider],
);

final listIndexProvider = Provider<int>((_) {
  throw UnimplementedError();
});

@riverpod
Future<AccountModel> fetchAccount(FetchAccountRef ref, String accountId) {
  final cancelToken = CancelToken();

  ref.onDispose(() {
    cancelToken.cancel();
  });

  return ref.watch(accountsRepositoryProvider).fetchAccount(accountId, cancelToken: cancelToken);
}

@riverpod
class AccountUpdate extends _$AccountUpdate {
  @override
  RequestState<dynamic> build() {
    return const RequestState.idle();
  }

  Future<void> updateAccount(AccountModel account) async {
    state = const RequestState.loading();
    ref.watch(accountsRepositoryProvider).updateAccount(account).then((data) {
      logger.d('account updated');
      state = RequestState.data(data);
    }).catchError((e, s) {
      state = RequestState.error(e, s);
    });
  }
}

@riverpod
class AccountAdd extends _$AccountAdd {
  @override
  RequestState<dynamic> build() {
    return const RequestState.idle();
  }

  Future<void> addAccount(AccountModel account) async {
    state = const RequestState.loading();
    ref.watch(accountsRepositoryProvider).addAccount(account).then((data) {
      logger.d('account added');
      state = RequestState.data(data);
    }).catchError((e, s) {
      state = RequestState.error(e, s);
    });
  }
}

@riverpod
class AccountDelete extends _$AccountDelete {
  @override
  RequestState<dynamic> build() {
    return const RequestState.idle();
  }

  Future<void> deleteAccount(String id) async {
    state = const RequestState.loading();
    ref.watch(accountsRepositoryProvider).deleteAccount(id).then((data) {
      state = RequestState.data(data);
    }).catchError((e, s) {
      state = RequestState.error(e, s);
    });
  }
}
