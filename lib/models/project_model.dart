class ProjectModel {
  final String image;
  final String projectTitle;
  final String projectDecription;
  final String? youtubeLink;
  final String? githubLink;

  const ProjectModel({
    required this.image,
    required this.projectTitle,
    required this.projectDecription,
    required this.youtubeLink,
    required this.githubLink,
  });
}
