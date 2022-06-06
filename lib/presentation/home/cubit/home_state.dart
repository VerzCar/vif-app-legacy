part of 'home_cubit.dart';

enum HomeTab {
  circleDetail,
  search,
  settings,
}

class HomeState extends Equatable {
  const HomeState({
    this.tab = HomeTab.circleDetail,
  });

  final HomeTab tab;

  @override
  List<Object> get props => [tab];
}
