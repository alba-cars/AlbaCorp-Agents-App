import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/model/property_card_details_model.dart';
import 'package:real_estate_app/model/property_card_note_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/view/property_card_details/widgets/show_add_note_dialog.dart';
import 'package:real_estate_app/widgets/space.dart';

class PropertyNotesSection extends StatelessWidget {
  final List<PropertyCardNoteModel> notes;
  final PropertyCardDetailsModel? propertyCard;

  const PropertyNotesSection({
    Key? key,
    required this.notes,
    required this.propertyCard,
  }) : super(key: key);

  bool get isMyPropertyCard {
    if (propertyCard == null) return false;

    return (propertyCard?.currentAgent is String &&
            getIt<AuthBloc>().state.agent?.id == propertyCard?.currentAgent) ||
        (propertyCard?.currentAgent is Map &&
            getIt<AuthBloc>().state.agent?.id ==
                propertyCard?.currentAgent['id']);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return SliverList(
      delegate: SliverChildListDelegate([
        // Section header
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Notes',
                style: textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (isMyPropertyCard)
                ElevatedButton.icon(
                  icon: Icon(Icons.add, size: 16),
                  label: Text('Add Note'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: theme.colorScheme.primary,
                    foregroundColor: theme.colorScheme.onPrimary,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    showAddNoteDialog(context);
                  },
                ),
            ],
          ),
        ),

        // No notes message
        if (notes.isEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Card(
              elevation: 0,
              color: Colors.grey[100],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(color: Colors.grey[300]!),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Column(
                    children: [
                      Icon(
                        Icons.note_alt_outlined,
                        size: 48,
                        color: Colors.grey[400],
                      ),
                      VerticalSmallGap(),
                      Text(
                        'No notes available for this property',
                        style: textTheme.bodyMedium?.copyWith(
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

        // Notes list
        if (notes.isNotEmpty)
          ...notes
              .map((note) => Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    child: _buildNoteCard(context, note),
                  ))
              .toList(),

        // Add spacing at the end
        SizedBox(height: 8),
      ]),
    );
  }

  Widget _buildNoteCard(BuildContext context, PropertyCardNoteModel note) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Card(
      elevation: 0,
      color: Colors.amber[50],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.amber[100]!),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              note.message ?? '',
              style: textTheme.bodyMedium,
            ),
            Divider(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "${note.createdBy?.firstName} ${note.createdBy?.lastName ?? ''}",
                      style: textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      note.createdAt != null
                          ? DateFormat.yMMMd().add_jm().format(note.createdAt!)
                          : 'Date unknown',
                      style: textTheme.bodySmall?.copyWith(
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
