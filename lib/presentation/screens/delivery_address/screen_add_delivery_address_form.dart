import 'package:artopsy/domain/models/shopping_address.dart';
import 'package:artopsy/presentation/common_widgets/sign_buttton.dart';
import 'package:artopsy/presentation/screens/delivery_address/screen_add_delivery_address.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../infrastructure/delivery_address/delivery_address.dart';
import '../../common_widgets/artwork_text_field.dart';
import '../../common_widgets/sliver_appbar.dart';
import '../../common_widgets/text_before_artwork_field.dart';

//final  defaultEmpty =

class AddDeliveryAddressFormScreen extends StatelessWidget {
  AddDeliveryAddressFormScreen({
    super.key,
    this.isToEdit = false,
    this.shoppingAddress = const ShoppingAddress(
        name: '',
        address: '',
        phoneNumber: '',
        pincode: '',
        district: '',
        state: '',
        addressId: ''),
  });
  final bool isToEdit;
  final ShoppingAddress shoppingAddress;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController districtController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController pincodeController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final List<String> fieldText = [
      'Name',
      'Address',
      'District',
      'State',
      'PinCode',
      'Phone Number',
    ];
    final List<TextEditingController> textConntrollers = [
      nameController,
      addressController,
      districtController,
      stateController,
      pincodeController,
      phoneNumberController,
    ];
    final List editTextList = [
      shoppingAddress.name,
      shoppingAddress.address,
      shoppingAddress.district,
      shoppingAddress.state,
      shoppingAddress.pincode,
      shoppingAddress.phoneNumber
    ];
    return Scaffold(
      backgroundColor: kBlackColor,
      body: Form(
        key: formKey,
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
                pinned: true,
                floating: true,
                delegate: SilverCommonAppbar(
                    onLeadingArrowPressed: () {}, actions: [])),
            SliverList(
                delegate: SliverChildListDelegate([
              Column(
                children: List.generate(
                    fieldText.length,
                    (index) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: TextBeforeArtworkField(
                                text: fieldText[index],
                              ),
                            ),
                            ArtworkTextfield(
                              textInputType: index>3?TextInputType.number:TextInputType.text,
                              textEditingController: textConntrollers[index],
                              maxLines: index == 1 ? 4 : 1,
                              isToValidate: true,
                              editText: editTextList[index],
                            ),
                          ],
                        )),
              ),
              SignButton(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      final addressData = ShoppingAddress(
                        name: nameController.text,
                        address: addressController.text,
                        phoneNumber: phoneNumberController.text,
                        pincode: pincodeController.text,
                        district: districtController.text,
                        state: stateController.text,
                        addressId: '',
                      );
                      if (!isToEdit) {
                        addShoppingAddress(addressData)
                            .then((value) => Navigator.pushReplacement(context, CupertinoPageRoute(builder:
                             (context) => const AddDeliveryScreen(),)));
                      } else {
                        editShoppingAddresss(shoppingAddress, addressData).then((value) => Navigator.pushReplacement(context, CupertinoPageRoute(builder:
                             (context) => const AddDeliveryScreen(),)));
                      }
                    }
                  },
                  width: size.width,
                  text: 'submit')
            ]))
          ],
        ),
      ),
    );
  }
}
