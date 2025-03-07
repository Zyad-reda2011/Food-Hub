import 'package:flutter/material.dart';
import 'package:scr/HomeScreen.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/bag.png'), // Profile image
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Furion Wick',
                  style: TextStyle(
                    fontFamily: 'Sofia',
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'forionwick@gmail.com',
                  style: TextStyle(
                    fontFamily: 'Sofia',
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: ImageIcon(AssetImage('assets/compass.png')),
            title: Text(
              'My Orders',
              style: TextStyle(
                fontFamily: 'Sofia',
                fontSize: mediaQuery.size.width * 0.045,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: ImageIcon(AssetImage('assets/images/prof icon.png')),
            title: Text(
              'My Profile',
              style: TextStyle(
                fontFamily: 'Sofia',
                fontSize: mediaQuery.size.width * 0.045,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.location_on),
            title: Text(
              'Delivery Address',
              style: TextStyle(
                fontFamily: 'Sofia',
                fontSize: mediaQuery.size.width * 0.045,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.wallet),
            title: Text(
              'Payment Methods',
              style: TextStyle(
                fontFamily: 'Sofia',
                fontSize: mediaQuery.size.width * 0.045,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.email),
            title: Text(
              'Contact Us',
              style: TextStyle(
                fontFamily: 'Sofia',
                fontSize: mediaQuery.size.width * 0.045,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: Text(
              'Settings',
              style: TextStyle(
                fontFamily: 'Sofia',
                fontSize: mediaQuery.size.width * 0.045,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.help),
            title: Text(
              'Help & FAQs',
              style: TextStyle(
                fontFamily: 'Sofia',
                fontSize: mediaQuery.size.width * 0.045,
              ),
            ),
            onTap: () {},
          ),
          const SizedBox(height: 40),
          LogOutButton(),
        ],
      ),
    );
  }

  Widget LogOutButton() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: ElevatedButton.icon(
          onPressed: () {},
          icon: const CircleAvatar(
            radius: 17,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.power_settings_new,
              color: Colors.deepOrange,
              size: 20,
            ),
          ),
          label: const Text(
            'Log Out',
            style: TextStyle(
              fontFamily: 'Sofia',
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            backgroundColor: Colors.deepOrange,
            minimumSize: const Size(150, 45),
          ),
        ),
      ),
    );
  }
}
