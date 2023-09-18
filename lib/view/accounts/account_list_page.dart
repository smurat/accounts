import 'package:accounts_app/constants/route_paths.dart';
import 'package:accounts_app/localization/app_localizations_context.dart';
import 'package:accounts_app/localization/app_localizations_provider.dart';
import 'package:accounts_app/view/accounts/account_card_shimmer.dart';
import 'package:accounts_app/viewmodel/account_feature/providers/accounts_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AccountListPage extends HookConsumerWidget {
  const AccountListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = useScrollController();
    // final accountsListPr = ref.watch(fetchAccountsWithPaginationProvider(1));
    return Scaffold(
      appBar: AppBar(
        title: Text(context.loc.accounts),
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.language),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  value: const Locale("en", "US"),
                  child: Text(context.loc.englishLangLabel),
                ),
                PopupMenuItem(
                  value: const Locale("tr", "TR"),
                  child: Text(context.loc.turkishLangLabel),
                ),
              ];
            },
            onSelected: (Locale locale) {
              ref.read(changeLocaleStateNotifierProvider.notifier).changeLocale(locale);
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.goNamed(RoutePaths.accountDetails);
        },
        child: const Icon(Icons.add),
      ),
      body: Scrollbar(
        child: Column(
          children: [
            Expanded(
              child: RefreshIndicator(
                onRefresh: () async {
                  ref.invalidate(fetchAccountsWithPaginationProvider);
                  return ref.read(fetchAccountsWithPaginationProvider(1).future);
                },
                child: ListView.custom(
                  controller: scrollController,
                  childrenDelegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final page = index ~/ pageSize + 1;
                      final indexInPage = index % pageSize;
                      final accountList = ref.watch(
                        fetchAccountsWithPaginationProvider(page),
                      );
                      return accountList.when(
                        error: (err, stack) => Text('Error $err, stack: $stack'),
                        loading: () => const AccountCardShimmer(),
                        data: (data) {
                          if (indexInPage >= data.length) return null;

                          final account = data[indexInPage];
                          return Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(8),
                              onTap: () {
                                context.goNamed(RoutePaths.accountDetails,
                                    queryParameters: {'id': account.id?.toString()});
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                        text: TextSpan(
                                            text: "${context.loc.name}: ",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge
                                                ?.copyWith(fontWeight: FontWeight.bold),
                                            children: [
                                          TextSpan(
                                              text: account.name?.toString() ?? '-',
                                              style: Theme.of(context).textTheme.bodyLarge)
                                        ])),
                                    const SizedBox(height: 4),
                                    RichText(
                                        text: TextSpan(
                                            text: "${context.loc.surName}: ",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge
                                                ?.copyWith(fontWeight: FontWeight.bold),
                                            children: [
                                          TextSpan(
                                              text: account.surName?.toString() ?? '-',
                                              style: Theme.of(context).textTheme.bodyLarge)
                                        ])),
                                    const SizedBox(height: 4),
                                    RichText(
                                        text: TextSpan(
                                            text: "${context.loc.birthDate}: ",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge
                                                ?.copyWith(fontWeight: FontWeight.bold),
                                            children: [
                                          TextSpan(
                                              text: account.birthDate?.toString() ?? '-',
                                              style: Theme.of(context).textTheme.bodyLarge)
                                        ])),
                                    const SizedBox(height: 4),
                                    RichText(
                                        text: TextSpan(
                                            text: "${context.loc.salary}: ",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge
                                                ?.copyWith(fontWeight: FontWeight.bold),
                                            children: [
                                          TextSpan(
                                              text: account.salary?.toString() ?? '-',
                                              style: Theme.of(context).textTheme.bodyLarge)
                                        ])),
                                    const SizedBox(height: 4),
                                    RichText(
                                        text: TextSpan(
                                            text: "${context.loc.phoneNumber}: ",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge
                                                ?.copyWith(fontWeight: FontWeight.bold),
                                            children: [
                                          TextSpan(
                                              text: account.phoneNumber?.toString() ?? '-',
                                              style: Theme.of(context).textTheme.bodyLarge)
                                        ])),
                                    const SizedBox(height: 4),
                                    RichText(
                                        text: TextSpan(
                                            text: "${context.loc.identity}: ",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge
                                                ?.copyWith(fontWeight: FontWeight.bold),
                                            children: [
                                          TextSpan(
                                              text: account.identity?.toString() ?? '-',
                                              style: Theme.of(context).textTheme.bodyLarge)
                                        ])),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
