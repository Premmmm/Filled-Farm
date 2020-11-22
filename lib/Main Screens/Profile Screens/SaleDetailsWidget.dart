import 'package:farmersapp/Components/MySlide.dart';
import 'package:farmersapp/Components/alertboxwidget.dart';
import 'package:farmersapp/Main%20Screens/Profile%20Screens/AllSaleItemsDisplayScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:farmersapp/Components/constants.dart';
import 'package:farmersapp/Components/data.dart';

Constants _constants = Constants();
AlertBoxWidget _alertBoxWidget = AlertBoxWidget();

class SaleDetailsWidget extends StatelessWidget {
  final bool isLessThan3;
  const SaleDetailsWidget({
    Key key,
    this.isLessThan3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    var provider = Provider.of<Data>(context);
    return Material(
      color: Colors.transparent,
      elevation: 50,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: screenSize.height * 0.25,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
            color: Colors.grey[900], borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'FOR SALE',
                  style: _constants.style.copyWith(
                    fontSize: 20,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {
                    isLessThan3
                        ? _alertBoxWidget.addSaleItem(context)
                        : Navigator.push(
                            context,
                            MySlide(
                              page: AllSaleItemsDisplayScreen(),
                            ),
                          );
                  },
                  child: Text(
                    isLessThan3 ? 'ADD' : 'VIEW MORE',
                    style: _constants.style.copyWith(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: isLessThan3
                  ? Row(
                      children: [
                        for (int i = 0; i < provider.forSaleItems.length; i++)
                          _ForSaleDetailsContainer(
                            item: provider.forSaleItems[i],
                          )
                      ],
                    )
                  : Row(
                      children: [
                        for (int i = 0; i < 3; i++)
                          _ForSaleDetailsContainer(
                            item: provider.forSaleItems[i],
                          )
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ForSaleDetailsContainer extends StatelessWidget {
  final ForSaleItem item;
  const _ForSaleDetailsContainer({
    Key key,
    this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Material(
        elevation: 50,
        color: Colors.transparent,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          height: 120,
          decoration: BoxDecoration(
              color: Colors.white12, borderRadius: BorderRadius.circular(20)),
          width: MediaQuery.of(context).size.width * 0.6,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    item.tag,
                    style: _constants.style.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.3,
                      color: Colors.green,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'FOR SALE',
                    style: _constants.style.copyWith(
                      color: Colors.green,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text('Quantity:  ${item.quantity}', style: _constants.style),
              SizedBox(height: 5),
              Text(
                'Cost:  ₹ ${item.costPer50Kg} per kg.',
                style: _constants.style,
              ),
              SizedBox(height: 5),
              Text(
                'City:  ${item.city}',
                style: _constants.style,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
