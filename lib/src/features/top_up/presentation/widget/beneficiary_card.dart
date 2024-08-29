import 'package:flutter/material.dart';
import 'package:top_up_app/src/src.dart';

class BeneficiaryCard extends StatelessWidget {
  final BeneficiaryModel beneficiary;
  final VoidCallback onTopUp;
  final double width;

  const BeneficiaryCard({
    super.key,
    required this.beneficiary,
    required this.onTopUp,
    this.width = 200,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Card(
        margin: const EdgeInsets.only(bottom: 16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                beneficiary.nickname,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(beneficiary.phoneNumber),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: onTopUp,
                child: Text(context.loc.topUp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
