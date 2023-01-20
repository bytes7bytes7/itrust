import 'package:flutter/material.dart';

import 'selected_category_list_item.dart';
import 'unselected_category_list_item.dart';

const _paddingV = 10.0;
const _listPaddingH = 10.0;

class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key,
    required this.height,
    required this.categories,
    this.selectedCategory,
    this.onCategoryPressed,
  });

  final double height;
  final List<String> categories;
  final String? selectedCategory;
  final void Function(String category)? onCategoryPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: _paddingV,
        ),
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(
            horizontal: _listPaddingH,
          ),
          physics: const BouncingScrollPhysics(),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            final category = categories[index];

            if (category == selectedCategory) {
              return SelectedCategoryListItem(
                title: category,
                onPressed: () => onCategoryPressed?.call(category),
              );
            }

            return UnselectedCategoryListItem(
              title: category,
              onPressed: () => onCategoryPressed?.call(category),
            );
          },
        ),
      ),
    );
  }
}
