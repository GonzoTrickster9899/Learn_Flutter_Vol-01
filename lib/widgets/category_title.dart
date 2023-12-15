import 'package:flutter/material.dart';
import 'package:learn_flutter_vol01/constants.dart';

class CategoryTile extends StatelessWidget {
  final String title;
  final bool active;
  const CategoryTile({
    super.key,
    required this.title,
    this.active = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 30),
      child: Text(
        title, 
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
          color: active ? kPrimaryColor : kTextColor.withOpacity(0.4)
        ),
      )
    );
  }
}