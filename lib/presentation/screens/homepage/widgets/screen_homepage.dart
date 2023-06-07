// import 'package:artopsy/presentation/screens/authentication/login/screen_login.dart';

// import 'package:flutter/material.dart';

// import '../../../services/firebase_services/signin_signout_service.dart';

// class HomePageScreen extends StatelessWidget {
//   const HomePageScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: Center(
//         child: TextButton(
//             onPressed: () async {
//               await FirebaseSignService().signout();
//             //  FirebaseAuth.instance.signOut().then((value) =>
//               // ignore: use_build_context_synchronously
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => LoginScreen(),
//                   ));
//             },
//             child: const Text('LogOut')),
//       )),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'dart:math';

class HomePageScreen1 extends StatefulWidget {
  const HomePageScreen1({super.key});

  @override
  HomePageScreen1State createState() => HomePageScreen1State();
}

class HomePageScreen1State extends State<HomePageScreen1>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(200), child: HalfCircleAppBar()),
      // body: SafeArea(
      //   child: Center(
      //     child: HalfCircleAppBar(),
      //   ),
      // ),
    );
  }
}

class SpinningAppBar extends StatefulWidget {
  const SpinningAppBar({super.key});

  @override
  SpinningAppBarState createState() => SpinningAppBarState();
}

class SpinningAppBarState extends State<SpinningAppBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  final List<IconData> _icons = [
    Icons.home,
    Icons.search,
    Icons.notifications,
    Icons.settings,
    Icons.person,
  ];

  int _selectedIconIndex = 0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _selectIcon(int index) {
    setState(() {
      _selectedIconIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: RotationTransition(
        turns: Tween(begin: 0.0, end: 1.0).animate(_animationController),
        child: Icon(
          _icons[_selectedIconIndex],
          color: Colors.white,
        ),
      ),
      actions: [
        for (int i = 0; i < _icons.length; i++)
          GestureDetector(
            onTap: () => _selectIcon(i),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Icon(
                _icons[i],
                color: i == _selectedIconIndex ? Colors.white : Colors.grey,
              ),
            ),
          ),
      ],
    );
  }
}

class SpinningAppBar2 extends StatefulWidget {
  @override
  _SpinningAppBar2State createState() => _SpinningAppBar2State();
}

class _SpinningAppBar2State extends State<SpinningAppBar2>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: RotationTransition(
        turns: Tween(begin: 0.0, end: 1.0).animate(_animationController),
        child: Text('Spinning AppBar'),
      ),
    );
  }
}

class SpinningAppBar3 extends StatefulWidget {
  @override
  _SpinningAppBar3State createState() => _SpinningAppBar3State();
}

class _SpinningAppBar3State extends State<SpinningAppBar3>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Container(
        width: 50.0,
        height: 50.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: RotationTransition(
          turns: Tween(begin: 0.0, end: 1.0).animate(_animationController),
          child: Icon(
            Icons.refresh,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}

class SpinningAppBar4 extends StatefulWidget {
  @override
  _SpinningAppBar4State createState() => _SpinningAppBar4State();
}

class _SpinningAppBar4State extends State<SpinningAppBar4>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _startAnimation() {
    _animationController.repeat();
  }

  void _stopAnimation() {
    _animationController.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTapDown: (_) => _startAnimation(),
        onTapUp: (_) => _stopAnimation(),
        onTapCancel: () => _stopAnimation(),
        child: RotationTransition(
          turns: Tween(begin: 0.0, end: 10.0).animate(_animationController),
          child: Container(
            child: Stack(
              children: [
                Icon(
                  Icons.pedal_bike,
                  size: 100,
                  color: Colors.blue,
                ),
                Positioned(
                    left: 150,
                    top: 50,
                    child: Icon(
                      Icons.pedal_bike,
                      size: 70,
                      color: Colors.blue,
                    )),
                Positioned(
                    left: 50,
                    top: 140,
                    child: Icon(
                      Icons.pedal_bike,
                      size: 70,
                      color: Colors.blue,
                    ))
              ],
            ),
            width: 200.0,
            height: 200.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

class HalfCircleAppBar extends StatefulWidget {
  @override
  _HalfCircleAppBarState createState() => _HalfCircleAppBarState();
}

class _HalfCircleAppBarState extends State<HalfCircleAppBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  List<IconData> _icons = [
    Icons.home,
    Icons.search,
    Icons.notifications,
  ];

  int _selectedIconIndex = 0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _selectIcon(int index) {
    setState(() {
      _selectedIconIndex = index;
    });
    _animationController.forward(from: 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(80),
      child: AppBar(
        flexibleSpace: Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: LayoutBuilder(
            builder: (context, constraints) {
              double appBarWidth = constraints.maxWidth;
              double appBarHeight = constraints.maxHeight;
              double radius = appBarHeight / 2;

              return GestureDetector(
                onTap: () {
                  _selectIcon((_selectedIconIndex + 1) % _icons.length);
                },
                child: AnimatedBuilder(
                  animation: _animationController,
                  builder: (context, child) {
                    double angle = (_animationController.value * pi) / 2;

                    return Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomPaint(
                          painter: HalfCirclePainter(radius, appBarWidth,
                              appBarHeight, _icons, _selectedIconIndex, angle),
                        ),
                        for (int i = 0; i < _icons.length; i++)
                          Positioned(
                            top: radius * sin((i * pi) / (_icons.length - 1)) -
                                12,
                            left: radius * cos((i * pi) / (_icons.length - 1)) -
                                12,
                            child: IconButton(
                              icon: Icon(_icons[i],
                                  color: _selectedIconIndex == i
                                      ? Colors.white
                                      : Colors.black),
                              onPressed: () {
                                _selectIcon(i);
                              },
                            ),
                          ),
                      ],
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class HalfCirclePainter extends CustomPainter {
  final double radius;
  final double width;
  final double height;
  final List<IconData> icons;
  final int selectedIndex;
  final double rotationAngle;

  HalfCirclePainter(this.radius, this.width, this.height, this.icons,
      this.selectedIndex, this.rotationAngle);

  @override
  void paint(Canvas canvas, Size size) {
    double startAngle = -pi / 2;
    double sweepAngle = pi;

    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    canvas.drawArc(Rect.fromLTWH(0, 0, width, height), startAngle, sweepAngle,
        true, paint);
  }

  @override
  bool shouldRepaint(HalfCirclePainter oldDelegate) {
    return oldDelegate.selectedIndex != selectedIndex ||
        oldDelegate.rotationAngle != rotationAngle;
  }
}
