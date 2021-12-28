import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:packer/config/config.dart';
import 'package:packer/views/add_page/widgets/scan_step_content.dart';

class AppStepper extends HookWidget {
  AppStepper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentStep = useState(0);
    return Theme(
      data: ThemeData(
        colorScheme: const ColorScheme.dark().copyWith(
          secondary: AppColors.inpost,
          background: AppColors.jet,
        ),
      ),
      child: Stepper(
        currentStep: currentStep.value,
        physics: const NeverScrollableScrollPhysics(),
        controlsBuilder: (BuildContext context,
            {VoidCallback? onStepContinue, VoidCallback? onStepCancel}) {
          return Row(
            children: const [],
          );
        },
        elevation: 0,
        steps: _steps
            .map(
              (e) => Step(
                state: StepState.disabled,
                title: e.title,
                content: e.content,
                isActive: _steps.indexOf(e) == currentStep.value,
              ),
            )
            .toList(),
      ),
    );
  }

  final _steps = [
    AppStep(
      title: const Text('Scan package barcode', style: TextStyles.white14),
      content: const ScanStepContent(),
    ),
    AppStep(
      title: Text('Add delivery company', style: TextStyles.white14),
      content: SizedBox(),
    ),
    AppStep(
      title: Text('Add sender', style: TextStyles.white14),
      content: SizedBox(),
    ),
    AppStep(
      title: Text('Add receiver', style: TextStyles.white14),
      content: SizedBox(),
    ),
  ];
}

class AppStep {
  AppStep({
    required this.title,
    required this.content,
  });
  final Widget title;
  final Widget content;
}
