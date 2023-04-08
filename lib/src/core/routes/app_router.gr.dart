// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i33;
import 'package:flutter/material.dart' as _i34;
import 'package:gyj/src/app/presentation/bottom_navigation.dart' as _i18;
import 'package:gyj/src/app/presentation/splash_screen.dart' as _i3;
import 'package:gyj/src/feature/app_start_screens/screens/about/about.dart'
    as _i6;
import 'package:gyj/src/feature/app_start_screens/screens/availability/avaibality.dart'
    as _i8;
import 'package:gyj/src/feature/app_start_screens/screens/basic_information/presentation/screen/basic_information.dart'
    as _i5;
import 'package:gyj/src/feature/app_start_screens/screens/education/education.dart'
    as _i11;
import 'package:gyj/src/feature/app_start_screens/screens/experince/experince.dart'
    as _i9;
import 'package:gyj/src/feature/app_start_screens/screens/onboarding_screem/onboarding_screen.dart'
    as _i4;
import 'package:gyj/src/feature/app_start_screens/screens/portfolio/portfolio.dart'
    as _i14;
import 'package:gyj/src/feature/app_start_screens/screens/post_education.dart/post_education.dart'
    as _i12;
import 'package:gyj/src/feature/app_start_screens/screens/post_experience.dart/post_experience.dart'
    as _i10;
import 'package:gyj/src/feature/app_start_screens/screens/post_portfolio.dart/post_portfolio.dart'
    as _i15;
import 'package:gyj/src/feature/app_start_screens/screens/post_reference/post_reference.dart'
    as _i16;
import 'package:gyj/src/feature/app_start_screens/screens/reference/reference.dart'
    as _i13;
import 'package:gyj/src/feature/app_start_screens/screens/skills/skills.dart'
    as _i7;
import 'package:gyj/src/feature/authentications/presentations/screens/login.dart'
    as _i1;
import 'package:gyj/src/feature/authentications/presentations/screens/register.dart'
    as _i2;
import 'package:gyj/src/feature/certificate_details/certificate_details.dart'
    as _i27;
import 'package:gyj/src/feature/certificates/certificates.dart' as _i26;
import 'package:gyj/src/feature/change_password/change_password.dart' as _i22;
import 'package:gyj/src/feature/home_screen/home_screen.dart' as _i17;
import 'package:gyj/src/feature/job_description/job_description.dart' as _i30;
import 'package:gyj/src/feature/jobs/jobs_screen.dart' as _i19;
import 'package:gyj/src/feature/jobs_company-description/jobs_company_desc.dart'
    as _i31;
import 'package:gyj/src/feature/profile/profile_page.dart' as _i20;
import 'package:gyj/src/feature/resources/resources.dart' as _i28;
import 'package:gyj/src/feature/resources_details/resources_details.dart'
    as _i29;
import 'package:gyj/src/feature/saved_screen/saved_screen.dart' as _i23;
import 'package:gyj/src/feature/select_title/select_title.dart' as _i32;
import 'package:gyj/src/feature/training_details/training_details.dart' as _i25;
import 'package:gyj/src/feature/trainings/trainings.dart' as _i24;
import 'package:gyj/src/feature/update_profile/update_profile_page.dart'
    as _i21;

