import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_app/core/helpers/app_config_helper.dart';
import 'package:real_estate_app/util/color_category.dart';
import 'package:real_estate_app/view/add_deal_screen/add_deal_screen.dart';
import 'package:real_estate_app/view/add_lead_screen/add_lead_screen.dart';
import 'package:real_estate_app/view/add_listing_screen/add_listing_screen.dart';
import 'package:real_estate_app/view/add_pocket_listing_screen/add_pocket_listing_screen.dart';
import 'package:real_estate_app/view/cold_lead_screen/cold_lead_screen.dart';
import 'package:real_estate_app/view/deals_screen/deals_screen.dart';
import 'package:real_estate_app/view/enquiries_screen/enquiries_screen.dart';
import 'package:real_estate_app/view/explorer_screen/explorer_screen.dart';
import 'package:real_estate_app/view/home_layout/quick_access_button.dart';
import 'package:real_estate_app/view/home_screen/home_screen.dart';
import 'package:real_estate_app/view/leads_list_explorer/leads_list_explorer.dart';
import 'package:real_estate_app/view/leads_screen/leads_screen.dart';
import 'package:real_estate_app/view/notifications_screen/notifications_screen.dart';
import 'package:real_estate_app/widgets/text.dart';
import 'package:recase/recase.dart';

