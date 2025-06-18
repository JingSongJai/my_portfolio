import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/model/project_model.dart';

List<ProjectModel> projects = [
  ProjectModel(
    imagePath: 'assets/image/WinFormDictionary.png',
    title: 'Dictionary WinForm (API)',
    desc: 'English Dictionary WinForm using API',
    isCompleted: true,
    links: [
      LinkModel(
        title: 'Github',
        link: 'https://github.com/JingSongJai/dictionary-winform-api',
        icon: SvgPicture.asset('assets/icon/svg/Github.svg', width: 22),
      ),
    ],
  ),
  ProjectModel(
    imagePath: 'assets/image/NoteApp.jpg',
    title: 'Google NoteApp (Clone)',
    desc: 'NoteApp that base on Google Note',
    isCompleted: true,
    links: [
      LinkModel(
        title: 'Github',
        link: 'https://github.com/JingSongJai/note_app_supabase',
        icon: SvgPicture.asset('assets/icon/svg/Github.svg', width: 22),
      ),
    ],
  ),
  ProjectModel(
    imagePath: 'assets/image/Project-1.png',
    title: 'CV Generator',
    desc: 'Generate CV with real time preview.',
    isCompleted: true,
    links: [
      LinkModel(
        title: 'Github',
        link: 'https://github.com/JingSongJai/project-cv-generator',
        icon: SvgPicture.asset('assets/icon/svg/Github.svg', width: 22),
      ),
    ],
  ),
  ProjectModel(
    imagePath: 'assets/image/FlutterDictionary.png',
    title: 'Flutter Dictionary API',
    desc: 'A Simple Flutter English Dictionary API',
    isCompleted: true,
    links: [
      LinkModel(
        title: 'Github',
        link: 'https://github.com/JingSongJai/flutter_dictionary_api',
        icon: SvgPicture.asset('assets/icon/svg/Github.svg', width: 22),
      ),
    ],
  ),
  ProjectModel(
    imagePath: 'assets/image/MusicPlayer.png',
    title: 'Music Player WinForm',
    desc: 'Music Player with rich features.',
    isCompleted: true,
    links: [
      LinkModel(
        title: 'Github',
        link: 'https://github.com/JingSongJai/project_music_player_c-_winform',
        icon: SvgPicture.asset('assets/icon/svg/Github.svg', width: 22),
      ),
    ],
  ),
  ProjectModel(
    imagePath: 'assets/image/YoutubeDownloader.png',
    title: 'Youtube Downloader',
    desc: 'Flutter App for downloading video and music from Youtube.',
    links: [
      LinkModel(
        title: 'Github',
        link: 'https://github.com/JingSongJai/youtube_downloader_flutter',
        icon: SvgPicture.asset('assets/icon/svg/Github.svg', width: 22),
      ),
    ],
  ),
  ProjectModel(
    imagePath: 'assets/image/ExpenseTracker.png',
    title: 'Expanse Tracker (Chamnay)',
    desc: 'An Application that track your transactions and more.',
    links: [
      LinkModel(
        title: 'Github',
        link: 'https://github.com/JingSongJai/project_expense_tracker',
        icon: SvgPicture.asset('assets/icon/svg/Github.svg', width: 22),
      ),
      LinkModel(
        title: 'Live',
        link:
            'https://project-expense-tracker-git-master-taing-chingsongs-projects.vercel.app/',
        icon: Text('<~>'),
      ),
    ],
  ),
];
