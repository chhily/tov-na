import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tov_na/model/destination/cambodia.dart';
import 'package:tov_na/page/destination/widget/app_bar.dart';

import 'widget/description.dart';
import 'widget/image.dart';

class DestinationPage extends ConsumerStatefulWidget {
  const DestinationPage({super.key});

  @override
  ConsumerState createState() => _DestinationPageState();
}

class _DestinationPageState extends ConsumerState<DestinationPage> {
  late ScrollController _scrollController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      initialScroll();
    });
  }

  void initialScroll() {
    _scrollController.animateTo(
      MediaQuery.of(context).size.height * 0.2,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Destination destination =
        ModalRoute.of(context)?.settings.arguments as Destination;
    return Scaffold(
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            DestinationAppBar(
                onPressed: () {},
                forceElevated: innerBoxIsScrolled,
                background: ImageDescription(imgUrl: destination.imageUrl))
          ];
        },
        body: DescriptionWidget(value: destination),
      ),
    );
  }
}
