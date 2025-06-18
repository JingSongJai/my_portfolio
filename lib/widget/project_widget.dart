import 'package:flutter/material.dart';
import 'package:portfolio/model/project_model.dart';
import 'package:portfolio/widget/button_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectWidget extends StatefulWidget {
  const ProjectWidget({super.key, required this.project});
  final ProjectModel project;

  @override
  State<ProjectWidget> createState() => _ProjectWidgetState();
}

class _ProjectWidgetState extends State<ProjectWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.secondary,
          width: 0.5,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Container(
                height: 100,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.project.imagePath),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Divider(
                color: Theme.of(context).colorScheme.secondary,
                height: 0.5,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  widget.project.title,
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 5),
                Text(
                  widget.project.desc,
                  style: TextStyle(
                    fontSize: 12,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 5),
                Wrap(
                  runSpacing: 5,
                  spacing: 5,
                  children:
                      widget.project.links
                          .map(
                            (link) => ButtonWidget(
                              onPressed: () async {
                                await launchUrl(Uri.parse(link.link));
                              },
                              title: link.title,
                              icon: link.icon,
                            ),
                          )
                          .toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
