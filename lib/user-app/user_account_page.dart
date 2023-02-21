import 'package:flutter/material.dart';
import 'package:qmart/models/user.dart';

class UserAccountPage extends StatelessWidget {
  const UserAccountPage(User user, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Account'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://scontent.fcmb2-2.fna.fbcdn.net/v/t39.30808-6/295744338_1902822436582845_1058616800226497574_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=vsakfaNo98UAX-bEImn&_nc_ht=scontent.fcmb2-2.fna&oh=00_AfBibS1SgU_HnmAOoZHgz2j6UvFUpNR2j4a6wfK76PuzxA&oe=63F8BCD6'),
            ),
            const SizedBox(height: 16),
            const Text(
              'John Doe',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            _buildEditor('Enter name', Icons.face),
            const SizedBox(height: 16),
            _buildEditor('Enter password', Icons.key),
            const SizedBox(height: 16),
            _buildEditor('Enter Email', Icons.mail),
            const SizedBox(height: 16),
            _buildEditor('Enter Location', Icons.location_on),
            const SizedBox(height: 16),
            _buildPaymentMethodSelector(),
          ],
        ),
      ),
    );
  }

  Widget _buildEditor(String hint, IconData icon) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(width: 16),
        Expanded(
          child: TextField(
            decoration: InputDecoration(hintText: hint),
          ),
        ),
        const SizedBox(width: 16),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Save'),
        ),
      ],
    );
  }

  Widget _buildPaymentMethodSelector() {
    return Row(
      children: [
        const Icon(Icons.payment),
        const SizedBox(width: 16),
        Expanded(
          child: DropdownButton<String>(
            value: 'Credit Card',
            isExpanded: true,
            onChanged: (String? value) {},
            items: ['Credit Card', 'Paypal', 'Google Pay']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
        const SizedBox(width: 16),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Save'),
        ),
      ],
    );
  }
}
