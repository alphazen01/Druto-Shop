
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/constant/theme.dart';
import '../../utils/widgets/custom_text.dart';

class TermsConditionScreen extends StatelessWidget {
  const TermsConditionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: PTheme.paddingX,vertical: PTheme.paddingy),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               CustomText(
                title: "Tearms and Condition", 
                fontSize: 26, 
                fontWeight: FontWeight.w700, 
                color: Colors.black
                ),
                SizedBox(height: 40,),
                CustomText(
                title: "Last Update: September 2022", 
                fontSize: 14, 
                fontWeight: FontWeight.w300, 
                color: Colors.black
                ),
                CustomText(
                title: "Welcome to Drutoshop.com", 
                fontSize: 14, 
                fontWeight: FontWeight.w300, 
                color: Colors.black
                ),
                SizedBox(height: 20,),
                CustomText(
                title: """The following terms of service (these "Terms of Service"), govern your access to and use of the Fiverr website and mobile application, including any content, functionality and services offered on or through www.fiverr.com or the Fiverr mobile application (the "Site") by Drutoshop International Ltd. (8 Kaplan St. Tel Aviv 6473409, Israel) and its subsidiaries: Fiverr Inc. (38 Greene St. NY 10013, NY, USA) and Fiverr Limited (Lemesou 11, 2112 Nicosia, Cyprus), as applicable. Fiverr International Ltd. and its subsidiaries are collectively referred hereto as "Fiverr" "we" or "us" and “you” or “user” means you as an user of the Site.""", 
                fontSize: 14, 
                fontWeight: FontWeight.w300, 
                color: Colors.black
                ),
                SizedBox(height: 20,),
                CustomText(
                title: """Please read the Terms of Service carefully before you start to use the Site. By using the Site, opening an account or by clicking to accept or agree to the Terms of Service when this option is made available to you, you accept and agree, on behalf of yourself or on behalf of your employer or any other entity (if applicable), to be bound and abide by these Terms of Service and Fiverr Payment Terms, found here (“Payment Terms”), which is incorporated herein by reference. You further acknowledge, you have read and understood our Privacy Policy, found here. If you do not want to agree to these Terms of Service or the Privacy Policy, you must not access or use the Site. For more detailed policies surrounding the activity and usage on the Site, please access the designated articles herein.""", 
                fontSize: 14, 
                fontWeight: FontWeight.w300, 
                color: Colors.black
                ),
                SizedBox(height: 20,),
                CustomText(
                title: """This Site is offered and available to users who are at least 18 years of age and of legal age to form a binding contract. If you are under 18 and at least 13 years of age, you are only permitted to use the Site through an account owned by a parent or legal guardian with their appropriate permission. If you are under 13 you are not permitted to use the Site or the Fiverr services. By using the Site, you represent and warrant that you meet all of the foregoing eligibility requirements. If you do not meet all of these requirements, you must not access or use the Site""", 
                fontSize: 14, 
                fontWeight: FontWeight.w300, 
                color: Colors.black
                ),
                SizedBox(height: 20,),
                CustomText(
                title: """Our Customer Support team is available 24/7 if you have any questions regarding the Site or Terms of Service. Contacting our Customer Support team can be performed by submitting a request here.""", 
                fontSize: 14, 
                fontWeight: FontWeight.w300, 
                color: Colors.black
                ),
                SizedBox(height: 20,),
                CustomText(
                title: """The original language of these Terms of Service, as well as all other texts throughout the Site, is English. Fiverr makes this translation available for convenience only. In case of conflicts between the original English version and any translation, the English version shall prevail.""", 
                fontSize: 14, 
                fontWeight: FontWeight.w300, 
                color: Colors.black
                ),
                SizedBox(height: 20,),
                CustomText(
                title: "Overview (Main terms, in a nutshell)", 
                fontSize: 18, 
                fontWeight: FontWeight.w700, 
                color: Colors.black
                ),
                SizedBox(height: 20,),
                CustomText(
                title: """Only registered users may buy and sell on Fiverr. Registration is free. In registering for an account, you agree to provide us with accurate, complete and updated information and must not create an account for fraudulent or misleading purposes. You are solely responsible for any activity on your account and for maintaining the confidentiality and security of your password. We are not liable for any acts or omissions by you in connection with your account.""", 
                fontSize: 14, 
                fontWeight: FontWeight.w300, 
                color: Colors.black
                ),
                SizedBox(height: 20,),
                CustomText(
                title: """Gigs on Fiverr may be offered at a base starting price of \$5. Some Gigs are offered at a base price of more than  as determined by the Seller.""", 
                fontSize: 14, 
                fontWeight: FontWeight.w300, 
                color: Colors.black
                ),
                SizedBox(height: 20,),
                CustomText(
                title: "Buyers pay Fiverr in advance to create an order (see Payment Terms).", 
                fontSize: 14, 
                fontWeight: FontWeight.w300, 
                color: Colors.black
                ),
                SizedBox(height: 20,),
                CustomText(
                title: """Orders are purchased through the Order button found on a Seller’s Gig page or through a Custom Offer.For fees and payments please read the Payment Terms""", 
                fontSize: 14, 
                fontWeight: FontWeight.w300, 
                color: Colors.black
                ),
                SizedBox(height: 20,),
                CustomText(
                title: """Sellers must fulfill their orders, and may not cancel orders on a regular basis or without cause. Cancelling orders will affect Sellers’ reputation and status""", 
                fontSize: 14, 
                fontWeight: FontWeight.w300, 
                color: Colors.black
                ),
                SizedBox(height: 20,),
                CustomText(
                title: """Sellers gain account statuses (Levels) based on their performance and reputation. Advanced levels provide their owners with benefits, including offering services for higher prices through Gig Extras, or selling their Gig in multiples.""", 
                fontSize: 14, 
                fontWeight: FontWeight.w300, 
                color: Colors.black
                ),
                SizedBox(height: 20,),
                CustomText(
                title: """Users may not offer or accept payments using any method other than placing an order through Fiverr.com.When purchasing a Gig, Buyers are granted all rights for the delivered work, unless otherwise specified by the Seller on their Gig page. Note: some Gigs charge additional payments (through Gig Extras) for Commercial Use License. See our “Ownership” and “Commercial Use License” sections below for more information.""", 
                fontSize: 14, 
                fontWeight: FontWeight.w300, 
                color: Colors.black
                ),
                SizedBox(height: 20,),
                CustomText(
                title: """Fiverr retains the right to use all published delivered works and Logo Designs for Fiverr marketing and promotion purposes.We care about your privacy. You can read our Privacy Policy here.""", 
                fontSize: 14, 
                fontWeight: FontWeight.w300, 
                color: Colors.black
                ),
                SizedBox(height: 20,),
                CustomText(
                title: """Users undertake to comply with Fiverr’s Community Standards, which are a set of behavior rules and guidelines, applicable to the Fiverr community and marketplace in addition to these Terms of Service, as updated from time to time.""", 
                fontSize: 14, 
                fontWeight: FontWeight.w300, 
                color: Colors.black
                ),
                SizedBox(height: 20,),
                CustomText(
                title: """Fiverr offers its users the Logo Maker, which allows certain Sellers to offer various original logo designs for Buyers to adjust and customize per their own specific needs, using special automated design tools. Through the Logo Maker, Buyers purchase full commercial use rights to the Logo Design embedded with their brand name.""", 
                fontSize: 14, 
                fontWeight: FontWeight.w300, 
                color: Colors.black
                ),
                SizedBox(height: 20,),
                CustomText(
                title: "User Conduct and Protection", 
                fontSize: 18, 
                fontWeight: FontWeight.w700, 
                color: Colors.black
                ),
                SizedBox(height: 20,),
                CustomText(
                title: """Fiverr enables people around the world to create, share, sell and purchase nearly any service they need at an unbeatable value. Services offered on Fiverr reflect the diversity of an expanding Gig economy. Members of the Fiverr community communicate and engage through orders, social media, and on Fiverr’s Community Forums.""", 
                fontSize: 14, 
                fontWeight: FontWeight.w300, 
                color: Colors.black
                ),
                SizedBox(height: 20,),
                CustomText(
                title: """Fiverr maintains a friendly, community spirited, and professional environment. Users should keep to that spirit while participating in any activity or extensions of Fiverr. This section relates to the expected conduct users should adhere to while interacting with each other on Fiverr.""", 
                fontSize: 14, 
                fontWeight: FontWeight.w300, 
                color: Colors.black
                ),
                SizedBox(height: 20,),
                CustomText(
                title: """To report a violation of our Terms of Service and/or our Community Standards, User Misconduct, or inquiries regarding your account, please contact our Customer Support team here.""", 
                fontSize: 14, 
                fontWeight: FontWeight.w300, 
                color: Colors.black
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}