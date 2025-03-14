import 'package:fit_map/pages/list/view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ListPage extends HookConsumerWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemsState = ref.watch(listViewModelProvider);
    final reload = ref.read(listViewModelProvider.notifier).updateList;

    useEffect(() {
      reload;
      return null;
    }, [itemsState]);
    return Scaffold(
        body: Container(
      child: itemsState.when(
        data: (state) => ListView.builder(
          itemCount: state.dvancedDist.length,
          itemBuilder: (context, index) {
            final dist = state.dvancedDist[index];
            return Column(
              children: [
                ListTile(
                  title: Text('距離: $dist'),
                  subtitle: Text('日時: ${state.createdAt[index]}'),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () async {
                      ref
                          .read(listViewModelProvider.notifier)
                          .delete(state.dvancedDist[index]);
                    },
                  ),
                ),
                const Divider(
                  height: 0,
                ),
              ],
            );
          },
        ),
        loading: () => const CircularProgressIndicator(),
        error: (error, _) => Text('Error: $error'),
      ),
    ));
  }
}
