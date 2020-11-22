import 'package:farmersapp/Components/alertboxwidget.dart';
import 'package:farmersapp/Components/constants.dart';
import 'package:farmersapp/Components/data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Constants _constants = Constants();

class AllSaleItemsDisplayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Data>(context);
    return Scaffold(
      backgroundColor: _constants.backgroundColorAllScreens,
      appBar: AppBar(
        title: Text('FOR SALE ITEMS', style: _constants.style),
        backgroundColor: _constants.appBarBackGroundColor,
        leading: Container(),
        leadingWidth: 0.0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        onPressed: () {
          AlertBoxWidget().addSaleItem(context);
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 30),
            height: MediaQuery.of(context).size.height * 1.4,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                for (int i = 0; i < provider.forSaleItems.length; i++)
                  _ForSaleDetailsContainer(
                    item: provider.forSaleItems[i],
                  )
              ],
            ),
          ),
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
      padding: const EdgeInsets.only(bottom: 30),
      child: Material(
        elevation: 50,
        color: Colors.transparent,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          height: 150,
          decoration: BoxDecoration(
              color: Colors.white12, borderRadius: BorderRadius.circular(20)),
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
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
              Text(
                'PRODUCT DETAILS',
                style: _constants.style.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.blueAccent),
              ),
              SizedBox(height: 10),
              Text('Quantity: ${item.quantity}', style: _constants.style),
              SizedBox(height: 5),
              Text(
                'Cost: ₹ ${item.costPer50Kg}/kg.',
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
