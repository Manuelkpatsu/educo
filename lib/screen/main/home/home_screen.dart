import 'package:educo/model/category.dart';
import 'package:educo/model/course.dart';
import 'package:educo/model/course_type.dart';
import 'package:educo/model/lecturer.dart';
import 'package:educo/screen/main/widget/category_tile/category_tile.dart';
import 'package:educo/screen/main/widget/circular_image.dart';
import 'package:educo/screen/main/widget/search_text_field.dart';
import 'package:educo/utils/string_util.dart';
import 'package:flutter/material.dart';

import 'class_tile.dart';
import 'teacher_tile.dart';
import 'widget/category_title_widget.dart';
import 'widget/free_trial_widget.dart';
import 'widget/learn_today_text.dart';
import 'widget/welcome_home_text.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  final List<Category> _popularCategories = [Category.interiorDesign, Category.art];
  final List<Course> _mostWatchedClasses = [
    const Course(
      id: 1,
      name: 'HTML, CSS for noob and nerds!',
      image: 'assets/images/courses/1.png',
      lecturer: Lecturer(id: 1, name: 'Sayef Mamud, PixelCo', occupation: 'Programmer'),
      totalEnrollment: 4000,
      rating: 4.0,
      totalRatings: 4051,
      courseType: CourseType.hot,
    ),
    const Course(
      id: 2,
      name: 'Modern interior design for beginner!',
      image: 'assets/images/courses/2.png',
      lecturer: Lecturer(id: 2, name: 'Samantha Rossye', occupation: 'Designer'),
      totalEnrollment: 1500,
      rating: 4.0,
      totalRatings: 551,
      courseType: CourseType.newCourse,
    ),
  ];
  final List<Course> _previousClasses = [
    const Course(
      id: 3,
      name: 'Take care your home plants!',
      image: 'assets/images/courses/3.png',
      lecturer: Lecturer(id: 3, name: 'Sarrah Maningger', occupation: 'Horticulturist'),
      totalEnrollment: 2200,
      rating: 4.0,
      totalRatings: 7051,
      courseType: CourseType.bestSell,
    ),
    const Course(
      id: 4,
      name: 'Grow your creative business with Insta!',
      image: 'assets/images/courses/4.png',
      lecturer: Lecturer(id: 2, name: 'Samantha Rossye', occupation: 'Content creator'),
      totalEnrollment: 500,
      rating: 4.0,
      totalRatings: 551,
      courseType: CourseType.newCourse,
    ),
  ];
  final List<Course> _othersClasses = [
    const Course(
      id: 3,
      name: 'Take care of your home plants!',
      image: 'assets/images/courses/3.png',
      lecturer: Lecturer(id: 3, name: 'Sarrah Maningger', occupation: 'Horticulturist'),
      totalEnrollment: 2200,
      rating: 4.0,
      totalRatings: 7051,
      courseType: CourseType.bestSell,
    ),
    const Course(
      id: 4,
      name: 'Grow your creative business with Insta!',
      image: 'assets/images/courses/4.png',
      lecturer: Lecturer(id: 2, name: 'Samantha Rossye', occupation: 'Content creator'),
      totalEnrollment: 500,
      rating: 4.0,
      totalRatings: 551,
      courseType: CourseType.newCourse,
    ),
  ];
  final List<Lecturer> _popularTeachers = [
    const Lecturer(id: 1, name: 'Sayef Mahmud', occupation: 'Programmer'),
    const Lecturer(id: 2, name: 'Sarrah Morry', occupation: 'Creative artist'),
  ];

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        titleSpacing: 20,
        title: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      WelcomeBackText(name: StringUtil.getFirstName('Manuel Ahuno')),
                      const LearnTodayText(),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                const CircularImage(image: 'assets/images/profile.png'),
              ],
            ),
            const SizedBox(height: 30),
            SearchTextField(controller: _textEditingController),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(
            child: CategoryTitleWidget(
              categoryTitle: 'Popular category\non our platform',
              onTap: () {},
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 40),
            sliver: SliverGrid.builder(
              itemCount: _popularCategories.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisExtent: 140,
              ),
              itemBuilder: (ctx, index) {
                Category category = _popularCategories[index];

                return CategoryTile(onTap: () {}, category: category);
              },
            ),
          ),
          SliverToBoxAdapter(
            child: CategoryTitleWidget(
              categoryTitle: 'Most watched\nclass in a month',
              onTap: () {},
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 40),
            sliver: SliverGrid.builder(
              itemCount: _mostWatchedClasses.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisExtent: 245,
              ),
              itemBuilder: (ctx, index) {
                Course course = _mostWatchedClasses[index];

                return ClassTile(onTap: () {}, course: course);
              },
            ),
          ),
          SliverToBoxAdapter(
            child: CategoryTitleWidget(
              categoryTitle: 'Our top popular\nteacher this month',
              onTap: () {},
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 40),
            sliver: SliverGrid.builder(
              itemCount: _popularTeachers.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisExtent: 245,
              ),
              itemBuilder: (ctx, index) {
                Lecturer lecturer = _popularTeachers[index];

                return TeacherTile(onTap: () {}, teacher: lecturer);
              },
            ),
          ),
          const SliverToBoxAdapter(child: FreeTrialWidget()),
          const SliverToBoxAdapter(child: SizedBox(height: 40)),
          SliverToBoxAdapter(
            child: CategoryTitleWidget(
              categoryTitle: 'Continue to watch\nprevious class',
              onTap: () {},
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 40),
            sliver: SliverGrid.builder(
              itemCount: _previousClasses.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisExtent: 245,
              ),
              itemBuilder: (ctx, index) {
                Course course = _previousClasses[index];

                return ClassTile(onTap: () {}, course: course);
              },
            ),
          ),
          SliverToBoxAdapter(
            child: CategoryTitleWidget(
              categoryTitle: 'What others are\nwatching in app',
              onTap: () {},
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 40),
            sliver: SliverGrid.builder(
              itemCount: _othersClasses.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisExtent: 245,
              ),
              itemBuilder: (ctx, index) {
                Course course = _othersClasses[index];

                return ClassTile(onTap: () {}, course: course);
              },
            ),
          ),
        ],
      ),
    );
  }
}