import '../../app/auth_bloc/auth_bloc.dart';
import '../../model/user.dart';
import '../../service_locator/injectable.dart';
import '../../widgets/button.dart';
import '../../widgets/s3_image.dart';
import '../../widgets/space.dart';
import '../listings_screen/listing_screen.dart';
import 'kpis_layout_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.child, required this.location})
      : super(key: key);
  final Widget child;
  final String location;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 450,
      ));

  @override
  void initState() {
    getIt<AuthBloc>().add(AuthEvent.checkForCallFeedback());
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  String getGreeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good Morning';
    }
    if (hour < 17) {
      return 'Good Afternoon';
    }
    return 'Good Evening';
  }

  IconData getgreetingIcon() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return Icons.sunny_snowing;
    }
    if (hour < 17) {
      return Icons.sunny;
    }

    return Icons.coffee;
  }

  @override
  Widget build(BuildContext context) {
    final user = context.select<AuthBloc, User?>((bloc) => bloc.state.user);
    return Scaffold(
      backgroundColor: bgColor,
      resizeToAvoidBottomInset: false,
      drawer: Drawer(
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, left: 12),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              getgreetingIcon(),
                              color: Colors.white,
                            ),
                            HorizontalSmallGap(),
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                text: 'Hey,\n',
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall
                                    ?.copyWith(
                                        fontSize: 12, color: Colors.white),
                              ),
                              TextSpan(
                                text: getGreeting(),
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(
                                        fontSize: 16, color: Colors.white),
                              )
                            ])),
                          ],
                        ),
                        Image.asset(
                          'assets/images/logo-black.png',
                          width: 100,
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      ],
                    ),
                  ),
                ),
                const VerticalSmallGap(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    bottomRight: Radius.circular(12)),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://assets.architecturaldigest.in/photos/63806da6d2c4a1a597b273fd/1:1/w_2896,h_2896,c_limit/1442809583"),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              HeadingText(
                                text:
                                    "${user?.firstName.pascalCase ?? ""} ${user?.lastName.pascalCase ?? ""}",
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              LabelText(
                                text: "${user?.phone ?? "Not available"}",
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.share,
                            color: Colors.white,
                            size: 24,
                          ),
                          VerticalSmallGap(),
                        ],
                      ),
                    ],
                  ),
                ),
                VerticalSmallGap(),
                Row(
                  children: [
                    HeadingText(
                      text: "Quick Access",
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                SizedBox(
                  height: 80,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      QuickAccessButton(
                          text: "Alba Homes \nWebsite",
                          iconData: CupertinoIcons.globe,
                          action: () {
                            // TODO: Navigate to alba homes web page
                          }),
                      HorizontalSmallGap(),
                      QuickAccessButton(
                          text: "Share company\nPortoflio",
                          iconData: Icons.share,
                          action: () {
                            // TODO: Share company profile using share app
                          }),
                      HorizontalSmallGap(),
                      QuickAccessButton(
                          text: "Internet access",
                          iconData: Icons.signal_wifi_0_bar,
                          action: () {
                            // TODO: Navigate to internet access
                          }),
                      // HorizontalSmallGap(),
                      // QuickAccessButton(
                      //     text: "Alba Homes Website",
                      //     iconData: Icons.web,
                      //     action: () {
                      //       // TODO: Navigate to alba homes web page
                      //     }),
                    ],
                  ),
                ), // if (user != null)
                //   Container(
                //     decoration: BoxDecoration(
                //       color: Theme.of(context).colorScheme.background,
                //       borderRadius: BorderRadius.circular(13),
                //     ),
                //     child: Padding(
                //       padding: const EdgeInsets.symmetric(
                //           horizontal: 15, vertical: 8),
                //       child: Column(
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: [
                //           const VerticalSmallGap(),
                //           InkWell(
                //             onTap: () {
                //               context.pushNamed('user_profile');
                //             },
                //             child: Row(
                //               crossAxisAlignment: CrossAxisAlignment.center,
                //               children: [
                //                 Container(
                //                   width: 65,
                //                   height: 65,
                //                   clipBehavior: Clip.hardEdge,
                //                   decoration: BoxDecoration(
                //                     shape: BoxShape.circle,
                //                     color: Colors.grey[100]!,
                //                   ),
                //                   child: S3Image(
                //                     url: user.photo,
                //                     errorWidget: Image.asset(
                //                         'assets/images/person_placeholder.jpeg'),
                //                   ),
                //                 ),
                //                 const SizedBox(width: 6),
                //                 Column(
                //                   crossAxisAlignment: CrossAxisAlignment.start,
                //                   children: [
                //                     Text(
                //                       user.firstName.titleCase,
                //                       style: Theme.of(context)
                //                           .textTheme
                //                           .titleSmall
                //                           ?.apply(
                //                               color: const Color(0xFF000000),
                //                               fontWeightDelta: 2),
                //                     ),
                //                   ],
                //                 ),
                //               ],
                //             ),
                //           ),
                //           const VerticalSmallGap(),
                //         ],
                //       ),
                //     ),
                //   ),
                const VerticalSmallGap(),
                KpisLayoutWidget(),
                const VerticalSmallGap(),
                Builder(builder: (context) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomListTileWithIcon(
                        title: 'Explorer',
                        iconImagePath: 'assets/images/compass.png',
                        children: [
                          ListIcon(
                            title: 'Property Cards',
                            onPressed: () {
                              Scaffold.of(context).closeDrawer();
                              context.pushNamed(ExplorerScreen.routeName);
                            },
                          ),
                          ListIcon(
                            title: 'Leads',
                            onPressed: () {
                              Scaffold.of(context).closeDrawer();
                              context.pushNamed(LeadsExplorerScreen.routeName);
                            },
                          ),
                          ListIcon(
                            title: 'Assigned Property Cards',
                            onPressed: () {
                              Scaffold.of(context).closeDrawer();
                              context.pushNamed(ExplorerScreen.routeName,
                                  queryParameters: {'tab': '1'});
                            },
                          )
                        ],
                      ),
                      CustomListTileWithIcon(
                          title: 'Add New',
                          iconImagePath: 'assets/images/plus.png',
                          children: [
                            ListIcon(
                              title: 'Leads',
                              onPressed: () {
                                Scaffold.of(context).closeDrawer();
                                context.pushNamed(AddLeadScreen.routeName);
                              },
                            ),
                            ListIcon(
                              title: 'Deal',
                              onPressed: () {
                                Scaffold.of(context).closeDrawer();
                                context.pushNamed(AddDealScreen.routeName);
                              },
                            ),
                            ListIcon(
                              title: 'Listing Acquired',
                              onPressed: () {
                                Scaffold.of(context).closeDrawer();
                                context.pushNamed(AddListingScreen.routeName);
                              },
                            ),
                            ListIcon(
                              title: 'Pocket Listing',
                              onPressed: () {
                                Scaffold.of(context).closeDrawer();
                                context.pushNamed(
                                    AddPocketListingScreen.routeName);
                              },
                            ),
                          ]),

                      CustomListTileWithIcon(
                        title: 'Deals',
                        iconImagePath: 'assets/images/deal.png',
                        onPressed: () {
                          Scaffold.of(context).closeDrawer();
                          context.pushNamed(DealsScreen.routeName);
                        },
                      ),
                      // CustomListTileWithIcon(
                      //   title: 'Tickets',
                      //   iconImagePath: 'assets/images/ticket.png',
                      //   onPressed: () {
                      //     Scaffold.of(context).closeDrawer();
                      //     context.pushNamed(TicketsScreen.routeName);
                      //   },
                      // ),
                      VerticalSmallGap(
                        adjustment: 4,
                      ),
                      // CustomListTileWithIcon(
                      //   title: 'Settings',
                      //   iconImagePath: 'assets/images/settings.png',
                      //   onPressed: () {
                      //     Scaffold.of(context).closeDrawer();
                      //     // context.pushNamed('settings');
                      //   },
                      // ),
                      CustomListTileWithIcon(
                        title: 'Logout',
                        iconImagePath: 'assets/images/logout_icon.png',
                        onPressed: () async {
                          final confirm = await showDialog<bool>(
                              context: context,
                              builder: (context) => const ConfirmLogOut());
                          if (confirm == true && mounted) {
                            getIt<AuthBloc>()
                                .add(const AuthEvent.userLoggedOut());
                            context.pop();
                          }
                        },
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      FutureBuilder(
                          future: AppConfigHelper().getAppInfo(),
                          builder: (context, snapshot) {
                            if (snapshot.hasError || !snapshot.hasData) {
                              return SizedBox();
                            }
                            return Column(
                              children: [
                                LabelText(
                                  text:
                                      "Version: ${snapshot.data?.currentVersion ?? "1.0.0"}",
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                SmallText(
                                  text: "Crafted with ❤︎ from Alba corp",
                                  color: Colors.white,
                                )
                              ],
                            );
                          }),
                    ],
                  );
                }),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        title: SizedBox(
          height: 50,
          child: Image.asset(
            'assets/images/logo-black.png',
            fit: BoxFit.fitHeight,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 240, 246, 250),
        foregroundColor: pacificBlue,
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: Icon(Icons.menu),
        //   padding: EdgeInsetsDirectional.only(start: 8),
        // ),
        leadingWidth: 60,
        actions: [
          IconButton(
              onPressed: () {
                context.pushNamed(NotificationsScreen.routeName);
              },
              icon: Icon(Icons.notifications)),
        ],
      ),
      body: SafeArea(
        child: Stack(fit: StackFit.loose, children: [
          SafeArea(
            child: Container(
                margin: EdgeInsets.only(bottom: 70), child: widget.child),
          ),
          Positioned(
              bottom: 0,
              height: 70,
              left: 0,
              right: 0,
              child: bottomBar(widget.location)),
          TapRegion(
            onTapOutside: (event) {
              if (_animationController.isCompleted) {
                _animationController.reverse();
              }
            },
            child: Flow(
              delegate: AddButtonFlowDelegate(
                true,
                animation: _animationController,
              ),
              children: [
                IconButton.filledTonal(
                    padding: EdgeInsets.all(8),
                    style: IconButton.styleFrom(
                        elevation: 10,
                        shadowColor: shadowColor,
                        fixedSize: Size(70, 70),
                        minimumSize: Size(70, 70)),
                    onPressed: () {
                      context.pushNamed(AddLeadScreen.routeName);
                    },
                    icon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageIcon(AssetImage('assets/images/leads.png')),
                        Text('Lead'),
                      ],
                    )),
                IconButton.filledTonal(
                    padding: EdgeInsets.all(8),
                    style: IconButton.styleFrom(
                        elevation: 10,
                        shadowColor: shadowColor,
                        fixedSize: Size(70, 70),
                        minimumSize: Size(70, 70)),
                    onPressed: () {
                      showGeneralDialog(
                          context: context,
                          useRootNavigator: true,
                          barrierDismissible: true,
                          barrierLabel: 'listing type dialog',
                          pageBuilder: (context, anim1, anim2) {
                            return ListingTypeDialog();
                          });
                    },
                    icon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.business), Text('Listing')],
                    )),
                BubbleButton(
                  child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        shape: BoxShape.circle,
                        boxShadow: [BoxShadow(color: shadowColor)],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ImageIcon(AssetImage('assets/images/deal.png')),
                          Text('Deal')
                        ],
                      )),
                ),
                IconButton.filled(
                    padding: EdgeInsets.all(16),
                    style: IconButton.styleFrom(elevation: 4),
                    onPressed: () {
                      if (_animationController.status ==
                          AnimationStatus.completed) {
                        _animationController.reverse();
                      } else {
                        _animationController.forward();
                      }
                    },
                    icon: Icon(Icons.add)),
              ],
            ),
          )
        ]),
      ),
    );
  }

  Widget bottomBar(String matchedLocation) {
    final currentindex = switch (matchedLocation) {
      EnquiriesScreen.routeName => 0,
      ColdLeadScreen.routeName => 1,
      ListingsScreen.routeName => 2,
      DealsScreen.routeName => 3,
      _ => 0
    };
    void onTap(value) {
      switch (value) {
        case 0:
          context.goNamed(EnquiriesScreen.routeName);
          return;
        case 1:
          context.goNamed(ColdLeadScreen.routeName);
          return;
        case 2:
          context.goNamed(ListingsScreen.routeName);
          return;
        case 3:
          context.goNamed(DealsScreen.routeName);
          return;

        default:
          context.goNamed(EnquiriesScreen.routeName);
          return;
      }
    }

    return Container(
      decoration: BoxDecoration(color: Colors.white),
      padding: EdgeInsets.zero,
      child: Row(
        children: [
          BottomNavBarItem(
            text: 'Enquiries',
            iconPath: 'assets/images/task.png',
            index: 0,
            onTap: onTap,
            selectedIndex: currentindex,
          ),
          BottomNavBarItem(
            text: 'Explorer',
            iconPath: 'assets/images/leads.png',
            index: 1,
            onTap: onTap,
            selectedIndex: currentindex,
          ),
          Spacer(),
          BottomNavBarItem(
            text: 'Listings',
            iconPath: 'assets/images/task.png',
            index: 2,
            onTap: onTap,
            selectedIndex: currentindex,
          ),
          BottomNavBarItem(
            text: 'Deals',
            icon: Icons.business_outlined,
            index: 3,
            onTap: onTap,
            selectedIndex: currentindex,
          ),
          // BottomNavBarItem(
          //   text: 'Deals',
          //   iconPath: 'assets/images/deal.png',
          //   index: 3,
          //   onTap: onTap,
          //   selectedIndex: currentindex,
          // ),
        ],
      ),
    );
  }
}

