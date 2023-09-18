// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accounts_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$accountsRepositoryHash() =>
    r'069473372c47956dae618c3443266e0ba41e0645';

/// See also [accountsRepository].
@ProviderFor(accountsRepository)
final accountsRepositoryProvider =
    AutoDisposeProvider<AccountsRepository>.internal(
  accountsRepository,
  name: r'accountsRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$accountsRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AccountsRepositoryRef = AutoDisposeProviderRef<AccountsRepository>;
String _$fetchAccountsHash() => r'30fc62f80258eb7d60ed7eaab7a93edaaac45e79';

/// See also [fetchAccounts].
@ProviderFor(fetchAccounts)
final fetchAccountsProvider =
    AutoDisposeFutureProvider<List<AccountModel>>.internal(
  fetchAccounts,
  name: r'fetchAccountsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchAccountsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchAccountsRef = AutoDisposeFutureProviderRef<List<AccountModel>>;
String _$fetchAccountsWithPaginationHash() =>
    r'bc3d9c979f187c5c5bef52ece5996f356acd8284';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [fetchAccountsWithPagination].
@ProviderFor(fetchAccountsWithPagination)
const fetchAccountsWithPaginationProvider = FetchAccountsWithPaginationFamily();

/// See also [fetchAccountsWithPagination].
class FetchAccountsWithPaginationFamily
    extends Family<AsyncValue<List<AccountModel>>> {
  /// See also [fetchAccountsWithPagination].
  const FetchAccountsWithPaginationFamily();

  /// See also [fetchAccountsWithPagination].
  FetchAccountsWithPaginationProvider call(
    int page, {
    int? limit,
  }) {
    return FetchAccountsWithPaginationProvider(
      page,
      limit: limit,
    );
  }

  @override
  FetchAccountsWithPaginationProvider getProviderOverride(
    covariant FetchAccountsWithPaginationProvider provider,
  ) {
    return call(
      provider.page,
      limit: provider.limit,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'fetchAccountsWithPaginationProvider';
}

/// See also [fetchAccountsWithPagination].
class FetchAccountsWithPaginationProvider
    extends AutoDisposeFutureProvider<List<AccountModel>> {
  /// See also [fetchAccountsWithPagination].
  FetchAccountsWithPaginationProvider(
    int page, {
    int? limit,
  }) : this._internal(
          (ref) => fetchAccountsWithPagination(
            ref as FetchAccountsWithPaginationRef,
            page,
            limit: limit,
          ),
          from: fetchAccountsWithPaginationProvider,
          name: r'fetchAccountsWithPaginationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchAccountsWithPaginationHash,
          dependencies: FetchAccountsWithPaginationFamily._dependencies,
          allTransitiveDependencies:
              FetchAccountsWithPaginationFamily._allTransitiveDependencies,
          page: page,
          limit: limit,
        );

  FetchAccountsWithPaginationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
    required this.limit,
  }) : super.internal();

  final int page;
  final int? limit;

  @override
  Override overrideWith(
    FutureOr<List<AccountModel>> Function(
            FetchAccountsWithPaginationRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchAccountsWithPaginationProvider._internal(
        (ref) => create(ref as FetchAccountsWithPaginationRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
        limit: limit,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<AccountModel>> createElement() {
    return _FetchAccountsWithPaginationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchAccountsWithPaginationProvider &&
        other.page == page &&
        other.limit == limit;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);
    hash = _SystemHash.combine(hash, limit.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchAccountsWithPaginationRef
    on AutoDisposeFutureProviderRef<List<AccountModel>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `limit` of this provider.
  int? get limit;
}

class _FetchAccountsWithPaginationProviderElement
    extends AutoDisposeFutureProviderElement<List<AccountModel>>
    with FetchAccountsWithPaginationRef {
  _FetchAccountsWithPaginationProviderElement(super.provider);

  @override
  int get page => (origin as FetchAccountsWithPaginationProvider).page;
  @override
  int? get limit => (origin as FetchAccountsWithPaginationProvider).limit;
}

String _$fetchAccountHash() => r'02ce31e6800de9d436b49f4d8623d802e05e940e';

/// See also [fetchAccount].
@ProviderFor(fetchAccount)
const fetchAccountProvider = FetchAccountFamily();

/// See also [fetchAccount].
class FetchAccountFamily extends Family<AsyncValue<AccountModel>> {
  /// See also [fetchAccount].
  const FetchAccountFamily();

  /// See also [fetchAccount].
  FetchAccountProvider call(
    String accountId,
  ) {
    return FetchAccountProvider(
      accountId,
    );
  }

  @override
  FetchAccountProvider getProviderOverride(
    covariant FetchAccountProvider provider,
  ) {
    return call(
      provider.accountId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'fetchAccountProvider';
}

/// See also [fetchAccount].
class FetchAccountProvider extends AutoDisposeFutureProvider<AccountModel> {
  /// See also [fetchAccount].
  FetchAccountProvider(
    String accountId,
  ) : this._internal(
          (ref) => fetchAccount(
            ref as FetchAccountRef,
            accountId,
          ),
          from: fetchAccountProvider,
          name: r'fetchAccountProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchAccountHash,
          dependencies: FetchAccountFamily._dependencies,
          allTransitiveDependencies:
              FetchAccountFamily._allTransitiveDependencies,
          accountId: accountId,
        );

  FetchAccountProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.accountId,
  }) : super.internal();

  final String accountId;

  @override
  Override overrideWith(
    FutureOr<AccountModel> Function(FetchAccountRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchAccountProvider._internal(
        (ref) => create(ref as FetchAccountRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        accountId: accountId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<AccountModel> createElement() {
    return _FetchAccountProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchAccountProvider && other.accountId == accountId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, accountId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchAccountRef on AutoDisposeFutureProviderRef<AccountModel> {
  /// The parameter `accountId` of this provider.
  String get accountId;
}

class _FetchAccountProviderElement
    extends AutoDisposeFutureProviderElement<AccountModel>
    with FetchAccountRef {
  _FetchAccountProviderElement(super.provider);

  @override
  String get accountId => (origin as FetchAccountProvider).accountId;
}

String _$accountUpdateHash() => r'1dc558484ee3848e6dc980b0d5580efd38ae4e50';

/// See also [AccountUpdate].
@ProviderFor(AccountUpdate)
final accountUpdateProvider =
    AutoDisposeNotifierProvider<AccountUpdate, RequestState<dynamic>>.internal(
  AccountUpdate.new,
  name: r'accountUpdateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$accountUpdateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AccountUpdate = AutoDisposeNotifier<RequestState<dynamic>>;
String _$accountAddHash() => r'5cafafc5cc52eb50b6824a7f39d432f346e923ce';

/// See also [AccountAdd].
@ProviderFor(AccountAdd)
final accountAddProvider =
    AutoDisposeNotifierProvider<AccountAdd, RequestState<dynamic>>.internal(
  AccountAdd.new,
  name: r'accountAddProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$accountAddHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AccountAdd = AutoDisposeNotifier<RequestState<dynamic>>;
String _$accountDeleteHash() => r'ba53da0701107eda7af42c38a3865317868321d3';

/// See also [AccountDelete].
@ProviderFor(AccountDelete)
final accountDeleteProvider =
    AutoDisposeNotifierProvider<AccountDelete, RequestState<dynamic>>.internal(
  AccountDelete.new,
  name: r'accountDeleteProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$accountDeleteHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AccountDelete = AutoDisposeNotifier<RequestState<dynamic>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
