import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_app/model/deal_document_model.dart';
import 'package:real_estate_app/model/deal_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/view/add_deal_screen/add_deal_screen.dart';
import 'package:real_estate_app/view/add_lead_screen/add_lead_screen.dart';
import 'package:real_estate_app/view/add_listing_screen/add_listing_screen.dart';
import 'package:real_estate_app/view/add_pocket_listing_screen/add_pocket_listing_screen.dart';
import 'package:real_estate_app/view/add_task_screen/add_task_screen.dart';
import 'package:real_estate_app/view/add_ticket_screen/add_ticket_screen.dart';
import 'package:real_estate_app/view/call_feedback_screen/call_feedback_screen.dart';
import 'package:real_estate_app/view/chat_screen/chat_screen.dart';
import 'package:real_estate_app/view/deal_add_document_screen/deal_add_document_screen.dart';
import 'package:real_estate_app/view/deal_details_screen/deal_deatils_screen.dart';
import 'package:real_estate_app/view/deals_screen/deals_screen.dart';
import 'package:real_estate_app/view/explorer_screen/explorer_screen.dart';
import 'package:real_estate_app/view/home_screen/home_screen.dart';
import 'package:real_estate_app/view/image_viewer_screen/image_viewer.dart';
import 'package:real_estate_app/view/lead_detail_screen/lead_detail_screen.dart';
import 'package:real_estate_app/view/leads_list_explorer/leads_list_explorer.dart';
import 'package:real_estate_app/view/leads_screen/leads_screen.dart';
import 'package:real_estate_app/view/listings_screen/listing_screen.dart';
import 'package:real_estate_app/view/maintenance/maintenance_screen.dart';
import 'package:real_estate_app/view/notifications_screen/notifications_screen.dart';
import 'package:real_estate_app/view/pdf_view_screen/pdf_view_screen.dart';
import 'package:real_estate_app/view/property_card_details/property_card_details.dart';
import 'package:real_estate_app/view/root_layout/root_layout.dart';
import 'package:real_estate_app/view/task_detail_screen/task_detail_screen.dart';
import 'package:real_estate_app/view/ticket_detail_screen/ticket_details_screen.dart';
import 'package:real_estate_app/view/tickets_screen/tickets_screen.dart';

import '../app/auth_bloc/auth_bloc.dart';
import '../model/activity_model.dart';
import '../splash_screen.dart';
import '../view/home_layout/home_layout.dart';
import '../view/intro/intro_screen.dart';
import '../view/listing_detail_screen/listing_detail_screen.dart';
import '../view/login/forgot_screen.dart';
import '../view/login/login_screen.dart';
import '../view/login/pass_change_screen.dart';
import '../view/login/reset_screen.dart';

import 'app_routes.dart';