class BubbleButton extends StatelessWidget {
  const BubbleButton({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        context.pushNamed(
          AddDealScreen.routeName,
          extra: child,
        );
      },
      child: child,
    );
  }
}

class AddButtonFlowDelegate extends FlowDelegate {
  final Animation<double> _animation;
  final bool active;

  AddButtonFlowDelegate(this.active, {required Animation<double> animation})
      : _animation = Tween(begin: 0.0, end: 1.0)
            .chain(CurveTween(curve: Curves.easeInCubic))
            .animate(animation),
        super(repaint: animation);

  @override
  void paintChildren(FlowPaintingContext context) {
    final width = context.size.width;
    final height = context.size.height;
    final originWidth = width / 2 - 30;
    final originHeight = height - 80;
    final radius = 100 * _animation.value;

    for (int i = 0; i <= 3; i++) {
      final theta = i * pi * 0.5 / (4 - 2) + pi * 0.25;
      final x = i == 3 ? originWidth : (originWidth - 10) - radius * cos(theta);
      final y = i == 3 ? originHeight : originHeight - radius * sin(theta);
      final buttonSize = context.getChildSize(i);
      final buttonWidth = buttonSize?.width ?? 0;
      final buttonHeight = buttonSize?.height ?? 0;

      final transform = Matrix4.identity()
        ..translate(x, y, 0)
        ..translate(buttonWidth / 2, buttonHeight / 2)
        ..scale(i == 3 ? 1.0 : _animation.value)
        ..translate(-buttonWidth / 2, -buttonHeight / 2);
      context.paintChild(i, transform: transform);
    }
  }

