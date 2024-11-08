import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_app/view/explorer_screen/cubit/explorer_screen_cubit.dart';
import 'package:real_estate_app/widgets/text.dart';

class SelectCommunityWidget extends StatefulWidget {
  const SelectCommunityWidget({super.key});

  @override
  State<SelectCommunityWidget> createState() => _SelectCommunityWidgetState();
}

class _SelectCommunityWidgetState extends State<SelectCommunityWidget> {
  @override
  void initState() {
    context.read<ExplorerScreenCubit>().getCommunities();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExplorerScreenCubit, ExplorerScreenState>(
      buildWhen: (previous, current) {
        return previous.explorerFilter != current.explorerFilter ||
            previous.communityList.length != current.communityList.length;
      },
      builder: (context, state) {
        final selected = state.explorerFilter?['community'];
        return Column(
          children: [
            SizedBox(
              height: 20,
            ),
            TitleText(text: "Select a community to explore"),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Wrap(
                runSpacing: 8,
                spacing: 8,
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                children: state.communityList
                    .map((e) => InkWell(
                          onTap: () {
                            context
                                .read<ExplorerScreenCubit>()
                                .setExplorerFilter({
                              "communities": [
                                {
                                  'value':
                                      e.communities.map((e) => e.id).toList(),
                                  'label': e.teamName
                                }
                              ]
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 6, vertical: 3),
                            decoration: BoxDecoration(
                              color: selected == e.id
                                  ? Theme.of(context).colorScheme.secondary
                                  : null,
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Text(
                              e.teamName,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                    color: selected != e.id
                                        ? Theme.of(context)
                                            .colorScheme
                                            .secondary
                                        : Theme.of(context)
                                            .colorScheme
                                            .onSecondary,
                                  ),
                            ),
                          ),
                        ))
                    .toList(),
              ),
            ),
          ],
        );
      },
    );
  }
}
