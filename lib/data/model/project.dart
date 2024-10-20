import 'package:equatable/equatable.dart';

enum ProjectStatus { workingOn, finished }

class Project extends Equatable{
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
  // TODO: implement props
  List<Object?> get props => [title];
}