  @override
  bool shouldRepaint(AddButtonFlowDelegate oldDelegate) {
    return _animation != oldDelegate._animation;
  }
}

class BottomNavBarItem extends StatelessWidget {
  const BottomNavBarItem(
      {super.key,
      required this.text,
      this.icon,
      required this.onTap,
      required this.index,
      this.iconPath,
      required this.selectedIndex});
  final int index;
  final int selectedIndex;
  final String text;

  final IconData? icon;
  final String? iconPath;
  final void Function(int index) onTap;

  @override
  Widget build(BuildContext context) {
    final bgColor = Theme.of(context).colorScheme.primaryContainer;
    final primaryColor = Theme.of(context).colorScheme.primary;
    final selectedTextStyle =
        Theme.of(context).textTheme.labelLarge?.copyWith(color: primaryColor);
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          decoration: selectedIndex == index
              ? BoxDecoration(
                  color: bgColor, borderRadius: BorderRadius.circular(12))
              : null,
          child: InkWell(
            onTap: () {
              onTap.call(index);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon != null
                    ? Icon(
                        icon,
                        color: selectedIndex == index ? primaryColor : null,
                      )
                    : ImageIcon(
                        AssetImage(iconPath!),
                        color: selectedIndex == index ? primaryColor : null,
                      ),
                Text(
                  text,
                  style: selectedIndex == index ? selectedTextStyle : null,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ConfirmLogOut extends StatefulWidget {
  const ConfirmLogOut({
    super.key,
  });

  @override
  State<ConfirmLogOut> createState() => _ConfirmLogOutState();
}

class _ConfirmLogOutState extends State<ConfirmLogOut> {
  late final TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      content: Stack(
        alignment: Alignment.topRight,
        children: <Widget>[
          // The AlertDialog content
          Container(
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const VerticalSmallGap(),
                Text.rich(
                  TextSpan(
                    text: "Are you sure to logout",
                    style: Theme.of(context).textTheme.titleSmall?.apply(
                          color: const Color(0xFF484848),
                          fontWeightDelta: 2,
                        ),
                  ),
                ),
                const VerticalSmallGap(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 2,
                      child: OutlinedButton(
                        child: Text('Cancel'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                    const HorizontalSmallGap(),
                    Expanded(
                      flex: 3,
                      child: AppPrimaryButton(
                        text: 'Confirm',
                        onTap: () async {
                          Navigator.of(context).pop(true);
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.close, color: Color(0xFF8B8B8B)),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}

class ListIcon {
  final String title;
  final VoidCallback onPressed;

  ListIcon({
    required this.title,
    required this.onPressed,
  });
}

class CustomListTileWithIcon extends StatelessWidget {
  final String title;
  final String iconImagePath;
  final VoidCallback? onPressed;
  final List<ListIcon>? children;

  const CustomListTileWithIcon({
    super.key,
    required this.title,
    required this.iconImagePath,
    this.onPressed,
    this.children,
  });

  @override
  Widget build(BuildContext context) {
    return children == null
        ? widget(context, title, iconImagePath, onPressed)
        : ExpansionTile(
            shape: Border.fromBorderSide(BorderSide.none),
            tilePadding: EdgeInsets.zero,
            title: widget(context, title, iconImagePath, onPressed),
            initiallyExpanded: true,
            iconColor: Theme.of(context).colorScheme.onPrimary,
            collapsedIconColor: Theme.of(context).colorScheme.onPrimary,
            children: children!
                .map((e) => Row(
                      children: [
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                            child: widget(context, e.title, null, e.onPressed)),
                      ],
                    ))
                .toList(),
          );
  }

  Widget widget(BuildContext context, String title, String? iconImagePath,
          VoidCallback? onPressed) =>
      ListTile(
        onTap: onPressed,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(11.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.15),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(11),
                ),
                child: iconImagePath != null
                    ? ImageIcon(
                        AssetImage(iconImagePath),
                        color: Theme.of(context).colorScheme.onPrimary,
                      )
                    : Icon(
                        Icons.circle,
                        size: 8,
                        color: Colors.white,
                      ),
              ),
              const SizedBox(width: 16.0),
              Text(
                title,
                style: Theme.of(context).textTheme.titleSmall?.apply(
                      color: const Color(0xFFFFFFFF),
                      fontWeightDelta: 2,
                    ),
              ),
            ],
          ),
        ),
      );
}

class ListingTypeDialog extends StatelessWidget {
  const ListingTypeDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TitleText(text: 'Choose Listing Type'),
            VerticalSmallGap(),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  context.pushNamed(AddListingScreen.routeName);
                },
                child: Text('Listing Acquired')),
            VerticalSmallGap(
              adjustment: .2,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();

                  context.pushNamed(AddPocketListingScreen.routeName);
                },
                child: Text('Pocket Listing')),
          ],
        ),
      ),
    );
  }
}
