import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hanaportfolio/utils/links.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialContact extends StatelessWidget {
  const SocialContact({super.key});

  @override
  Widget build(BuildContext context) {
    return  Wrap(
      children: [
        _itemContact(
          icon: FontAwesomeIcons.github,
           link: urlGithub,
          tooltip: "Github",
        ),
        _itemContact(
          icon: FontAwesomeIcons.linkedin,
          link: urlLinkedin,
          tooltip: "LinkdIn",
        ),
        _itemContact(
          icon: Icons.mail,
           link: urlEmail,
          tooltip: "hana.ouerghemmi@holbertonstudents.com",
        ),
        _itemContact(
          icon: FontAwesomeIcons.whatsapp,
           link: uriWhatsapp,
          tooltip: "whatsappNumber",
        ),
        
      ],
    );
  }
}

class _itemContact extends StatelessWidget {
  final IconData icon;
  final String tooltip;
  final Uri link;
  const _itemContact({super.key, required this.icon, required this.tooltip, required this.link});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: tooltip,
      splashRadius: 20,
        hoverColor: Colors.grey[400],
        color: const Color.fromRGBO(96, 125, 139, 1),
        onPressed: () {
           launchMyUrl(link);
        },
        icon: Icon(icon,));
  }
}


