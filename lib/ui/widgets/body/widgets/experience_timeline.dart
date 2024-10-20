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
          title: "Desarrollador Multiplataforma | Grupo SIME",
          description: "Empecé trabajando en el desarrollo de un TPV de restauración multiplataforma haciendo desde mantenimiento hasta nuevas funcionalidades e implementaciones hardware y software, actualmente me encuentro desarrollando una aplicación de cocina desde cero además de mantener el TPV mencionado anteriormente.",
          date: "Octubre 2023 - Actualmente",
        ),
        _buildTimelineStep(
          context,
          title: "Prácticas Desarrollador Multiplataforma | AOINK",
          description: "Desarrollo de pequeñas aplicaciones internas para móvil y escritorio con Flutter y Dart",
          date: "Marzo 2023 - Septiembre 2023",
        ),
      ],
    );
  }

  Widget _buildTimelineStep(BuildContext context, {required String title, required String description, required String date}) {
    final iconColor = Theme.of(context).colorScheme.secondaryContainer;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              children: [
                Icon(Icons.circle, size: 16, color: iconColor),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Card(
              elevation: 20,
              color: Theme.of(context).colorScheme.primaryContainer,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
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
            ),
          ),
        ],
      ),
    );
  }
}