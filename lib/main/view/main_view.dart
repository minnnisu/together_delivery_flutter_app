import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../view_model/main_view_model.dart';

class MainView extends ConsumerWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var mainViewState = ref.watch(mainViewModelProvider);
    var views = ref.read(mainViewModelProvider.notifier).getViews();

    return views[mainViewState.selectedViewIndex];
  }
}
