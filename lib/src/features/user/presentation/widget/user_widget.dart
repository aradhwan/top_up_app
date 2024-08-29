import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:top_up_app/src/src.dart';

class UserWidget extends ConsumerWidget {
  const UserWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 100,
      padding: const EdgeInsets.all(16.0),
      child: AsyncValueWidget(
        asyncValue: ref.watch(userProvider),
        onLoading: const Center(
          child: CircularProgressIndicator(),
        ),
        onError: (e) => UserErrorWidget(
          onReload: () => ref.invalidate(userProvider),
        ),
        onData: (user) {
          if (user == null) {
            return UserErrorWidget(
              onReload: () => ref.invalidate(userProvider),
            );
          }
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.loc.welcome,
                      style: const TextStyle(fontSize: 14),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Text(
                          user.name,
                          style: const TextStyle(fontSize: 22),
                        ),
                        if (user.isVerified) ...[
                          const SizedBox(width: 4),
                          const Icon(
                            Icons.verified,
                            color: Colors.blue,
                            size: 18,
                          ),
                        ],
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8.0),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    context.loc.availableBalance,
                    style: const TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    context.loc.balanceValue(user.balance),
                    style: const TextStyle(fontSize: 22),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
