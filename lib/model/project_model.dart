import 'package:flutter/material.dart';

class ProjectModel {
  final String imagePath, title, desc;
  final List<LinkModel> links;
  final bool isCompleted;

  ProjectModel({
    required this.imagePath,
    required this.title,
    required this.desc,
    required this.links,
    this.isCompleted = false,
  });
}

class LinkModel {
  final String title, link;
  final Widget? icon;

  LinkModel({required this.title, required this.link, this.icon});
}
