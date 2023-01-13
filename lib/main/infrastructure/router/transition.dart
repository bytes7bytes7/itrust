part of 'router.dart';

// ignore: unused_element
Widget _upward(
  BuildContext context,
  Animation<double> animation,
  Animation<double> secondaryAnimation,
  Widget child,
) =>
    SlideTransition(
      position: animation.drive(
        Tween(
          begin: const Offset(0.0, 1.0),
          end: Offset.zero,
        ).chain(
          CurveTween(curve: Curves.ease),
        ),
      ),
      child: child,
    );

// ignore: unused_element
Widget _downward(
  BuildContext context,
  Animation<double> animation,
  Animation<double> secondaryAnimation,
  Widget child,
) =>
    SlideTransition(
      position: animation.drive(
        Tween(
          begin: const Offset(0.0, -1.0),
          end: Offset.zero,
        ).chain(
          CurveTween(curve: Curves.ease),
        ),
      ),
      child: child,
    );

// ignore: unused_element
Widget _leftward(
  BuildContext context,
  Animation<double> animation,
  Animation<double> secondaryAnimation,
  Widget child,
) =>
    SlideTransition(
      position: animation.drive(
        Tween(
          begin: const Offset(1.0, 0.0),
          end: Offset.zero,
        ).chain(
          CurveTween(curve: Curves.ease),
        ),
      ),
      child: child,
    );

// ignore: unused_element
Widget _rightward(
  BuildContext context,
  Animation<double> animation,
  Animation<double> secondaryAnimation,
  Widget child,
) =>
    SlideTransition(
      position: animation.drive(
        Tween(
          begin: const Offset(-1.0, 0.0),
          end: Offset.zero,
        ).chain(
          CurveTween(curve: Curves.ease),
        ),
      ),
      child: child,
    );
