import 'package:portfolio/models/experience_model.dart';
import 'package:portfolio/models/project_model.dart';
import 'package:portfolio/models/skill_model.dart';
import 'package:portfolio/models/testomonial_model.dart';
import 'package:portfolio/utils/assets.dart';

// general infos:
const String resumePath = "assets/files/skander-cv.pdf";
const String myEmail = "skandern0000@gmail.com";
const String phoneNumber = "+216 94415320";
const String linkedInProfile = "https://www.linkedin.com/in/skander-jenhani/";
const String githubProfile = "https://github.com/aconitum001";
const String fbProfile = "https://www.facebook.com/skan.der.92123/";
const String instaProfile = "https://www.instagram.com/skan5522/";
// paragraphes :
const String tagline =
    "I specialize in building sleek, feature-rich mobile applications\nthat combine innovation, user-friendly design, and performance to exceed expectations.";

const String welcomeText =
    "I am Skander Jenhani, a passionate Flutter developer from Tunisia, dedicated to building seamless and innovative mobile applications. "
    "With a strong focus on performance and user experience, I aim to bring creative ideas to life through clean and efficient code. "
    "Let's create something extraordinary together.";
const String aboutMe =
    "I am Skander Jenhani, a passionate Flutter developer and a Computer Science student, who began my development journey in 2023.\n"
    "Since then, I have been dedicated to mastering the art of creating efficient and user-friendly mobile applications.\n"
    "My experience spans both academic and professional pursuits, allowing me to deepen my understanding of various systems and refine my skills in Flutter development.\n"
    "I chose Flutter as my main development framework because of its versatility, cross-platform capabilities, and the ability to create beautiful, high-performance apps with a single codebase. Its vibrant community and powerful tools like GetX for state management and localization have further enhanced my ability to deliver scalable and dynamic solutions.\n"
    "As a freelance developer, I've worked on diverse projects, showcasing my ability to deliver tailored and innovative solutions.\n"
    "In addition to my technical skills, I'm always eager to collaborate with international clients.\n"
    "With a focus on continuous learning and innovation, I strive to create impactful digital experiences that meet both client and user needs.";

List<SkillModel> skillsList = [
  const SkillModel(
    skill: "Git",
    image: Assets.imageImagesGit,
    isSelected: false,
  ),
  const SkillModel(
    skill: "Flutter",
    image: Assets.imageImagesFlutter,
    isSelected: true,
  ),
  const SkillModel(
    skill: "Dart",
    image: Assets.imageImagesDart,
    isSelected: false,
  ),
  const SkillModel(
    skill: "Android",
    image: Assets.imageImagesAndroid,
    isSelected: false,
  ),
  const SkillModel(
    skill: "Figma",
    image: Assets.imageImagesFigma,
    isSelected: false,
  ),
  const SkillModel(
    skill: "Java",
    image: Assets.imageImagesJava,
    isSelected: false,
  ),
  const SkillModel(
    skill: "Firebase",
    image: Assets.imageImagesFirebase,
    isSelected: false,
  ),
  const SkillModel(
    skill: "Supabase",
    image: Assets.imageImagesSupabaseIcon,
    isSelected: false,
  ),
  const SkillModel(
    skill: "GetX",
    image: Assets.imageImagesGetx,
    isSelected: false,
  ),
  const SkillModel(
    skill: "Bloc/Cubit",
    image: Assets.imageImagesCubit,
    isSelected: false,
  ),
];

const List<ExperienceModel> experiences = [
  ExperienceModel(
    companyLogo: Assets.imageImagesFreelancer,
    jobTitle: 'Independent Freelancer',
    date: '2024 - Present',
    isSelected: false,
    description:
        'In 2024, I embarked on my freelance journey, collaborating with clients from across the globe to bring their ideas to life. '
        'From crafting innovative mobile applications to delivering tailor-made solutions, I have built apps across a wide range of categories. '
        'With a focus on quality, functionality, and user experience, I take pride in creating impactful applications that meet and exceed client expectations.',
  ),
  ExperienceModel(
    companyLogo: Assets.imageImagesLogoAmenBank,
    jobTitle: 'Flutter Developer Intern',
    isSelected: true,
    date: 'June 2024 - September 2024',
    description:
        'As a Flutter Developer Intern at Amen Bank, I designed and developed AmenSwift, a robust mobile banking application. '
        'This app streamlines financial services for the bank\'s clients, enabling secure transactions, real-time account management, and seamless accessibility to banking features on the go. '
        'The project not only enhanced customer satisfaction but also reinforced the bank\'s digital transformation efforts. '
        'This experience sharpened my expertise in Flutter development, state management, and the intricacies of banking systems. '
        'Working closely with a collaborative team, I delivered a fully functional, intuitive, and user-centric application tailored to meet the bank\'s unique requirements.',
  ),
];

