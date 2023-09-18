import 'package:accounts_app/component/custom_textformfield.dart';
import 'package:accounts_app/localization/app_localizations_context.dart';
import 'package:accounts_app/model/account/account_model.dart';
import 'package:accounts_app/utils/logger.dart';
import 'package:accounts_app/utils/validators/text_form_field_validator.dart';
import 'package:accounts_app/viewmodel/account_feature/providers/accounts_providers.dart';
import 'package:accounts_app/viewmodel/account_feature/providers/form_edit_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AccountDetailPage extends StatefulHookConsumerWidget {
  final String id;
  const AccountDetailPage({super.key, required this.id});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AccountDetailPageState();
}

class _AccountDetailPageState extends ConsumerState<AccountDetailPage> {
  AccountModel accountModel = const AccountModel();
  final formKey = GlobalKey<FormState>();
  final phoneNumberFormatter = MaskTextInputFormatter(
      mask: '(###) ###-##-##', filter: {"#": RegExp(r'[0-9]')}, type: MaskAutoCompletionType.lazy);
  final birthDateFormatter = MaskTextInputFormatter(mask: "##/##/####");

  @override
  Widget build(BuildContext context) {
    final isEdit = ref.watch(formEditProviderProvider);
    final nameTextEdtCtrl = useTextEditingController();
    final surNameTextEdtCtrl = useTextEditingController();
    final birthDateTextEdtCtrl = useTextEditingController();
    final salaryTextEdtCtrl = useTextEditingController();
    final phoneNumberTextEdtCtrl = useTextEditingController();
    final identityTextEdtCtrl = useTextEditingController();

    if (widget.id.isNotEmpty) {
      ref.listen(fetchAccountProvider(widget.id), (previous, next) {
        next.whenData((value) {
          logger.d(accountModel);
          accountModel = value;
          nameTextEdtCtrl.text = value.name ?? '';
          surNameTextEdtCtrl.text = value.surName ?? '';
          birthDateTextEdtCtrl.text = value.birthDate?.toString() ?? '';
          salaryTextEdtCtrl.text = value.salary?.toString() ?? '';
          phoneNumberTextEdtCtrl.text = value.phoneNumber?.toString() ?? '';
          identityTextEdtCtrl.text = value.identity?.toString() ?? '';
        });
      });
    }

    ref.listen(accountUpdateProvider, (previous, next) {
      next.whenOrNull(
        data: (data) {
          logger.d('account updated');
          context.pop();
          ref.invalidate(fetchAccountsWithPaginationProvider);
        },
        loading: () {},
      );
    });

    ref.listen(accountAddProvider, (previous, next) {
      next.whenOrNull(
        data: (data) {
          logger.d('account added');
          context.pop();
          ref.invalidate(fetchAccountsWithPaginationProvider);
        },
        loading: () {},
      );
    });

    ref.listen(accountDeleteProvider, (previous, next) {
      next.whenOrNull(
        data: (data) {
          logger.d('account deleted');
          context.pop();
          ref.invalidate(fetchAccountsWithPaginationProvider);
        },
        loading: () {},
      );
    });

    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(context.loc.accountDetail),
          actions: widget.id.isNotEmpty
              ? [
                  IconButton(
                    onPressed: () {
                      ref.read(formEditProviderProvider.notifier).update((state) => !state);
                    },
                    icon: isEdit ? const Icon(Icons.close) : const Icon(Icons.edit),
                  ),
                  IconButton(
                    onPressed: () {
                      ref.read(accountDeleteProvider.notifier).deleteAccount(accountModel.id ?? '');
                    },
                    icon: const Icon(Icons.delete),
                  ),
                ]
              : null,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: IgnorePointer(
                ignoring: (!isEdit && widget.id.isNotEmpty),
                child: Column(
                  children: [
                    CustomTextFormField(
                      controller: nameTextEdtCtrl,
                      placeholder: context.loc.name,
                      hintText: context.loc.enterName,
                      onSaved: (val) {
                        accountModel = accountModel.copyWith(name: val);
                      },
                      validator: (val) {
                        return FormFieldValidators.requiredField(val, context: context);
                      },
                    ),
                    const SizedBox(height: 8),
                    CustomTextFormField(
                      controller: surNameTextEdtCtrl,
                      placeholder: context.loc.surName,
                      hintText: context.loc.enterSurname,
                      validator: (val) {
                        return FormFieldValidators.requiredField(val, context: context);
                      },
                      onSaved: (val) {
                        accountModel = accountModel.copyWith(surName: val);
                      },
                    ),
                    const SizedBox(height: 8),
                    CustomTextFormField(
                      controller: birthDateTextEdtCtrl,
                      placeholder: context.loc.birthDate,
                      hintText: "${context.loc.enterBirthDate} ${context.loc.dateFormat}",
                      textInputType: TextInputType.datetime,
                      inputFormatters: [birthDateFormatter],
                      validator: (val) {
                        return FormFieldValidators.wrongDate(val, context: context);
                      },
                      onSaved: (val) {
                        accountModel = accountModel.copyWith(birthDate: val);
                      },
                    ),
                    const SizedBox(height: 8),
                    CustomTextFormField(
                      controller: salaryTextEdtCtrl,
                      placeholder: context.loc.salary,
                      hintText: context.loc.enterSalary,
                      textInputType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      validator: (val) {
                        return FormFieldValidators.requiredField(val, context: context);
                      },
                      onSaved: (val) {
                        accountModel = accountModel.copyWith(salary: int.tryParse(val ?? ''));
                      },
                    ),
                    const SizedBox(height: 8),
                    CustomTextFormField(
                      controller: phoneNumberTextEdtCtrl,
                      inputFormatters: [phoneNumberFormatter],
                      textInputType: TextInputType.phone,
                      hintText: context.loc.enterPhoneNumber,
                      placeholder: context.loc.phoneNumber,
                      onSaved: (val) {
                        accountModel = accountModel.copyWith(phoneNumber: val);
                      },
                    ),
                    const SizedBox(height: 8),
                    CustomTextFormField(
                      controller: identityTextEdtCtrl,
                      placeholder: context.loc.identity,
                      hintText: context.loc.enterIdentity,
                      textInputType: TextInputType.number,
                      maxLength: 11,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      validator: (val) {
                        return FormFieldValidators.tcCheck(val, context: context);
                      },
                      onSaved: (val) {
                        accountModel = accountModel.copyWith(identity: int.tryParse(val ?? '0'));
                      },
                    ),
                    Consumer(
                      builder: (context, ref, child) {
                        final formEditProvider = ref.watch(formEditProviderProvider);
                        return ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size.fromWidth(MediaQuery.of(context).size.width),
                          ),
                          onPressed: (formEditProvider || widget.id.isEmpty)
                              ? () {
                                  final bool isValid = formKey.currentState?.validate() ?? false;
                                  if (isValid) {
                                    formKey.currentState?.save();
                                    if (widget.id.isNotEmpty) {
                                      ref.read(accountUpdateProvider.notifier).updateAccount(accountModel);
                                    } else {
                                      ref.read(accountAddProvider.notifier).addAccount(accountModel);
                                    }
                                  }
                                }
                              : null,
                          child: Text(context.loc.save),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
