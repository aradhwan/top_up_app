import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:top_up_app/src/src.dart';

class TopUpPage extends ConsumerStatefulWidget {
  final BeneficiaryModel beneficiary;
  const TopUpPage({
    super.key,
    required this.beneficiary,
  });

  @override
  ConsumerState<TopUpPage> createState() => _TopUpPageState();
}

class _TopUpPageState extends ConsumerState<TopUpPage> {
  TopUpOption? selectedTopUpOption;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.loc.topUp),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TopUpPageSection(
                        title: context.loc.beneficiary,
                        body: ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: const CircleAvatar(
                            child: Icon(Icons.person),
                          ),
                          title: Text(widget.beneficiary.nickname),
                          subtitle: Text(widget.beneficiary.phoneNumber),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      TopUpPageSection(
                        title: context.loc.amount,
                        body: Column(
                          children: [
                            const SizedBox(height: 8.0),
                            AsyncValueWidget(
                              asyncValue: ref.watch(topUpOptionsProvider),
                              onLoading: const SizedBox(
                                height: 100.0,
                                child: Center(
                                  child: CircularProgressIndicator(),
                                ),
                              ),
                              onError: (e) => SizedBox(
                                height: 100.0,
                                child: Center(
                                  child: Text(
                                    context.loc.errorMessage(e.message),
                                  ),
                                ),
                              ),
                              onData: (data) {
                                var topUpOptions = data;
                                if (topUpOptions == null) {
                                  return SizedBox(
                                    height: 100.0,
                                    child: Center(
                                      child:
                                          Text(context.loc.noOptionsAvailable),
                                    ),
                                  );
                                }

                                return GridView.builder(
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4,
                                    childAspectRatio: 1.0,
                                  ),
                                  shrinkWrap: true,
                                  itemCount: topUpOptions.length,
                                  itemBuilder: (context, index) {
                                    final option = topUpOptions[index];
                                    return TopUpOptionCard(
                                      topUpOption: option,
                                      isSelected: option == selectedTopUpOption,
                                      onTapped: () => setState(
                                        () => selectedTopUpOption = option,
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Text(context.loc.additionalProcessingFeeNote),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: selectedTopUpOption != null
                    ? () async {
                        showLoading(context);
                        var result = await GetIt.I
                            .get<ITopUpService>()
                            .topUp(
                                topUpOption: selectedTopUpOption!,
                                beneficiary: widget.beneficiary)
                            .whenComplete(() => hideLoading(context));
                        result.fold(
                          (error) => showErrorDialog(
                            context,
                            error.message,
                          ),
                          (r) {
                            showSuccessToast(
                              context.loc.topUpSuccessMessage(
                                widget.beneficiary.phoneNumber,
                                selectedTopUpOption!.value,
                              ),
                            );
                            ref.invalidate(userProvider);
                            context.pop();
                          },
                        );
                      }
                    : null,
                child: Text(context.loc.topUp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
