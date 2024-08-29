import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:top_up_app/src/src.dart';

class AddBeneficiaryPage extends ConsumerWidget {
  const AddBeneficiaryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormState>();
    final nameController = TextEditingController();
    final phoneController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text(context.loc.addBeneficiary),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        CustomTextFormField(
                          placeholder: context.loc.nickname,
                          textInputAction: TextInputAction.next,
                          isRequired: true,
                          maxLength: 20,
                          autoValidateMode: AutovalidateMode.onUserInteraction,
                          textEditingController: nameController,
                        ),
                        const SizedBox(height: 24),
                        CustomTextFormField(
                          prefixIcon: SizedBox(
                            width: 60,
                            child: Center(
                              child: Text(context.loc.uaeCountryCode),
                            ),
                          ),
                          maxLength: 9,
                          textInputType: TextInputType.phone,
                          textInputAction: TextInputAction.done,
                          placeholder: context.loc.phoneNumber,
                          helperText: context.loc.phoneNumberHelperText,
                          isRequired: true,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                              RegExp(r'[0-9]+'),
                            ),
                          ],
                          validator: (value) {
                            if (!value!.startsWith('5')) {
                              return context.loc.phoneNumberShouldStartWithFive;
                            }
                            if (value.length < 9) {
                              return context
                                  .loc.phoneNumberShouldHaveNineDigits;
                            }
                            return null;
                          },
                          autoValidateMode: AutovalidateMode.onUserInteraction,
                          textEditingController: phoneController,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  if (!(formKey.currentState?.validate() ?? false)) return;
                  showLoading(context);
                  var result = await GetIt.I
                      .get<IBeneficiaryService>()
                      .addBeneficiary(
                        nickname: nameController.text,
                        phoneNumber: phoneController.text,
                      )
                      .whenComplete(() => hideLoading(context));
                  result.fold(
                    (error) => showErrorDialog(
                      context,
                      error.message,
                    ),
                    (r) {
                      showSuccessToast(
                          context.loc.beneficiaryAddedSuccessfully(r.nickname));
                      ref.invalidate(beneficiariesProvider);
                      context.pop();
                    },
                  );
                },
                child: Text(context.loc.add),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