class AppRouter extends _i33.RootStackRouter {
  AppRouter([_i34.GlobalKey<_i34.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i33.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i33.AdaptivePage<void>(
        routeData: routeData,
        child: const _i1.LoginPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i33.AdaptivePage<void>(
        routeData: routeData,
        child: const _i2.RegisterPage(),
      );
    },
    SplashScreenRoute.name: (routeData) {
      return _i33.AdaptivePage<void>(
        routeData: routeData,
        child: const _i3.SplashScreenPage(),
      );
    },
    OnBoardingScreenRoute.name: (routeData) {
      return _i33.AdaptivePage<void>(
        routeData: routeData,
        child: const _i4.OnBoardingScreenPage(),
      );
    },
    BasicInformationRoute.name: (routeData) {
      return _i33.AdaptivePage<void>(
        routeData: routeData,
        child: const _i5.BasicInformationPage(),
      );
    },
    AboutScreenRoute.name: (routeData) {
      return _i33.AdaptivePage<void>(
        routeData: routeData,
        child: const _i6.AboutScreenPage(),
      );
    },
    SkillsScreenRoute.name: (routeData) {
      return _i33.AdaptivePage<void>(
        routeData: routeData,
        child: const _i7.SkillsScreenPage(),
      );
    },
    AvailabilityScreenRoute.name: (routeData) {
      return _i33.AdaptivePage<void>(
        routeData: routeData,
        child: const _i8.AvailabilityScreenPage(),
      );
    },
    ExperienceScreenRoute.name: (routeData) {
      return _i33.AdaptivePage<void>(
        routeData: routeData,
        child: const _i9.ExperienceScreenPage(),
      );
    },
    PostExperienceScreenRoute.name: (routeData) {
      return _i33.AdaptivePage<void>(
        routeData: routeData,
        child: const _i10.PostExperienceScreenPage(),
      );
    },
    EducationScreenRoute.name: (routeData) {
      return _i33.AdaptivePage<void>(
        routeData: routeData,
        child: const _i11.EducationScreenPage(),
      );
    },
    PostEducationScreenRoute.name: (routeData) {
      return _i33.AdaptivePage<void>(
        routeData: routeData,
        child: const _i12.PostEducationScreenPage(),
      );
    },
    ReferenceScreenRoute.name: (routeData) {
      return _i33.AdaptivePage<void>(
        routeData: routeData,
        child: const _i13.ReferenceScreenPage(),
      );
    },
    PortfolioScreenRoute.name: (routeData) {
      return _i33.AdaptivePage<void>(
        routeData: routeData,
        child: const _i14.PortfolioScreenPage(),
      );
    },
    PostPortfolioScreenRoute.name: (routeData) {
      return _i33.AdaptivePage<void>(
        routeData: routeData,
        child: const _i15.PostPortfolioScreenPage(),
      );
    },
    PostReferrenceScreenRoute.name: (routeData) {
      return _i33.AdaptivePage<void>(
        routeData: routeData,
        child: const _i16.PostReferrenceScreenPage(),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return _i33.AdaptivePage<void>(
        routeData: routeData,
        child: const _i17.HomeScreenPage(),
      );
    },
    BottomNavigationRoute.name: (routeData) {
      return _i33.AdaptivePage<void>(
        routeData: routeData,
        child: const _i18.BottomNavigationPage(),
      );
    },
    JobsScreenRoute.name: (routeData) {
      return _i33.AdaptivePage<void>(
        routeData: routeData,
        child: const _i19.JobsScreenPage(),
      );
    },
    ProfileRouteScreen.name: (routeData) {
      return _i33.AdaptivePage<void>(
        routeData: routeData,
        child: const _i20.ProfilePageScreen(),
      );
    },
    UpdateProflieRoute.name: (routeData) {
      return _i33.AdaptivePage<void>(
        routeData: routeData,
        child: const _i21.UpdateProfliePage(),
      );
    },
    ChangePasswordRoute.name: (routeData) {
      return _i33.AdaptivePage<void>(
        routeData: routeData,
        child: const _i22.ChangePasswordPage(),
      );
    },
    SavedRoute.name: (routeData) {
      return _i33.AdaptivePage<void>(
        routeData: routeData,
        child: const _i23.SavedPage(),
      );
    },
    TrainingRoute.name: (routeData) {
      return _i33.AdaptivePage<void>(
        routeData: routeData,
        child: const _i24.TrainingPage(),
      );
    },
    TrainingDetailsRoute.name: (routeData) {
      return _i33.AdaptivePage<void>(
        routeData: routeData,
        child: const _i25.TrainingDetailsPage(),
      );
    },
    CertificateRoute.name: (routeData) {
      return _i33.AdaptivePage<void>(
        routeData: routeData,
        child: const _i26.CertificatePage(),
      );
    },
    CertificateDetailsRoute.name: (routeData) {
      return _i33.AdaptivePage<void>(
        routeData: routeData,
        child: const _i27.CertificateDetailsPage(),
      );
    },
    ResourcesScreenRoute.name: (routeData) {
      return _i33.AdaptivePage<void>(
        routeData: routeData,
        child: const _i28.ResourcesScreenPage(),
      );
    },
    ResourcesDetailsRoute.name: (routeData) {
      return _i33.AdaptivePage<void>(
        routeData: routeData,
        child: const _i29.ResourcesDetailsPage(),
      );
    },
    JobDescriptionRoute.name: (routeData) {
      return _i33.AdaptivePage<void>(
        routeData: routeData,
        child: const _i30.JobDescriptionPage(),
      );
    },
    JobsCompanyDetailsRoute.name: (routeData) {
      return _i33.AdaptivePage<void>(
        routeData: routeData,
        child: const _i31.JobsCompanyDetailsPage(),
      );
    },
    SelectTitleRoute.name: (routeData) {
      return _i33.AdaptivePage<void>(
        routeData: routeData,
        child: const _i32.SelectTitlePage(),
      );
    },
  };

  @override
  List<_i33.RouteConfig> get routes => [
        _i33.RouteConfig(
          LoginRoute.name,
          path: '/login-page',
        ),
        _i33.RouteConfig(
          RegisterRoute.name,
          path: '/register-page',
        ),
        _i33.RouteConfig(
          SplashScreenRoute.name,
          path: '/',
        ),
        _i33.RouteConfig(
          OnBoardingScreenRoute.name,
          path: '/on-boarding-screen-page',
        ),
        _i33.RouteConfig(
          BasicInformationRoute.name,
          path: '/basic-information-page',
        ),
        _i33.RouteConfig(
          AboutScreenRoute.name,
          path: '/about-screen-page',
        ),
        _i33.RouteConfig(
          SkillsScreenRoute.name,
          path: '/skills-screen-page',
        ),
        _i33.RouteConfig(
          AvailabilityScreenRoute.name,
          path: '/availability-screen-page',
        ),
        _i33.RouteConfig(
          ExperienceScreenRoute.name,
          path: '/experience-screen-page',
        ),
        _i33.RouteConfig(
          PostExperienceScreenRoute.name,
          path: '/post-experience-screen-page',
        ),
        _i33.RouteConfig(
          EducationScreenRoute.name,
          path: '/education-screen-page',
        ),
        _i33.RouteConfig(
          PostEducationScreenRoute.name,
          path: '/post-education-screen-page',
        ),
        _i33.RouteConfig(
          ReferenceScreenRoute.name,
          path: '/reference-screen-page',
        ),
        _i33.RouteConfig(
          PortfolioScreenRoute.name,
          path: '/portfolio-screen-page',
        ),
        _i33.RouteConfig(
          PostPortfolioScreenRoute.name,
          path: '/post-portfolio-screen-page',
        ),
        _i33.RouteConfig(
          PostReferrenceScreenRoute.name,
          path: '/post-referrence-screen-page',
        ),
        _i33.RouteConfig(
          HomeScreenRoute.name,
          path: '/home-screen-page',
        ),
        _i33.RouteConfig(
          BottomNavigationRoute.name,
          path: '/bottom-navigation-page',
        ),
        _i33.RouteConfig(
          JobsScreenRoute.name,
          path: '/jobs-screen-page',
        ),
        _i33.RouteConfig(
          ProfileRouteScreen.name,
          path: '/profile-page-screen',
        ),
        _i33.RouteConfig(
          UpdateProflieRoute.name,
          path: '/update-proflie-page',
        ),
        _i33.RouteConfig(
          ChangePasswordRoute.name,
          path: '/change-password-page',
        ),
        _i33.RouteConfig(
          SavedRoute.name,
          path: '/saved-page',
        ),
        _i33.RouteConfig(
          TrainingRoute.name,
          path: '/training-page',
        ),
        _i33.RouteConfig(
          TrainingDetailsRoute.name,
          path: '/training-details-page',
        ),
        _i33.RouteConfig(
          CertificateRoute.name,
          path: '/certificate-page',
        ),
        _i33.RouteConfig(
          CertificateDetailsRoute.name,
          path: '/certificate-details-page',
        ),
        _i33.RouteConfig(
          ResourcesScreenRoute.name,
          path: '/resources-screen-page',
        ),
        _i33.RouteConfig(
          ResourcesDetailsRoute.name,
          path: '/resources-details-page',
        ),
        _i33.RouteConfig(
          JobDescriptionRoute.name,
          path: '/job-description-page',
        ),
        _i33.RouteConfig(
          JobsCompanyDetailsRoute.name,
          path: '/jobs-company-details-page',
        ),
        _i33.RouteConfig(
          SelectTitleRoute.name,
          path: '/select-title-page',
        ),
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i33.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login-page',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.RegisterPage]
class RegisterRoute extends _i33.PageRouteInfo<void> {
  const RegisterRoute()
      : super(
          RegisterRoute.name,
          path: '/register-page',
        );

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [_i3.SplashScreenPage]
class SplashScreenRoute extends _i33.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i4.OnBoardingScreenPage]
class OnBoardingScreenRoute extends _i33.PageRouteInfo<void> {
  const OnBoardingScreenRoute()
      : super(
          OnBoardingScreenRoute.name,
          path: '/on-boarding-screen-page',
        );

  static const String name = 'OnBoardingScreenRoute';
}

/// generated route for
/// [_i5.BasicInformationPage]
class BasicInformationRoute extends _i33.PageRouteInfo<void> {
  const BasicInformationRoute()
      : super(
          BasicInformationRoute.name,
          path: '/basic-information-page',
        );

  static const String name = 'BasicInformationRoute';
}

/// generated route for
/// [_i6.AboutScreenPage]
class AboutScreenRoute extends _i33.PageRouteInfo<void> {
  const AboutScreenRoute()
      : super(
          AboutScreenRoute.name,
          path: '/about-screen-page',
        );

  static const String name = 'AboutScreenRoute';
}

/// generated route for
/// [_i7.SkillsScreenPage]
class SkillsScreenRoute extends _i33.PageRouteInfo<void> {
  const SkillsScreenRoute()
      : super(
          SkillsScreenRoute.name,
          path: '/skills-screen-page',
        );

  static const String name = 'SkillsScreenRoute';
}

/// generated route for
/// [_i8.AvailabilityScreenPage]
class AvailabilityScreenRoute extends _i33.PageRouteInfo<void> {
  const AvailabilityScreenRoute()
      : super(
          AvailabilityScreenRoute.name,
          path: '/availability-screen-page',
        );

  static const String name = 'AvailabilityScreenRoute';
}

/// generated route for
/// [_i9.ExperienceScreenPage]
class ExperienceScreenRoute extends _i33.PageRouteInfo<void> {
  const ExperienceScreenRoute()
      : super(
          ExperienceScreenRoute.name,
          path: '/experience-screen-page',
        );

  static const String name = 'ExperienceScreenRoute';
}

/// generated route for
/// [_i10.PostExperienceScreenPage]
class PostExperienceScreenRoute extends _i33.PageRouteInfo<void> {
  const PostExperienceScreenRoute()
      : super(
          PostExperienceScreenRoute.name,
          path: '/post-experience-screen-page',
        );

  static const String name = 'PostExperienceScreenRoute';
}

/// generated route for
/// [_i11.EducationScreenPage]
class EducationScreenRoute extends _i33.PageRouteInfo<void> {
  const EducationScreenRoute()
      : super(
          EducationScreenRoute.name,
          path: '/education-screen-page',
        );

  static const String name = 'EducationScreenRoute';
}

/// generated route for
/// [_i12.PostEducationScreenPage]
class PostEducationScreenRoute extends _i33.PageRouteInfo<void> {
  const PostEducationScreenRoute()
      : super(
          PostEducationScreenRoute.name,
          path: '/post-education-screen-page',
        );

  static const String name = 'PostEducationScreenRoute';
}

/// generated route for
/// [_i13.ReferenceScreenPage]
class ReferenceScreenRoute extends _i33.PageRouteInfo<void> {
  const ReferenceScreenRoute()
      : super(
          ReferenceScreenRoute.name,
          path: '/reference-screen-page',
        );

  static const String name = 'ReferenceScreenRoute';
}

/// generated route for
/// [_i14.PortfolioScreenPage]
class PortfolioScreenRoute extends _i33.PageRouteInfo<void> {
  const PortfolioScreenRoute()
      : super(
          PortfolioScreenRoute.name,
          path: '/portfolio-screen-page',
        );

  static const String name = 'PortfolioScreenRoute';
}

/// generated route for
/// [_i15.PostPortfolioScreenPage]
class PostPortfolioScreenRoute extends _i33.PageRouteInfo<void> {
  const PostPortfolioScreenRoute()
      : super(
          PostPortfolioScreenRoute.name,
          path: '/post-portfolio-screen-page',
        );

  static const String name = 'PostPortfolioScreenRoute';
}

/// generated route for
/// [_i16.PostReferrenceScreenPage]
class PostReferrenceScreenRoute extends _i33.PageRouteInfo<void> {
  const PostReferrenceScreenRoute()
      : super(
          PostReferrenceScreenRoute.name,
          path: '/post-referrence-screen-page',
        );

  static const String name = 'PostReferrenceScreenRoute';
}

/// generated route for
/// [_i17.HomeScreenPage]
class HomeScreenRoute extends _i33.PageRouteInfo<void> {
  const HomeScreenRoute()
      : super(
          HomeScreenRoute.name,
          path: '/home-screen-page',
        );

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i18.BottomNavigationPage]
class BottomNavigationRoute extends _i33.PageRouteInfo<void> {
  const BottomNavigationRoute()
      : super(
          BottomNavigationRoute.name,
          path: '/bottom-navigation-page',
        );

  static const String name = 'BottomNavigationRoute';
}

/// generated route for
/// [_i19.JobsScreenPage]
class JobsScreenRoute extends _i33.PageRouteInfo<void> {
  const JobsScreenRoute()
      : super(
          JobsScreenRoute.name,
          path: '/jobs-screen-page',
        );

  static const String name = 'JobsScreenRoute';
}

/// generated route for
/// [_i20.ProfilePageScreen]
class ProfileRouteScreen extends _i33.PageRouteInfo<void> {
  const ProfileRouteScreen()
      : super(
          ProfileRouteScreen.name,
          path: '/profile-page-screen',
        );

  static const String name = 'ProfileRouteScreen';
}

/// generated route for
/// [_i21.UpdateProfliePage]
class UpdateProflieRoute extends _i33.PageRouteInfo<void> {
  const UpdateProflieRoute()
      : super(
          UpdateProflieRoute.name,
          path: '/update-proflie-page',
        );

  static const String name = 'UpdateProflieRoute';
}

/// generated route for
/// [_i22.ChangePasswordPage]
class ChangePasswordRoute extends _i33.PageRouteInfo<void> {
  const ChangePasswordRoute()
      : super(
          ChangePasswordRoute.name,
          path: '/change-password-page',
        );

  static const String name = 'ChangePasswordRoute';
}

/// generated route for
/// [_i23.SavedPage]
class SavedRoute extends _i33.PageRouteInfo<void> {
  const SavedRoute()
      : super(
          SavedRoute.name,
          path: '/saved-page',
        );

  static const String name = 'SavedRoute';
}

/// generated route for
/// [_i24.TrainingPage]
class TrainingRoute extends _i33.PageRouteInfo<void> {
  const TrainingRoute()
      : super(
          TrainingRoute.name,
          path: '/training-page',
        );

  static const String name = 'TrainingRoute';
}

/// generated route for
/// [_i25.TrainingDetailsPage]
class TrainingDetailsRoute extends _i33.PageRouteInfo<void> {
  const TrainingDetailsRoute()
      : super(
          TrainingDetailsRoute.name,
          path: '/training-details-page',
        );

  static const String name = 'TrainingDetailsRoute';
}

/// generated route for
/// [_i26.CertificatePage]
class CertificateRoute extends _i33.PageRouteInfo<void> {
  const CertificateRoute()
      : super(
          CertificateRoute.name,
          path: '/certificate-page',
        );

  static const String name = 'CertificateRoute';
}

/// generated route for
/// [_i27.CertificateDetailsPage]
class CertificateDetailsRoute extends _i33.PageRouteInfo<void> {
  const CertificateDetailsRoute()
      : super(
          CertificateDetailsRoute.name,
          path: '/certificate-details-page',
        );

  static const String name = 'CertificateDetailsRoute';
}

/// generated route for
/// [_i28.ResourcesScreenPage]
class ResourcesScreenRoute extends _i33.PageRouteInfo<void> {
  const ResourcesScreenRoute()
      : super(
          ResourcesScreenRoute.name,
          path: '/resources-screen-page',
        );

  static const String name = 'ResourcesScreenRoute';
}

/// generated route for
/// [_i29.ResourcesDetailsPage]
class ResourcesDetailsRoute extends _i33.PageRouteInfo<void> {
  const ResourcesDetailsRoute()
      : super(
          ResourcesDetailsRoute.name,
          path: '/resources-details-page',
        );

  static const String name = 'ResourcesDetailsRoute';
}

/// generated route for
/// [_i30.JobDescriptionPage]
class JobDescriptionRoute extends _i33.PageRouteInfo<void> {
  const JobDescriptionRoute()
      : super(
          JobDescriptionRoute.name,
          path: '/job-description-page',
        );

  static const String name = 'JobDescriptionRoute';
}

/// generated route for
/// [_i31.JobsCompanyDetailsPage]
class JobsCompanyDetailsRoute extends _i33.PageRouteInfo<void> {
  const JobsCompanyDetailsRoute()
      : super(
          JobsCompanyDetailsRoute.name,
          path: '/jobs-company-details-page',
        );

  static const String name = 'JobsCompanyDetailsRoute';
}

/// generated route for
/// [_i32.SelectTitlePage]
class SelectTitleRoute extends _i33.PageRouteInfo<void> {
  const SelectTitleRoute()
      : super(
          SelectTitleRoute.name,
          path: '/select-title-page',
        );

  static const String name = 'SelectTitleRoute';
}
