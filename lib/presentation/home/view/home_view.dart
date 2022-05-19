import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vote_your_face/presentation/home/cubit/home_cubit.dart';
import 'package:vote_your_face/presentation/ranking_list/ranking_list.dart';
import 'package:vote_your_face/presentation/search/search.dart';
import 'package:vote_your_face/presentation/settings/view/settings_page.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedTab = context.select((HomeCubit cubit) => cubit.state.tab);

    return Scaffold(
      body: IndexedStack(
        index: selectedTab.index,
        children: const [RankingListPage(), SearchPage(), SettingsPage()],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _HomeTabButton(
              groupValue: selectedTab,
              value: HomeTab.rankingList,
              icon: const Icon(Icons.list),
            ),
            _HomeTabButton(
              groupValue: selectedTab,
              value: HomeTab.search,
              icon: const Icon(Icons.search),
            ),
            _HomeTabButton(
              groupValue: selectedTab,
              value: HomeTab.settings,
              icon: const Icon(Icons.settings),
            ),
          ],
        ),
      ),
    );
  }
}

class _HomeTabButton extends StatelessWidget {
  const _HomeTabButton({
    Key? key,
    required this.groupValue,
    required this.value,
    required this.icon,
  }) : super(key: key);

  final HomeTab groupValue;
  final HomeTab value;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => context.read<HomeCubit>().setTab(value),
      iconSize: 32,
      color:
          groupValue != value ? null : Theme.of(context).colorScheme.secondary,
      icon: icon,
    );
  }
}
