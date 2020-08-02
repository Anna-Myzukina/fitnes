# fitnes

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

### Bottom wave effect:

![screen](https://github.com/Anna-Myzukina/fitnes/blob/master/Screenshot%20from%202020-08-02%2016-04-01.png)

- [1] add Widget _bottomWave

            Widget _bottomWave() {
            return Expanded(
                child: Align(
                child: ClipPath(
                    child: Container(
                    color: Colors.white,
                    height: 300,
                    ),
                    clipper: BottomWaveClipper(),
                ),
                alignment: Alignment.bottomCenter,
                ),
            );
        }

-  [2] Add class BottomWaveClipper

        class BottomWaveClipper extends CustomClipper<Path> {
            @override
            Path getClip(Size size) {
            var path = Path();
            path.moveTo(size.width, 0.0);
            path.lineTo(size.width, size.height);
            path.lineTo(0.0, size.height);
            path.lineTo(0.0, size.height + 5);
            var secondControlPoint = Offset(size.width - (size.width / 6), size.height);
            var secondEndPoint = Offset(size.width, 0.0);
            path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
            secondEndPoint.dx, secondEndPoint.dy);

            return path;
            }

            @override
            bool shouldReclip(CustomClipper<Path> oldClipper) => false;
        }


- [3] call function `_bottomWave()`
