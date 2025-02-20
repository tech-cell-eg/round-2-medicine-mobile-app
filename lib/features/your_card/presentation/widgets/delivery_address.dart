import 'package:flutter/material.dart';
import 'package:medical_store/core/constants/app_colors.dart';
import 'package:medical_store/core/constants/app_text_styles.dart';
import 'package:medical_store/features/your_card/data/model/delivery_model.dart';

class DeliveryAddress extends StatefulWidget {
  const DeliveryAddress({super.key});

  @override
  State<DeliveryAddress> createState() => _DeliveryAddressState();
}

class _DeliveryAddressState extends State<DeliveryAddress> {
  List<DeliveryModel> deliveryList = [
    DeliveryModel(name: "Home", phone: "01210520512", address: "Cairo, Egypt"),
    DeliveryModel(name: "Home", phone: "01210520512", address: "Cairo, Egypt"),
    DeliveryModel(name: "Home", phone: "01210520512", address: "Cairo, Egypt"),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 11),
        Text("Delivery Address", style: AppTextStyles.style16W600),
        Column(
          children:
              deliveryList.asMap().entries.map((e) {
                int index = e.key;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.dividerColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.only(
                      top: 11,
                      left: selectedIndex != index ? 11 : 0,
                    ),
                    padding: const EdgeInsets.all(11),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        selectedIndex == index
                            ? Icon(
                              Icons.radio_button_checked,
                              size: 18,
                              color: AppColors.primaryColor,
                            )
                            : Icon(
                              Icons.radio_button_off,
                              size: 18,
                              color: AppColors.color09,
                            ),
                        SizedBox(width: 11),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Home",
                                    style: AppTextStyles.style16W600,
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.mode_edit_outlined,
                                    color: AppColors.color09,
                                  ),
                                ],
                              ),
                              Text(
                                "01210520512",
                                style: AppTextStyles.style13W400,
                              ),
                              Text(
                                "New York, NY 10001",
                                style: AppTextStyles.style13W400,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
        ),
      ],
    );
  }
}
