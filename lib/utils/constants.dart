import 'package:portfolio/models/experience_model.dart';
import 'package:portfolio/models/project_model.dart';
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

const String resumePath = "assets/files/skander-cv.pdf";

const String aboutMe =
    "I am Skander Jenhani, a passionate Flutter developer and a Computer Science student, who began my development journey in 2023.\n"
    "Since then, I have been dedicated to mastering the art of creating efficient and user-friendly mobile applications.\n"
    "My experience includes both academic and professional pursuits, such as developing AmenSwift, a mobile banking app, during my internship at Amen Bank.\n"
    "This opportunity allowed me to deepen my understanding of banking systems and refine my skills in Flutter development.\n\n"
    "As a freelance developer, I've worked on diverse projects, including Quizzo, Foody, and a Tic Tac Toe game, showcasing my ability to deliver tailored and innovative solutions.\n"
    "I take pride in my expertise with tools like GetX for state management and localization, which help me build scalable and dynamic applications.\n\n"
    "In addition to my technical skills, I'm always eager to collaborate with international clients and explore niche markets, such as banking and QA automation tools.\n"
    "With a focus on continuous learning and innovation, I strive to create impactful digital experiences that meet both client and user needs.";

const List<ProjectModel> projects = [
  ProjectModel(
    image: Assets.imageImagesAmenSwiftCover,
    projectTitle: 'AmenSwift',
    projectDecription:
        'AmenSwift is a mobile banking application developed during my internship at Amen Bank. '
        'It provides users with a seamless banking experience, allowing them to manage accounts, transfer money, and track transactions efficiently. '
        'This project deepened my understanding of Flutter development and banking systems.',
    youtubeLink: "https://www.youtube.com/watch?v=XFmJ88LnZLQ",
    githubLink: null,
  ),
  ProjectModel(
    image: Assets.imageImagesQuizzoCover,
    projectTitle: 'Quizzo',
    projectDecription:
        'Quizzo is a feature-rich quiz application designed to provide an engaging way to learn and test knowledge. '
        'With a variety of categories and difficulty levels, it has been highly rated on GitHub for its functionality and design.',
    youtubeLink: "https://www.youtube.com/watch?v=cLX2DUcYmgg",
    githubLink: "https://github.com/aconitum001/Quizzo-flutter-Project",
  ),
  ProjectModel(
    image: Assets.imageImagesTicTacToe,
    projectTitle: 'Tic Tac Toe Game',
    projectDecription:
        'This Tic Tac Toe game offers a fun and competitive experience with solo play against bots of varying difficulties and multiplayer options. '
        'It features point-based rewards, customizable skins, and challenges, making it a unique take on the classic game.',
    youtubeLink: "https://www.youtube.com/shorts/d5HXhgMxbuE",
    githubLink: "https://github.com/aconitum001/Tic-Tac-Toe",
  ),
];
