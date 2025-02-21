import 'package:flutter/material.dart';
import 'package:assignment2/models/donation.dart';

class DonationCard extends StatelessWidget {
  final Donation donation;

  const DonationCard({super.key, required this.donation});

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                donation.imageUrl,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    donation.title,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    donation.organization,
                    style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                  ),
                  const SizedBox(height: 12),
                  LinearProgressIndicator(
                    value: 0.5 ,
                    backgroundColor: Colors.grey.shade300,
                    color: Color.fromARGB(255, 54, 151, 123),
                    minHeight: 7,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                        decoration: BoxDecoration(
                          color: Colors.green.withAlpha(40),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child:
                          Text(
                            "\$${donation.amountRaised.toStringAsFixed(3)}",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 54, 151, 123),
                            ),
                          )
                        ,
                      ),
                      Text(
                        "${donation.daysLeft} days left",
                        style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
  }
}
