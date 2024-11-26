import 'package:flutter/material.dart';

class SimpleInterest extends StatefulWidget {
  const SimpleInterest({super.key});

  @override
  State<SimpleInterest> createState() => _SimpleInterestViewState();
}

class _SimpleInterestViewState extends State<SimpleInterest> {
  double principal = 0;
  double rate = 0;
  double time = 0;
  double interest = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Simple Interest Calculator'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              TextField(
                onChanged: (value) {
                  principal = double.tryParse(value) ?? 0;
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Principal Amount',
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextField(
                onChanged: (value) {
                  rate = double.tryParse(value) ?? 0;
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Rate of Interest (%)',
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextField(
                onChanged: (value) {
                  time = double.tryParse(value) ?? 0;
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Time Period (Years)',
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Interest: $interest',
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      interest = (principal * rate * time) / 100;
                    });
                  },
                  child: const Text('Calculate Interest'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
