import 'package:flutter/material.dart';
import 'package:flutter_gutter/flutter_gutter.dart';
import 'package:projects/src/classes/style_for_text.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../riverpod/home_group_provider.dart';

class HomeGroup extends ConsumerStatefulWidget {
  const HomeGroup({super.key});

  @override
  ConsumerState<HomeGroup> createState() => _HomeGroupState();
}

final homeGroupProvider = ChangeNotifierProvider<HomeGroupProvider>((ref) {
  return HomeGroupProvider();
});

class _HomeGroupState extends ConsumerState<HomeGroup> {
  static List<String> homeGroupList = <String>[
    'Recent',
    'Popular',
    'Best seller',
  ];
  @override
  Widget build(BuildContext context) {
    final homeGroupIndex = ref.watch(homeGroupProvider);
    return SizedBox(
      height: 45,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 15.0),
        scrollDirection: Axis.horizontal,
        itemCount: homeGroupList.length,
        separatorBuilder: (_, i) => GutterMedium(),
        itemBuilder: (context, index) {
          var item = homeGroupList[index];
          return TextButton(
            style: ButtonStyle(
              fixedSize: WidgetStateProperty.resolveWith<Size>((
                Set<WidgetState> states,
              ) {
                return Size(100, 45);
              }),
              backgroundColor: WidgetStateProperty.all(
                homeGroupIndex.sIndex == index
                    ? Theme.of(context).colorScheme.onPrimary
                    : Theme.of(context).colorScheme.surface,
              ),
            ),
            child: Text(
              item,
              style: StyleForText().josefin.copyWith(
                color:
                homeGroupIndex.sIndex == index
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.onSurface,
                fontWeight: homeGroupIndex.sIndex == index ? FontWeight.w700 : FontWeight.w400,
              ),
            ),
            onPressed: () {
              homeGroupIndex.homeGroupProvider(index);
            },
          );
        },
      ),
    );
  }
}
