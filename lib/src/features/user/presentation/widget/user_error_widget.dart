import 'package:flutter/material.dart';
import 'package:top_up_app/src/src.dart';

class UserErrorWidget extends StatelessWidget {
  final VoidCallback? onReload;
  const UserErrorWidget({super.key, this.onReload});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            context.loc.errorRetrievingUserInformation,
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: onReload,
            child: Text(context.loc.reload),
          ),
        ],
      ),
    );
  }
}
