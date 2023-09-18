/// Metadata used when fetching movies with the paginated search API.
class AccountsPagination {
  AccountsPagination({required this.page, required this.query});
  final int page;
  final String query;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AccountsPagination && other.query == query && other.page == page;
  }

  @override
  int get hashCode => query.hashCode ^ page.hashCode;
}
