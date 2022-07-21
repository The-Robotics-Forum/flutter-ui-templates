import 'package:flutter/material.dart';
import 'package:flutter_settings_ui/flutter_settings_ui.dart';
class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool lockInBackground = false;
  bool notificationsEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: SettingsList(
          sections: [
            SettingsSection(
              title: 'Account',
              tiles: [
                SettingsTile(
                  title: 'Username',
                  leading: Icon(Icons.account_circle_rounded),
                  subtitle: 'The Robotics Forum',
                ),
                SettingsTile(title: 'Phone number', leading: Icon(Icons.phone)),
                SettingsTile(title: 'Email', leading: Icon(Icons.email)),
              ],
            ),
            SettingsSection(
              title: 'Common',
              tiles: [
                SettingsTile(
                  title: 'Language',
                  subtitle: 'English',
                  leading: const Icon(Icons.language),

                ),

                SettingsTile(
                  title: 'Storage and Data',
                  leading: Icon(Icons.storage),
                ),
              ],
            ),
            SettingsSection(
              title: 'Security',
              tiles: [
                SettingsTile.switchTile(
                  title: 'Lock app in background',
                  leading: const Icon(Icons.phonelink_lock),
                  switchValue: lockInBackground,
                  onToggle: (bool value) {
                    setState(() {
                      lockInBackground = value;
                      notificationsEnabled = value;
                    });
                  },
                ),
                SettingsTile(
                  title: 'Help',
                  subtitle: 'Allow application to access stored fingerprint IDs.',
                  leading: const Icon(Icons.question_mark),
                ),
                SettingsTile(
                  title: 'Privacy',
                  leading: const Icon(Icons.lock),
                ),
                SettingsTile.switchTile(
                  title: 'Enable Notifications',
                  enabled: notificationsEnabled,
                  leading: const Icon(Icons.notifications_active),
                  switchValue: true,
                  onToggle: (value) {},
                ),
              ],
            ),
            SettingsSection(
              title: 'Other',
              tiles: [
                SettingsTile(title: 'Terms of Service', leading: Icon(Icons.description)),
                SettingsTile(title: 'Invite', leading: Icon(Icons.person_add_alt_1_rounded)),
                SettingsTile(title: 'Sign out', leading: Icon(Icons.exit_to_app)),
              ],
            ),
            CustomSection(
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 22, bottom: 8),
                    child: Icon(
                      Icons.settings,
                      size: 25,
                      color: Color(0xFF777777),
                    ),
                  ),
                  Text(
                    'Version: 1.0.0',
                    style: TextStyle(color: Color(0xFF777777)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
