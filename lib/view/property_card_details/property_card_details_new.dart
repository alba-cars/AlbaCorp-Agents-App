import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/view/property_card_details/cubit/property_card_details_cubit.dart';
import 'package:real_estate_app/view/property_card_details/widgets/property_header.dart';
import 'package:real_estate_app/view/property_card_details/widgets/property_info_card.dart';
import 'package:real_estate_app/view/property_card_details/widgets/assigned_agent_card.dart';
import 'package:real_estate_app/view/property_card_details/widgets/property_action_buttons.dart';
import 'package:real_estate_app/view/property_card_details/widgets/property_leads_section.dart';
import 'package:real_estate_app/view/property_card_details/widgets/property_notes_section.dart';
import 'package:real_estate_app/view/property_card_details/widgets/property_activity_section.dart';
import 'package:real_estate_app/widgets/space.dart';

class PropertyCardDetailsScreen extends StatelessWidget {
  static const routeName = 'propertyCardDetailsScreen';
  const PropertyCardDetailsScreen({super.key, required this.propertyCardId});

  final String propertyCardId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<PropertyCardDetailsCubit>(param1: propertyCardId),
      lazy: false,
      child: const _PropertyCardDetailsScreenLayout(),
    );
  }
}

class _PropertyCardDetailsScreenLayout extends StatefulWidget {
  const _PropertyCardDetailsScreenLayout();

  @override
  State<_PropertyCardDetailsScreenLayout> createState() =>
      _PropertyCardDetailsScreenLayoutState();
}

class _PropertyCardDetailsScreenLayoutState
    extends State<_PropertyCardDetailsScreenLayout> {
  final ScrollController _scrollController = ScrollController();
  bool _isScrolled = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.offset > 50 && !_isScrolled) {
      setState(() {
        _isScrolled = true;
      });
    } else if (_scrollController.offset <= 50 && _isScrolled) {
      setState(() {
        _isScrolled = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: RefreshIndicator(
        onRefresh: context.read<PropertyCardDetailsCubit>().getPropertyCard,
        child: BlocBuilder<PropertyCardDetailsCubit, PropertyCardDetailsState>(
          builder: (context, state) {
            final propertyCard = state.propertyCard;

            return CustomScrollView(
              controller: _scrollController,
              physics: const AlwaysScrollableScrollPhysics(),
              slivers: [
                // Header with image carousel
                PropertyHeader(
                  propertyCard: propertyCard,
                  isScrolled: _isScrolled,
                ),

                // Property Details & Action Buttons
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Action Buttons (Assign/Return/Convert)
                        PropertyActionButtons(propertyCard: propertyCard),

                        VerticalSmallGap(),

                        // Property Info Card
                        PropertyInfoCard(propertyCard: propertyCard),
                      ],
                    ),
                  ),
                ),

                // Assigned Agent Card (if not your card)
                if (propertyCard != null && propertyCard.currentAgent is Map)
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                      child: AssignedAgentCard(propertyCard: propertyCard),
                    ),
                  ),

                // Leads Section
                PropertyLeadsSection(
                  propertyCard: propertyCard,
                  leads: state.propertyCardLeads,
                  leadsStatus: state.getPropertyCardLeadsStatus,
                ),

                // Notes Section
                PropertyNotesSection(
                  notes: state.propertyCardNotes,
                  propertyCard: propertyCard,
                ),

                // Activity History Section
                PropertyActivitySection(
                  logs: state.propertyCardLogs,
                ),

                // Bottom Spacing
                SliverToBoxAdapter(
                  child: SizedBox(height: 24),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
