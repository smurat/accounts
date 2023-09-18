import 'dart:async';
import 'dart:io';
import 'package:accounts_app/constants/api/api_constants.dart';
import 'package:accounts_app/constants/api/api_error.dart';
import 'package:accounts_app/model/account/account_model.dart';
import 'package:dio/dio.dart';

class AccountsRepository {
  AccountsRepository({required this.dio});
  final Dio dio;

  Future<List<AccountModel>> fetchAccounts({CancelToken? cancelToken}) => _run<List<AccountModel>>(
        request: () => dio.get(
          "${ApiConstants.baseUrl}/api/v1/accounts",
          cancelToken: cancelToken,
        ),
        parse: (data) {
          final accounts = data as List<dynamic>;

          return accounts.map((account) => AccountModel.fromJson(account)).toList();
        },
      );

  Future<List<AccountModel>> fetchAccountsPagination({required int page, int limit = 10, CancelToken? cancelToken}) =>
      _run<List<AccountModel>>(
        request: () => dio.get(
          "${ApiConstants.baseUrl}/${ApiConstants.accountsPath}",
          cancelToken: cancelToken,
          queryParameters: {
            'page': '$page',
            'limit': "$limit",
          },
        ),
        parse: (data) {
          final accounts = data as List<dynamic>;

          return accounts.map((account) => AccountModel.fromJson(account)).toList();
        },
      );

  Future<AccountModel> fetchAccount(String accountId, {CancelToken? cancelToken}) => _run<AccountModel>(
        request: () => dio.get(
          '${ApiConstants.baseUrl}/${ApiConstants.accountsPath}/$accountId',
          cancelToken: cancelToken,
        ),
        parse: (data) => AccountModel.fromJson(data),
      );

  Future<dynamic> updateAccount(AccountModel account, {CancelToken? cancelToken}) => _run<dynamic>(
        request: () => dio.put(
          '${ApiConstants.baseUrl}/api/v1/accounts/${account.id}',
          data: account.toJson(),
          cancelToken: cancelToken,
        ),
        parse: (data) => data,
      );

  Future<dynamic> addAccount(AccountModel account, {CancelToken? cancelToken}) => _run<dynamic>(
        request: () => dio.post(
          '${ApiConstants.baseUrl}/a..pi/v1/accounts',
          data: account.toJson(),
          cancelToken: cancelToken,
        ),
        parse: (data) => data,
      );

  Future<dynamic> deleteAccount(String id, {CancelToken? cancelToken}) => _run<dynamic>(
        request: () => dio.delete(
          '${ApiConstants.baseUrl}/api/v1/accounts/$id',
          cancelToken: cancelToken,
        ),
        parse: (data) => data,
      );

  Future<T> _run<T>({
    required Future<Response> Function() request,
    required T Function(dynamic) parse,
  }) async {
    try {
      final response = await request();
      switch (response.statusCode) {
        case 200:
          return parse(response.data);
        case 201:
          return parse(response.data);
        case 404:
          throw const APIError.notFound();
        default:
          throw const APIError.unknown();
      }
    } on SocketException catch (_) {
      throw const APIError.noInternetConnection();
    }
  }
}