class AppRouter {
  static final RouteObserver<ModalRoute> routerObserver =
      RouteObserver<ModalRoute>();
  static final GoRouter router = GoRouter(
      refreshListenable: GoRouterRefreshStream(getIt<AuthBloc>().stream),
      // observers: [routerObserver],
      redirect: (context, state) {
        final authState = getIt<AuthBloc>().state;
        if ([AuthStatus.Maintenance, AuthStatus.Update]
            .contains(authState.authStatus)) {
          return Routes.maintenanceRoute;
        }
        if (authState.authStatus == AuthStatus.Authenticated) {
          if (state.matchedLocation == Routes.introRoute ||
              state.matchedLocation == Routes.homeRoute ||
              state.matchedLocation == Routes.loginRoute) {
            return HomePage.routeName;
            // } else if (authState.veryImportantActivities != null &&
            //     authState.veryImportantActivities!.isNotEmpty &&
            //     state.uri.path.contains(TaskDetailScreen.routeName) == false) {
            //   return '${TaskDetailScreen.routeName}/${authState.veryImportantActivities!.first}';
          } else if (authState.showFeedbackScreen &&
              state.uri.path.contains(CallFeedbackScreen.routeName) == false &&
              state.uri.path.contains(TaskDetailScreen.routeName) == false) {
            return CallFeedbackScreen.routeName;
          }
          return null;
        } else if (authState.authStatus == AuthStatus.initial) {
          return Routes.homeRoute;
        } else {
          return Routes.loginRoute;
        }
      },
      routes: [
        GoRoute(
          path: Routes.homeRoute,
          pageBuilder: (context, state) => AppTransition(child: SplashScreen()),
        ),
        GoRoute(
          path: Routes.maintenanceRoute,
          pageBuilder: (context, state) =>
              AppTransition(child: MaintenanceScreen()),
        ),
        GoRoute(
          path: Routes.introRoute,
          pageBuilder: (context, state) => AppTransition(child: IntroScreen()),
        ),
        GoRoute(
          path: Routes.loginRoute,
          pageBuilder: (context, state) => AppTransition(child: LoginScreen()),
        ),
        ShellRoute(
            pageBuilder: (context, state, child) =>
                AppTransition(child: RootLayout(child: child)),
            routes: [
              ShellRoute(
                  pageBuilder: (context, state, widget) {
                    print(state.matchedLocation);
                    return AppTransition(
                      child: HomeScreen(
                        child: widget,
                        location: state.matchedLocation,
                      ),
                    );
                  },
                  routes: [
                    GoRoute(
                      path: LeadsScreen.routeName,
                      name: LeadsScreen.routeName,
                      pageBuilder: (context, state) =>
                          AppTransition(child: LeadsScreen()),
                    ),
                    GoRoute(
                      path: HomePage.routeName,
                      name: HomePage.routeName,
                      pageBuilder: (context, state) =>
                          AppTransition(child: HomePage()),
                    ),
                    GoRoute(
                      path: DealsScreen.routeName,
                      name: DealsScreen.routeName,
                      pageBuilder: (context, state) =>
                          AppTransition(child: DealsScreen()),
                    ),
                    GoRoute(
                      path: ListingsScreen.routeName,
                      name: ListingsScreen.routeName,
                      pageBuilder: (context, state) =>
                          AppTransition(child: ListingsScreen()),
                    ),
                  ]),
              GoRoute(
                path: '${HomePage.routeName}/:id',
                name: LeadDetailScreen.routeName,
                pageBuilder: (context, state) {
                  final id = state.pathParameters['id'] ?? '';
                  return AppTransition(
                    child: LeadDetailScreen(
                      leadId: id,
                    ),
                  );
                },
              ),
              GoRoute(
                path: '${ListingDetailsScreen.routeName}/:id',
                name: ListingDetailsScreen.routeName,
                pageBuilder: (context, state) {
                  final id = state.pathParameters['id'] ?? '';

                  return AppTransition(
                    child: ListingDetailsScreen(
                      listingId: id,
                    ),
                  );
                },
              ),
              GoRoute(
                path: '${DealDetailsScreen.routeName}/:id',
                name: DealDetailsScreen.routeName,
                pageBuilder: (context, state) {
                  final id = state.pathParameters['id'] ?? '';
                  return AppTransition(
                    child: DealDetailsScreen(
                      dealId: id,
                    ),
                  );
                },
              ),
              GoRoute(
                path: AddDealScreen.routeName,
                name: AddDealScreen.routeName,
                pageBuilder: (context, state) {
                  final isEdit = state.uri.queryParameters['isEdit'] == 'true';
                  Deal? deal;
                  if (state.uri.queryParameters['deal'] != null) {
                    deal = Deal.fromJson(
                        json.decode(state.uri.queryParameters['deal']!));
                  }
                  return AppTransition(
                      child: AddDealScreen(
                    isEdit: isEdit,
                    deal: deal,
                  ));
                },
              ),
              GoRoute(
                path: AddListingScreen.routeName,
                name: AddListingScreen.routeName,
                pageBuilder: (context, state) {
                  final isEdit = state.uri.queryParameters['isEdit'] == 'true';
                  Deal? deal;
                  if (state.uri.queryParameters['deal'] != null) {
                    deal = Deal.fromJson(
                        json.decode(state.uri.queryParameters['deal']!));
                  }
                  return AppTransition(
                      child: AddListingScreen(
                    isEdit: isEdit,
                    deal: deal,
                  ));
                },
              ),
              GoRoute(
                path: AddPocketListingScreen.routeName,
                name: AddPocketListingScreen.routeName,
                pageBuilder: (context, state) {
                  return AppTransition(child: AddPocketListingScreen());
                },
              ),
              GoRoute(
                path: AddTicketScreen.routeName,
                name: AddTicketScreen.routeName,
                pageBuilder: (context, state) {
                  return AppTransition(child: AddTicketScreen());
                },
              ),
              GoRoute(
                path: TicketDetailScreen.routeName,
                name: TicketDetailScreen.routeName,
                pageBuilder: (context, state) {
                  final id = state.pathParameters['id'] ?? '';
                  return AppTransition(
                      child: TicketDetailScreen(
                    ticketId: id,
                  ));
                },
              ),
              GoRoute(
                path: PropertyCardDetailsScreen.routeName,
                name: PropertyCardDetailsScreen.routeName,
                pageBuilder: (context, state) {
                  final id = state.pathParameters['id'] ?? '';
                  return AppTransition(
                      child: PropertyCardDetailsScreen(
                    propertyCardId: id,
                  ));
                },
              ),
              GoRoute(
                path: "${ChatScreen.routeName}/:id",
                name: ChatScreen.routeName,
                pageBuilder: (context, state) {
                  final id = state.pathParameters['id'] ?? '';
                  return AppTransition(
                      child: ChatScreen(
                    ticketId: id,
                  ));
                },
              ),
              GoRoute(
                path: AddLeadScreen.routeName,
                name: AddLeadScreen.routeName,
                pageBuilder: (context, state) {
                  final Map<String, dynamic>? data = state
                      .uri.queryParameters['data'] as Map<String, dynamic>?;
                  return AppTransition(
                      child: AddLeadScreen(
                    data: data,
                  ));
                },
              ),
              GoRoute(
                path: ExplorerScreen.routeName,
                name: ExplorerScreen.routeName,
                pageBuilder: (context, state) {
                  return AppTransition(child: ExplorerScreen());
                },
              ),
              GoRoute(
                path: TicketsScreen.routeName,
                name: TicketsScreen.routeName,
                pageBuilder: (context, state) {
                  return AppTransition(child: TicketsScreen());
                },
              ),
              GoRoute(
                path: PdfViewScreen.routeName,
                name: PdfViewScreen.routeName,
                pageBuilder: (context, state) {
                  final url = state.pathParameters['url'] ?? '';
                  return AppTransition(
                    child: PdfViewScreen(
                      pdfUrl: url,
                    ),
                  );
                },
              ),
              GoRoute(
                path: ImageViewerScreen.routeName,
                name: ImageViewerScreen.routeName,
                pageBuilder: (context, state) {
                  final url = state.pathParameters['url'] ?? '';
                  return AppTransition(
                    child: ImageViewerScreen(
                      url: url,
                      imageUrls: [],
                    ),
                  );
                },
              ),
              GoRoute(
                path: "${TaskDetailScreen.routeName}/:id",
                name: TaskDetailScreen.routeName,
                pageBuilder: (context, state) {
                  final id = state.pathParameters['id'] ?? '';
                  Activity? activity;
                  try {
                    activity = state.extra as Activity?;
                  } catch (e) {}
                  final bool isBlocking =
                      state.uri.queryParameters['isBlocking'] as bool? ?? false;
                  return AppTransition(
                    child: TaskDetailScreen(
                      taskId: id,
                      activity: activity,
                      isBlocking: isBlocking,
                    ),
                  );
                },
              ),
              GoRoute(
                path: LeadsExplorerScreen.routeName,
                name: LeadsExplorerScreen.routeName,
                pageBuilder: (context, state) {
                  return AppTransition(child: LeadsExplorerScreen());
                },
              ),
              GoRoute(
                path: AddTaskScreen.routeName,
                name: AddTaskScreen.routeName,
                pageBuilder: (context, state) {
                  return AppTransition(child: AddTaskScreen());
                },
              ),
              GoRoute(
                path: NotificationsScreen.routeName,
                name: NotificationsScreen.routeName,
                pageBuilder: (context, state) {
                  return AppTransition(child: NotificationsScreen());
                },
              ),
              GoRoute(
                path: CallFeedbackScreen.routeName,
                name: CallFeedbackScreen.routeName,
                pageBuilder: (context, state) {
                  return AppTransition(child: CallFeedbackScreen());
                },
              ),
              GoRoute(
                path: DealAddDocumentScreen.routeName,
                name: DealAddDocumentScreen.routeName,
                pageBuilder: (context, state) {
                  final id = state.pathParameters['id'] ?? '';
                  final userId = state.uri.queryParameters['userId'] ?? '';
                  final isEdit = state.uri.queryParameters['isEdit'] == 'true';
                  List<DealDocument>? dealDocuments;
                  if (state.uri.queryParameters.containsKey('dealDocuments'))
                    dealDocuments = (json.decode(
                                state.uri.queryParameters['dealDocuments']!)
                            as List)
                        .map((e) => DealDocument.fromJson(e))
                        .toList();
                  return AppTransition(
                      child: DealAddDocumentScreen(
                    dealId: id,
                    userId: userId,
                    isEdit: isEdit,
                    dealDocuments: dealDocuments,
                  ));
                },
              ),
            ]),
        GoRoute(
          path: Routes.forgotRoute,
          pageBuilder: (context, state) => AppTransition(child: ForgotScreen()),
        ),
        GoRoute(
          path: Routes.resetRoute,
          pageBuilder: (context, state) => AppTransition(child: ResetScreen()),
        ),
        GoRoute(
          path: Routes.passChangeRoute,
          pageBuilder: (context, state) =>
              AppTransition(child: PassChangeScreen()),
        ),
      ]);
}

class GoRouterRefreshStream extends ChangeNotifier {
  static AuthState? lastElement;
  GoRouterRefreshStream(Stream<AuthState> stream) {
    notifyListeners();
    final s = stream;
    _subscription = s.listen(
      (AuthState element) {
        if (element.authStatus != lastElement?.authStatus ||
            element.veryImportantActivities?.length !=
                lastElement?.veryImportantActivities?.length ||
            (element.lastCalledNumber != null &&
                lastElement?.lastCalledNumber != element.lastCalledNumber &&
                element.showFeedbackScreen)) {
          notifyListeners();
        }
        lastElement = element;
      },
    );
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}

class AppTransition extends CustomTransitionPage {
  AppTransition({
    required Widget child,
  }) : super(
            child: child,
            transitionDuration: const Duration(milliseconds: 500),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                  opacity: animation.drive(CurveTween(curve: Curves.easeIn)),
                  child: child);
            });
}
