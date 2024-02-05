import 'package:flutter/material.dart';

import '../res/theme.dart';

class PrivacyPolityPage extends StatelessWidget {
   PrivacyPolityPage({super.key});

  final theme = darkTheme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Private Polity',
            textAlign: TextAlign.center,
            style: theme.textTheme.titleMedium,
          ),
          centerTitle: true,
          backgroundColor: theme.scaffoldBackgroundColor,
        ),
        body: const SingleChildScrollView(
          child: Padding(
          padding: EdgeInsets.fromLTRB(24, 55, 24, 0),
           child: Column(
            children: [
              Text("""Shereef Nabeel Mohammed Abdulhalim built the Smart Trade Journal app as a Free app. This SERVICE is provided by Shereef Nabeel Mohammed Abdulhalim at no cost and is intended for use as is.
                This page is used to inform visitors regarding my policies with the collection, use, and disclosure of Personal Information if anyone decided to use my Service.
                If you choose to use my Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that I collect is used for providing and improving the Service. I will not use or share your information with anyone except as described in this Privacy Policy.
                The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which are accessible at Smart Trade Journal unless otherwise defined in this Privacy Policy.
                """, textAlign: TextAlign.justify, style: TextStyle(
              ),),
              Text("Information Collection and Use", textAlign: TextAlign.justify, style: TextStyle(
                  fontWeight: FontWeight.bold
              ),),
              Text("For a better experience, while using our Service, I may require you to provide us with certain personally identifiable information. The information that I request will be retained on your device and is not collected by me in any way.",
                textAlign: TextAlign.justify, style: TextStyle(
              ),),
              Text("Log Data", textAlign: TextAlign.justify, style: TextStyle(
                  fontWeight: FontWeight.bold
              ),),
              Text("I want to inform you that whenever you use my Service, in a case of an error in the app I collect data and information (through third-party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the app when utilizing my Service, the time and date of your use of the Service, and other statistics.",
                textAlign: TextAlign.justify, style: TextStyle(
                ),),
              Text("Cookies", textAlign: TextAlign.justify, style: TextStyle(
                  fontWeight: FontWeight.bold
              ),),
              Text("""Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device's internal memory.
                  This Service does not use these “cookies” explicitly. However, the app may use third-party code and libraries that use “cookies” to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.
                  """,
                textAlign: TextAlign.justify, style: TextStyle(
                ),),
              Text("Service Providers", textAlign: TextAlign.justify, style: TextStyle(
                  fontWeight: FontWeight.bold
              ),),
              Text("I may employ third-party companies and individuals due to the following reasons:",
                textAlign: TextAlign.justify, style: TextStyle(
                ),),
              Row(
                children: [
                  Text("\u2022 To facilitate our Service;", textAlign: TextAlign.justify, style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),),
                ],
              ),
              Row(
                children: [
                  Flexible(
                    child: Text("\u2022 To provide the Service on our behalf;", textAlign: TextAlign.justify, style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                ],
              ),
              Row(
                children: [
                  Flexible(
                    child: Text("\u2022 To perform Service-related services; or", textAlign: TextAlign.justify, style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: Text("\u2022 To assist us in analyzing how our Service is used.", textAlign: TextAlign.justify, style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                ],
              ),
              Text("I want to inform users of this Service that these third parties have access to their Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.",
                textAlign: TextAlign.justify, style: TextStyle(
                ),),
              Text("Security", textAlign: TextAlign.justify, style: TextStyle(
                  fontWeight: FontWeight.bold
              ),),
              Text("I value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and I cannot guarantee its absolute security.",
                textAlign: TextAlign.justify, style: TextStyle(
                ),),
              Text("Links to Other Sites", textAlign: TextAlign.justify, style: TextStyle(
                  fontWeight: FontWeight.bold
              ),),
              Text("""This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by me. Therefore, I strongly advise you to review the Privacy Policy of these websites. I have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.""",
                textAlign: TextAlign.justify, style: TextStyle(
                ),),
              Text("Children’s Privacy", textAlign: TextAlign.justify, style: TextStyle(
                  fontWeight: FontWeight.bold
              ),),
              Text("""I do not knowingly collect personally identifiable information from children. I encourage all children to never submit any personally identifiable information through the Application and/or Services. I encourage parents and legal guardians to monitor their children's Internet usage and to help enforce this Policy by instructing their children never to provide personally identifiable information through the Application and/or Services without their permission. If you have reason to believe that a child has provided personally identifiable information to us through the Application and/or Services, please contact us. You must also be at least 16 years of age to consent to the processing of your personally identifiable information in your country (in some countries we may allow your parent or guardian to do so on your behalf).
                  """,
                textAlign: TextAlign.justify, style: TextStyle(
                ),),
              Text("Changes to This Privacy Policy", textAlign: TextAlign.justify, style: TextStyle(
                  fontWeight: FontWeight.bold
              ),),
              Text("""I may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. I will notify you of any changes by posting the new Privacy Policy on this page.
                This policy is effective as of 2024-01-19
                """,
                textAlign: TextAlign.justify, style: TextStyle(
                ),),
              Text("Contact Us", textAlign: TextAlign.justify, style: TextStyle(
                  fontWeight: FontWeight.bold
              ),),
              Text("""If you have any questions or suggestions about my Privacy Policy, do not hesitate to contact me at kacarizzet253@gmail.com.
                 """,
                textAlign: TextAlign.justify, style: TextStyle(
                ),),
            ]
          )
                ),
        )
    );
  }
}