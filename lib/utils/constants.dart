import 'package:portfolio/models/experience_model.dart';
import 'package:portfolio/models/skill_model.dart';
import 'package:portfolio/utils/assets.dart';

const String FONT_FAMILY = "Sora";

List<SkillModel> skillsList = [
  const SkillModel(
    skill: "Git",
    image: Assets.imageImagesGit,
    isSelected: false,
  ),
  const SkillModel(
    skill: "JavaScript",
    image: Assets.imageImagesJavscript,
    isSelected: true,
  ),
  const SkillModel(
    skill: "Sass/Scss",
    image: Assets.imageImagesSass,
    isSelected: false,
  ),
  const SkillModel(
    skill: "Nest.Js",
    image: Assets.imageImagesNest,
    isSelected: false,
  ),
  const SkillModel(
    skill: "Storybook",
    image: Assets.imageImagesStorybook,
    isSelected: false,
  ),
  const SkillModel(
    skill: "Nest.Js",
    image: Assets.imageImagesNest,
    isSelected: false,
  ),
  const SkillModel(
    skill: "Storybook",
    image: Assets.imageImagesStorybook,
    isSelected: false,
  ),
  const SkillModel(
    skill: "Socket.io",
    image: Assets.imageImagesIconSocket,
    isSelected: false,
  ),
  const SkillModel(
    skill: "Sass/Scss",
    image: Assets.imageImagesSass,
    isSelected: false,
  ),
  const SkillModel(
    skill: "Socket.io",
    image: Assets.imageImagesIconSocket,
    isSelected: false,
  ),
];

const List<ExperienceModel> experiences = [
  ExperienceModel(
    companyLogo: Assets.imageImagesFreelancer,
    jobTitle: 'Independent Freelancer',
    date: '2021 - Present',
    isSelected: false,
    description:
        'As an independent freelancer, I have worked on diverse projects, including mobile applications such as Quizzo, Foody, and a Tic Tac Toe game. '
        'I specialize in creating user-friendly and functional applications, integrating state management solutions like GetX, and customizing solutions for clients\' specific needs. '
        'My work also involves collaborating with international clients and targeting niches like banking and QA automation tools.',
  ),
  ExperienceModel(
    companyLogo: Assets.imageImagesLogoAmenBank,
    jobTitle: 'Flutter Developer Intern',
    isSelected: true,
    date: 'June 2024 - September 2024',
    description:
        'During my internship at Amen Bank, I developed a mobile banking app called AmenSwift. '
        'This experience enhanced my skills in Flutter development, state management, and banking systems. '
        'I collaborated with a team to deliver a fully functional and user-friendly application tailored to the bank\'s needs.',
  ),
];
