import 'package:go_router/go_router.dart';
import 'package:top_up_app/src/src.dart';

GoRouter goRouterConfig() {
  return GoRouter(
    routes: [
      GoRoute(
        path: Routes.home,
        name: Routes.home,
        builder: (context, state) => const HomePage(),
        routes: [
          GoRoute(
            path: Routes.addBeneficiary,
            name: Routes.addBeneficiary,
            builder: (context, state) => const AddBeneficiaryPage(),
          ),
          GoRoute(
            path: Routes.topUp,
            name: Routes.topUp,
            builder: (context, state) => TopUpPage(
              beneficiary: state.extra as BeneficiaryModel,
            ),
          )
        ],
      ),
    ],
  );
}
