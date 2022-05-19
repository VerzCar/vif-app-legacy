part of 'home_cubit.dart';

enum HomeTab {
  rankingList,
  search,
  settings,
}

class HomeState extends Equatable {
  const HomeState({
    this.tab = HomeTab.rankingList,
  });

  final HomeTab tab;

  @override
  List<Object> get props => [tab];
}
