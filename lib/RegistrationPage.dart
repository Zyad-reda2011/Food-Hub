import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dialog.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';

class Registrationpage extends StatefulWidget 
{
  const Registrationpage({super.key});

  @override
  State<Registrationpage> createState() => _RegistrationpageState();
}

class _RegistrationpageState extends State<Registrationpage> 
{
  final TextEditingController _phoneNumberController = TextEditingController();
  late Country _selectedCountry = CountryPickerUtils.getCountryByPhoneCode('230');

  void _openCountryPicker(BuildContext context) 
  {
    showDialog
    (
      context: context,
      builder: (context) => Theme
      (
        data: Theme.of(context).copyWith(primaryColor: Colors.pink),
        child: CountryPickerDialog
        (
          titlePadding: const EdgeInsets.all(8.0),
          searchCursorColor: Colors.pinkAccent,
          searchInputDecoration: const InputDecoration(hintText: 'Search...'),
          isSearchable: true,
          title: const Text('Select your phone code'),
          onValuePicked: (Country country) 
          {
            setState
            (
              () 
              {
                _selectedCountry = country;
                _updatePhoneNumberWithCountryCode();
              }
            );
          },
          itemBuilder: _buildDialogItem,
        ),
      ),
    );
  }

  void _updatePhoneNumberWithCountryCode() 
  {
    String currentText = _phoneNumberController.text;
    if (!currentText.startsWith('+${_selectedCountry.phoneCode}')) 
    {
      _phoneNumberController.text = '+${_selectedCountry.phoneCode} $currentText';
    }
  }

  Widget _buildDialogItem(Country country) 
  {
    return Row
    (
      children: <Widget>
      [
        CountryPickerUtils.getDefaultFlagImage(country),
        const SizedBox(width: 8.0),
        Text("+${country.phoneCode}"),
        const SizedBox(width: 8.0),
        Flexible(child: Text(country.name)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      body: Stack
      (
        children: 
        [
          // Background Image
          Positioned.fill
          (
            child: Image.asset
            (
              "assets/sign.jpg",
              fit: BoxFit.fill,
            )
          ),
          SafeArea
          (
            child: SingleChildScrollView
            (
              child: Padding
              (
                padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
                child:
                Column
                (
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start, 
                  children: 
                  [
                    const SizedBox(height: 10,),
                    Container
                    (
                      decoration: BoxDecoration
                      (
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: IconButton
                      (
                        onPressed: ()
                        {
                          Navigator.pushNamed(context, '/login');
                        }, 
                        icon: const Icon(Icons.arrow_back_ios_new)
                      ),
                    ),
                    const SizedBox(height: 20,),
                    const Text
                    (
                      // Registration Word
                      "Registration",
                      style: TextStyle
                      (
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Sofia Pro",
                        fontSize: 48
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 10),
                    const Text
                    (
                      "Enter your Phone number to verify",
                      style: TextStyle
                      (
                        color: Color(0xff9796A1),
                        fontWeight: FontWeight.normal,
                        fontFamily: "Sofia Pro",
                        fontSize: 16
                      ),
                    ),
                    const Text
                    (
                      "Your Acount",
                      style: TextStyle
                      (
                        color: Color(0xff9796A1),
                        fontWeight: FontWeight.normal,
                        fontFamily: "Sofia Pro",
                        fontSize: 16
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Row
                    (
                      children: 
                      [
                        Expanded
                        (
                          child: TextField
                          (
                            keyboardType: TextInputType.phone,
                            controller: _phoneNumberController,
                            decoration: InputDecoration
                            (
                              prefixIcon: Padding
                              (
                                padding: const EdgeInsets.only(left: 10),
                                child: SizedBox
                                (
                                  height: 50,
                                  width: 80,
                                  child: GestureDetector
                                  (
                                    onTap: () => _openCountryPicker(context),
                                    child: Row
                                    (
                                      children: 
                                      [
                                        CountryPickerUtils.getDefaultFlagImage(_selectedCountry),
                                        const SizedBox(width: 8),
                                        const Icon
                                        (
                                          Icons.arrow_drop_down_sharp,
                                          color: Colors.grey,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              border: OutlineInputBorder
                              (
                                borderRadius: BorderRadius.circular(16),
                              ),
                              focusedBorder: OutlineInputBorder
                              (
                                borderRadius: BorderRadius.circular(16),
                                borderSide: const BorderSide(color: Colors.orange)
                              ),
                            ),
                          )
                        ),
                        const SizedBox(width: 10),             
                      ]
                    ),
                    const SizedBox(height: 20,),
                    ElevatedButton
                    (
                      onPressed: () 
                      {
                        Navigator.pushNamed(context, '/Food');
                      },
                      style: ElevatedButton.styleFrom
                      (
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder
                        (
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding:
                        const EdgeInsets.symmetric(vertical: 15, horizontal: 125),
                      ),
                      child: const Text
                      (
                        'SEND',
                        style: TextStyle
                        (
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )
                    )
                  ]
                )
              ),
            ),
          )
       ]
      )
    );
  }
}
