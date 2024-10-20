import 'package:flutter/material.dart';

class ExperienceTimeline extends StatelessWidget {
  const ExperienceTimeline({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTimelineStep(
          context,
          title: "Job Title 1",
          description: "Description of job 1",
          date: "Jan 2020 - Dec 2020",
        ),
        _buildTimelineStep(
          context,
          title: "Job Title 2",
          description: "Description of job 2",
          date: "Jan 2021 - Dec 2021",
        ),
      ],
    );
  }

  Widget _buildTimelineStep(BuildContext context, {required String title, required String description, required String date}) {
    final iconColor = Theme.of(context).colorScheme.secondaryContainer;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Column(
            children: [
              Icon(Icons.circle, size: 16, color: iconColor),
            ],
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text(date, style: const TextStyle(fontSize: 14, color: Colors.grey)),
              const SizedBox(height: 5),
              Text(description, style: const TextStyle(fontSize: 16)),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ],
    );
  }
}