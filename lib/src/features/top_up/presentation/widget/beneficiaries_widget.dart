import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:go_router/go_router.dart';
import 'package:top_up_app/src/src.dart';

class BeneficiariesWidget extends ConsumerWidget {
  const BeneficiariesWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 16.0, 4.0, 0),
          child: Row(
            children: [
              const Expanded(
                child: Text(
                  'Beneficiaries',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              TextButton(
                onPressed: () => context.goNamed(Routes.addBeneficiary),
                child: const Text('Add New'),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 216,
          child: AsyncValueWidget(
            asyncValue: ref.watch(beneficiariesProvider),
            onLoading: const Center(child: CircularProgressIndicator()),
            onError: (e) => Center(
              child: Text(e.message),
            ),
            onData: (Either<Error, List<BeneficiaryModel>> value) {
              return value.fold(
                (error) => Center(
                  child: Text(error.message),
                ),
                (beneficiaries) {
                  return beneficiaries.isEmpty
                      ? const Center(child: Text('No beneficiaries found'))
                      : LayoutBuilder(
                          builder: (context, constraints) {
                            double cardMargin = 16.0;
                            double width = (0.8 -
                                    ((cardMargin * 3) / constraints.maxWidth)) *
                                0.5 *
                                constraints.maxWidth;
                            double cardWidth =
                                (width > 200 || beneficiaries.length < 3)
                                    ? 200
                                    : constraints.maxWidth * 0.36;
                            // double cardWidth = (constraints.maxWidth * 0.36 > 200 ||
                            //         beneficiaries.length < 3)
                            //     ? 200
                            //     : constraints.maxWidth * 0.36;
                            // double cardMargin = constraints.maxWidth * 0.0267;

                            return ListView.builder(
                              shrinkWrap: true,
                              itemCount: beneficiaries.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.only(
                                    right: index == beneficiaries.length - 1
                                        ? 0
                                        : cardMargin,
                                    left: index == 0 ? cardMargin : 0,
                                  ),
                                  child: BeneficiaryCard(
                                    width: cardWidth,
                                    beneficiary: beneficiaries[index],
                                    onTopUp: () {
                                      // Navigate to top up screen
                                    },
                                  ),
                                );
                              },
                            );
                          },
                        );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
