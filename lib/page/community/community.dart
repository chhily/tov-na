import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tov_na/core/constant/constants.dart';

import 'widget/post_widget.dart';

class CommunityPage extends ConsumerStatefulWidget {
  const CommunityPage({super.key});

  @override
  ConsumerState createState() => _CommunityPageState();
}

class _CommunityPageState extends ConsumerState<CommunityPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        itemBuilder: (context, index) {
          return const PostWidget();
        },
        separatorBuilder: (context, index) => AppSize.mediumVerticalSpacing,
        itemCount: 10);
  }
}
