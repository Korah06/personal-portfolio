import 'package:equatable/equatable.dart';

enum ProjectStatus { workingOn, finished }

class Project extends Equatable {
  final String title;
  final String description;
  final String image;
  final ProjectStatus status;

  const Project({
    required this.title,
    required this.description,
    required this.image,
    required this.status,
  });

  static get projects =>
      [
        const Project(title: "Baccus TPV",
            description: "Tpv de restauración hecho en flutter con Bloc como state management principal. \n\nEsta app contiene multiples funcionalidades desde una gestión de mesas compleja hasta la gestión de cuentas con sistema de facturación de clientes integrada. Además de estar conectada a un backend con Java y MySql y multiples integraciones tanto software como hardware.",
            image: "a",
            status: ProjectStatus.finished),
      ];

  Project copyWith({
    String? title,
    String? description,
    String? image,
    ProjectStatus? status,
  }) {
    return Project(
      title: title ?? this.title,
      description: description ?? this.description,
      image: image ?? this.image,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [title, description, image, status];
}