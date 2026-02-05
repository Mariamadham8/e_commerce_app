import 'package:e_commerce_app/core/theming/app_fonts.dart';
import 'package:flutter/material.dart';
import 'address_card.dart';

class AddressBody extends StatelessWidget {
  const AddressBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 12),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text("Saved Address", style: AppFonts.font14w600),
        ),

        const SizedBox(height: 10),

        const AddressCard(
          title: "Home",
          address: "925 S Chugach St #APT 10, Alas...",
          isDefault: true,
        ),

        const AddressCard(
          title: "Office",
          address: "2438 6th Ave, Ketchikan, Alaska...",
        ),

        const AddressCard(
          title: "Apartment",
          address: "2551 Vista Dr #B301, Juneau, Al...",
        ),

        const AddressCard(
          title: "Parent’s House",
          address: "4821 Ridge Top Cir, Anchorage,...",
        ),
      ],
    );
  }
}
