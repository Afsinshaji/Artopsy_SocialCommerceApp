import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/users/user/user_bloc.dart';

class CircularProfilePicture extends StatelessWidget {
  const CircularProfilePicture({
    super.key,
    this.radius = 40,
    this.clipRectRadius = 40,
    required this.onTap,
  });
  final double radius;
  final double clipRectRadius;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<UserBloc>(context).add(const UserEvent.showingUser());
    });
    return InkWell(
      onTap: onTap,
      child: BlocBuilder<UserBloc, UserState>(
        
          builder: (context, userState) {
        if (userState is displayUser) {
          return CirularImage(
            radius: radius,
            clipRectRadius: clipRectRadius,
            imageUrl: userState.userData.imageUrl,
          );
        } else {
          return CirularImage(
            radius: radius,
            clipRectRadius: clipRectRadius,
            imageUrl:
                'https://cdn-icons-png.flaticon.com/512/181/181546.png?w=740&t=st=1689837309~exp=1689837909~hmac=7836a133d6203468db25f921af3cae8dcd0f0c0e5ef551183683e077bc58b966',
          );
        }
      }),
    );
  }
}

class CircularVisitingProfilePicture extends StatelessWidget {
  const CircularVisitingProfilePicture({
    super.key,
    this.radius = 40,
    this.clipRectRadius = 40,
    required this.imageUrl,
  });
  final double radius;
  final double clipRectRadius;
  // final void Function()? onTap;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CirularImage(
      radius: radius,
      clipRectRadius: clipRectRadius,
      imageUrl: imageUrl,
    );
  }
}

class CirularImage extends StatelessWidget {
  const CirularImage({
    super.key,
    required this.radius,
    required this.clipRectRadius,
    required this.imageUrl,
  });

  final double radius;
  final double clipRectRadius;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      child: Container(
        width: 2 * radius,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                imageUrl.isEmpty
                    ?  'https://cdn-icons-png.flaticon.com/512/181/181546.png?w=740&t=st=1689837309~exp=1689837909~hmac=7836a133d6203468db25f921af3cae8dcd0f0c0e5ef551183683e077bc58b966'
          : imageUrl,
              ),
              fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(clipRectRadius),
        ),
      ),
    );
  }
}
