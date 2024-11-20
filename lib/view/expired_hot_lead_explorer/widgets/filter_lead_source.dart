import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_app/app/app.dart';
import 'package:real_estate_app/model/lead_source_category_model.dart';
import 'package:real_estate_app/view/expired_hot_lead_explorer/cubit/expired_hot_lead_explorer_cubit.dart';
import 'package:real_estate_app/widgets/space.dart';

class LeadSourceFilter extends StatefulWidget {
final ExpiredHotLeadExplorerState state;

  const LeadSourceFilter({
    Key? key, required this.state,

  }) : super(key: key);

  @override
  State<LeadSourceFilter> createState() => _LeadSourceFilterState();
}

class _LeadSourceFilterState extends State<LeadSourceFilter> {

  LeadSourceCategory? selectedCategory;

@override
  void didUpdateWidget(covariant LeadSourceFilter oldWidget) {
    if(widget.state.selectedLeadSources.isEmpty){
      selectedCategory =null;
    }
    super.didUpdateWidget(oldWidget);
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.
      symmetric(horizontal: 12,vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          VerticalSmallGap(),
          // Category Dropdown
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.withOpacity(0.3)),
              borderRadius: BorderRadius.circular(8),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<LeadSourceCategory>(
                value: selectedCategory,
                hint: const Text('Select Category'),
                isExpanded: true,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: [
                  const DropdownMenuItem(
                    value: null,
                    child: Text('All Categories'),
                  ),
                  ...widget.state.leadSourceCategories
                     
                      .map((category) => DropdownMenuItem(
                            value: category,
                            child: Text(category.category),
                          )),
                ],
                onChanged: (v){
                  selectedCategory = v;
                  
                  context.read<ExpiredHotLeadExplorerCubit>().selectedLeadSources(v?.sources);
                
                  setState(() {
                    
                  });
      
                },
              ),
            ),
          ),
          const SizedBox(height: 6),
      
          // Selected Sources Chips
          if (widget.state.selectedLeadSources.isNotEmpty)
            Wrap(
              spacing: 4,
              runSpacing: 4,
              children: widget.state.selectedLeadSources.map((leadSource) {
                return InputChip(
                  label: Text(
                    leadSource.name,
                    style: const TextStyle(fontSize: 12),
                  ),
                  onDeleted: () {
                   context.read<ExpiredHotLeadExplorerCubit>().removeFromSelectedLeadSources(leadSource);
                  },
                  deleteIcon: const Icon(Icons.close, size: 16),
                  backgroundColor: Colors.grey.withOpacity(0.1),
                  side: BorderSide.none,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                );
              }).toList(),
            ),
        ],
      ),
    );
  }
}