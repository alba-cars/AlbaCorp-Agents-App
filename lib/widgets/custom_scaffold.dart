import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScaffoldWithBanner extends StatelessWidget {
  final AppBar? appBar;
  final Widget body;

  const ScaffoldWithBanner({
    Key? key,
    this.appBar,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bannerController = Provider.of<BannerController>(context);

    // Increment the nested level when this Scaffold is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      bannerController.incrementLevel();
    });

    // Decrement the nested level when this Scaffold is disposed
    WidgetsBinding.instance.addPostFrameCallback((_) {
      bannerController.decrementLevel();
    });

    return Scaffold(
      appBar: appBar,
      body: Column(
        children: [
          Expanded(child: body),
          if (bannerController.showBanner && bannerController.nestedLevel == 1)
            Container(
              color: Colors.yellow,
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: Text('This is a custom banner.'),
                  ),
                  TextButton(
                    onPressed: () {
                      bannerController.hideBanner();
                    },
                    child: Text('DISMISS'),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class BannerController with ChangeNotifier {
  bool _showBanner = true;
  int _nestedLevel = 0;

  bool get showBanner => _showBanner;
  int get nestedLevel => _nestedLevel;

  void incrementLevel() {
    _nestedLevel++;
    notifyListeners();
  }

  void decrementLevel() {
    _nestedLevel--;
    notifyListeners();
  }

  void hideBanner() {
    _showBanner = false;
    notifyListeners();
  }
}
