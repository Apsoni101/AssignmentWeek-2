import 'package:flutter/material.dart';
import 'package:assignment2/widgets/custom_appbar.dart';
import 'package:assignment2/widgets/donation_card.dart';
import 'package:assignment2/data/donations_data.dart';

class DonationScreen extends StatefulWidget {
  const DonationScreen({super.key, required this.title});

  final String title;

  @override
  State<DonationScreen> createState() => _DonationScreenState();
}

class _DonationScreenState extends State<DonationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: widget.title),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView.separated(
          itemCount: DonationData.donations.length,
          itemBuilder: (context, index) {
            final   donation = DonationData.donations[index];
            return DonationCard(donation: donation);
          },
          separatorBuilder: (context,index){
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0), // Add left & right padding
              child: Divider(thickness: 1, color: Colors.grey.shade300),
            );// Divider between items
          },
        ),
      ),
    );
  }
}
