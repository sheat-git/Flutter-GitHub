import 'package:flutter/material.dart';

class RepositoryPage extends StatelessWidget {
  final int? id;
  final String? owner;
  final String? name;

  const RepositoryPage({
    super.key,
    this.id,
    this.owner,
    this.name,
  }) : assert(id != null || (owner != null && name != null));

  @override
  Widget build(BuildContext context) => Container();
}
