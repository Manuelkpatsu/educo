import 'package:educo/model/onboard_data.dart';
import 'package:educo/screen/auth/login/login_screen.dart';
import 'package:educo/screen/widget/custom_button.dart';
import 'package:educo/screen/widget/custom_outline_button.dart';
import 'package:educo/theme/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'onboard_tile.dart';
import 'widget/skip_button.dart';

class OnboardScreen extends StatefulWidget {
  static const routeName = '/onboard';

  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  final PageController _controller = PageController();
  final List<OnboardData> _data = [
    const OnboardData(
      title: 'Better way to learning\nis calling you!',
      image: 'assets/images/onboard-1.png',
      description: 'Impeet viverra vivamus porttior ules ac vulte lectus velit sen lectus ue',
    ),
    const OnboardData(
      title: 'Find yourself by doing\nwhatever you do!',
      image: 'assets/images/onboard-2.png',
      description: 'Impeet viverra vivamus porttior ules ac vulte lectus velit sen lectus ue',
    ),
    const OnboardData(
      title: 'It’s not just learning,\nIt’s a promise!',
      image: 'assets/images/onboard-3.png',
      description: 'Impeet viverra vivamus porttior ules ac vulte lectus velit sen lectus ue',
    ),
  ];
  int currentPage = 0;
  bool get isNotLastPage => currentPage != _data.length - 1;

  void _onPageChanged(int page) {
    setState(() {
      currentPage = page;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              SkipButton(
                onPressed: () => _controller.jumpToPage(_data.length),
                isVisible: isNotLastPage,
              ),
              const SizedBox(height: 26),
              Expanded(
                child: PageView(
                  controller: _controller,
                  onPageChanged: _onPageChanged,
                  children: _data.map((onboardData) => OnboardTile(data: onboardData)).toList(),
                ),
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: _data.length,
                effect: const WormEffect(
                  spacing: 5,
                  dotHeight: 8,
                  dotWidth: 8,
                  dotColor: CustomColor.grey300Color,
                  activeDotColor: Colors.black,
                  type: WormType.thinUnderground,
                ),
                onDotClicked: (index) => _controller.animateToPage(
                  index,
                  duration: const Duration(microseconds: 300),
                  curve: Curves.easeIn,
                ),
              ),
              const SizedBox(height: 20),
              CustomButton(onPressed: () {}, widget: const Text('Register')),
              const SizedBox(height: 20),
              CustomOutlineButton(
                onPressed: () => Navigator.of(context).pushReplacementNamed(LoginScreen.routeName),
                widget: const Text('Log in'),
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
