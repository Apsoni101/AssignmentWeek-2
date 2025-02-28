import 'package:flutter/material.dart';
import 'package:assignment2/widgets/custom_appbar.dart';
import 'package:assignment2/widgets/donation_card.dart';
import 'package:assignment2/data/donations_data.dart';

class DonationScreen extends StatelessWidget {
  const DonationScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: title),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView.separated(
          itemCount: DonationData.donations.length,
          itemBuilder: (context, index) {
            final   donation = DonationData.donations[index];
            return DonationCard(donation: donation);
          },
          separatorBuilder: (context,index){
            return  Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Divider(thickness: 1, color: Colors.grey.shade300),
            );
          },
        ),
      ),
    );
  }
}
