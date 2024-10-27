import 'package:equatable/equatable.dart';
import 'package:my_portfolio/data/model/skill.dart';

enum ProjectStatus { workingOn, finished }

class Project extends Equatable {
  final String title;
  final String description;
  final String image;
  final ProjectStatus status;
  final List<Skill> skills;

  const Project({
    required this.title,
    required this.description,
    required this.image,
    required this.status,
    required this.skills,
  });

  static get projects =>
      [
        const Project(title: "Baccus TPV",
            description: "Tpv de restauración hecho en flutter con Bloc como state management principal. \n\nEsta app contiene multiples funcionalidades desde una gestión de mesas compleja hasta la gestión de cuentas con sistema de facturación de clientes integrada. Además de estar conectada a un backend con Java y MySql y multiples integraciones tanto software como hardware.",
            image: "a",
            status: ProjectStatus.finished,
            skills: [Skill.flutter, Skill.java, Skill.spring, Skill.mysql]),
      ];

  Project copyWith({
    String? title,
    String? description,
    String? image,
    ProjectStatus? status,
    List<Skill>? skills,
  }) {
    return Project(
      title: title ?? this.title,
      description: description ?? this.description,
      image: image ?? this.image,
      status: status ?? this.status,
      skills: skills ?? this.skills,
    );
  }

  @override
  List<Object?> get props => [title, description, image, status,skills];
}