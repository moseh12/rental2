import 'package:flutter/material.dart';
import 'package:rental/screens/about_us.dart';
import 'package:rental/screens/add_property.dart';
import 'package:rental/screens/agent_details.dart';
import 'package:rental/screens/agents.dart';
import 'package:rental/screens/audio_call.dart';
import 'package:rental/screens/contact_us.dart';
import 'package:rental/screens/dashboard.dart';
import 'package:rental/screens/filters.dart';
import 'package:rental/screens/followers.dart';
import 'package:rental/screens/following.dart';
import 'package:rental/screens/forgot_password.dart';
import 'package:rental/screens/house_details.dart';
import 'package:rental/screens/inner_chat.dart';
import 'package:rental/screens/location.dart';
import 'package:rental/screens/my_leads.dart';
import 'package:rental/screens/new_contact_us.dart';
import 'package:rental/screens/news_and_blog.dart';
import 'package:rental/screens/news_and_blog_details.dart';
import 'package:rental/screens/notifications.dart';
import 'package:rental/screens/opt_screen.dart';
import 'package:rental/screens/properties.dart';
import 'package:rental/screens/saved_searches.dart';
import 'package:rental/screens/search_properties.dart';
import 'package:rental/screens/search_property.dart';
import 'package:rental/screens/see_all_screen.dart';
import 'package:rental/screens/settings.dart';
import 'package:rental/screens/sign_in.dart';
import 'package:rental/screens/sign_up.dart';
import 'package:rental/screens/splash.dart';
import 'package:rental/screens/terms_and_conditions.dart';
import 'package:rental/screens/video_call.dart';
import 'package:rental/screens/wishlist.dart';

class RouteGenerator {
  // ignore: missing_return
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const Splash());
      case 'Dashboard':
        return MaterialPageRoute(builder: (context) => const DashBoard());
      case 'SignUp':
        return MaterialPageRoute(builder: (context) => const SignUpScreen());
      case 'SignIn':
        return MaterialPageRoute(builder: (context) => const SignInScreen());
      case 'ForgotPassword':
        return MaterialPageRoute(builder: (context) => const ForgetPasswordScreen());
      case 'OtpScreen':
        return MaterialPageRoute(builder: (context) => const OtpScreen());
      case 'AboutUs':
        return MaterialPageRoute(builder: (context) => const AboutUs());
      case 'AgentDetails':
        return MaterialPageRoute(builder: (context) => const AgentDetails());
      case 'Agents':
        return MaterialPageRoute(builder: (context) => const Agents());
      case 'InnerChat':
        return MaterialPageRoute(builder: (context) => const InnerChat());
      case 'ContactUs':
        return MaterialPageRoute(builder: (context) => const ContactUs());
      case 'MyLeads':
        return MaterialPageRoute(builder: (context) => const MyLeads());
      case 'HouseDetails':
        return MaterialPageRoute(builder: (context) => const HouseDetails());
      case 'Filters':
        return MaterialPageRoute(builder: (context) => const Filters());
      case 'Location':
        return MaterialPageRoute(builder: (context) => const Location());
      case 'Notifications':
        return MaterialPageRoute(builder: (context) => const Notifications());
      case 'Wishlist':
        return MaterialPageRoute(builder: (context) => const Wishlist());
      case 'SearchProperties':
        return MaterialPageRoute(
            builder: (context) => const SearchProperties());
      case 'SearchProperty':
        return MaterialPageRoute(builder: (context) => const SearchProperty());
      case 'SavedSearches':
        return MaterialPageRoute(builder: (context) => const SavedSearches());
      case 'NewsAndBlog':
        return MaterialPageRoute(builder: (context) => const NewsAndBlog());
      case 'NewsAndBlogDetails':
        return MaterialPageRoute(
            builder: (context) => const NewsAndBlogDetails());
      case 'NewContactUs':
        return MaterialPageRoute(builder: (context) => const NewContactUs());
      case 'TermsAndConditions':
        return MaterialPageRoute(
            builder: (context) => const TermsAndConditions());
      case 'Settings':
        return MaterialPageRoute(builder: (context) => const Settings());
      case 'AddProperty':
        return MaterialPageRoute(builder: (context) => const AddProperty());
      case 'VideoCall':
        return MaterialPageRoute(builder: (context) => const VideoCall());
      case 'AudioCall':
        return MaterialPageRoute(builder: (context) => const AudioCall());
      case 'SeeAllScreen':
        return MaterialPageRoute(builder: (context) => const SeeAllScreen());
      case 'Followers':
        return MaterialPageRoute(builder: (context) => const Followers());
      case 'Following':
        return MaterialPageRoute(builder: (context) => const Following());
      case 'Properties':
        return MaterialPageRoute(builder: (context) => const Properties());
    }
    return null;
  }
}