const List<ProjectModel> projects = [
  ProjectModel(
    image: Assets.imageImagesAmenSwiftCover,
    projectTitle: 'AmenSwift',
    projectDecription:
        "Developed a fully functional mobile banking application for a bank in Tunisia. The app features secure user authentication, transaction tracking, and intuitive navigation, providing a modern and efficient banking experience for users. The application ensures a seamless user experience while maintaining the highest standards of security and performance.",
    youtubeLink: "https://www.youtube.com/watch?v=XFmJ88LnZLQ",
    githubLink: null,
  ),
  ProjectModel(
    image: Assets.imageImagesQuizzoCover,
    projectTitle: 'Quizzo',
    projectDecription:
        "Created an engaging quiz application designed to test knowledge across various topics. Quizzo features an intuitive UI, real-time score tracking, and a fun, interactive experience for users. It has been well-received by developers, earning numerous stars on GitHub.",
    youtubeLink: "https://www.youtube.com/watch?v=cLX2DUcYmgg",
    githubLink: "https://github.com/aconitum001/Quizzo-flutter-Project",
  ),
  ProjectModel(
    image: Assets.imageImagesTicTacToe,
    projectTitle: 'Tic Tac Toe Game',
    projectDecription:
        "Developed a modern Tic Tac Toe game featuring single-player and multiplayer modes, customizable skins, challenges, and a points-based reward system. The game is designed to provide an engaging and competitive experience for players.",
    youtubeLink: "https://www.youtube.com/shorts/d5HXhgMxbuE",
    githubLink: "https://github.com/aconitum001/Tic-Tac-Toe",
  ),
  ProjectModel(
    image: Assets.imageImagesFoody,
    projectTitle: 'Foody - Meal Planning and Recipe App',
    projectDecription:
        "Built an app designed for food enthusiasts, featuring meal planning, recipe exploration, and personalized suggestions. Foody combines a sleek design with intuitive functionality to enhance the culinary experience.",
    youtubeLink: "https://www.youtube.com/watch?v=EUBfY62WCj8&t=6s",
    githubLink: "https://github.com/aconitum001/Foody-Meals-App",
  ),
  ProjectModel(
    image: Assets.imageImagesHealthPal,
    projectTitle: 'HealthPal - Doctor App UI',
    projectDecription:
        "Developed a comprehensive UI for HealthPal, a doctor app featuring onboarding, modern login and sign-up interfaces, and an admin page integrated with Firebase. The app offers seamless user experience for both patients and healthcare providers.",
    youtubeLink: null,
    githubLink: "https://github.com/yourusername/HealthPal-Doctor-App",
    linkedinLink:
        "https://www.linkedin.com/feed/update/urn:li:activity:7254242680036073473/",
  ),
  ProjectModel(
    image: Assets.imageImagesGroceryApp,
    projectTitle: 'Modern Grocery App UI',
    projectDecription:
        "Designed a modern grocery shopping app UI featuring a sleek design, intuitive navigation, and efficient management of items and cart functionality. The UI provides a contemporary and user-friendly shopping experience.",
    youtubeLink: null,
    githubLink: "https://github.com/aconitum001/groceryUI",
    linkedinLink:
        "https://www.linkedin.com/feed/update/urn:li:activity:7263576436555317248/",
  ),
  ProjectModel(
    image: Assets.imageImagesLibrary,
    projectTitle: 'Modern Mobile Library App UI',
    projectDecription:
        "Designed a modern mobile library application UI tailored for seamless navigation. Features include a home page with categorized books, detailed book views, and a purchase page, optimized for mobile users with an intuitive and responsive interface.",
    youtubeLink: "https://www.youtube.com/shorts/hdiPMjI0Y7A",
    githubLink: "https://github.com/aconitum001/Bookly",
  )
];

const List<TestomonialModel> testimonials = [
  TestomonialModel(
    image: Assets.imageImagesMan,
    message: 'This product has completely exceeded my expectations!'
        'The attention to detail and quality of service provided are simply outstanding. '
        'I couldn’t have asked for a better experience. Highly recommended to anyone looking for excellence!',
    name: "Alex Turner",
    role: 'CEO InnovateTech',
  ),
  TestomonialModel(
    image: Assets.imageImagesWomen,
    message:
        'Fantastic experience! From start to finish, the team was professional, responsive, '
        'and went above and beyond to ensure everything was perfect. '
        'It’s rare to come across such commitment to customer satisfaction these days.',
    name: 'Jane Smith',
    role: 'Client',
  ),
  TestomonialModel(
    image: Assets.imageImagesMan,
    message:
        'Skander Jenhani exceeded my expectations with their expertise and professionalism. '
        'They provided valuable insights and delivered exceptional results. '
        'Their commitment to understanding my needs and delivering tailored solutions truly stands out.',
    name: 'John Doe',
    role: 'Client',
  )
];

const String FONT_FAMILY = "Sora";
