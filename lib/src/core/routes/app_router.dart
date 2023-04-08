import 'package:gyj/src/app/presentation/bottom_navigation.dart';
import 'package:gyj/src/app/presentation/splash_screen.dart';
import 'package:gyj/src/feature/certificate_details/certificate_details.dart';
import 'package:gyj/src/feature/certificates/certificates.dart';
import 'package:gyj/src/feature/change_password/change_password.dart';
import 'package:gyj/src/feature/job_description/job_description.dart';
import 'package:gyj/src/feature/jobs/jobs_screen.dart';
import 'package:gyj/src/feature/jobs_company-description/jobs_company_desc.dart';
import 'package:gyj/src/feature/profile/profile_page.dart';
import 'package:gyj/src/feature/resources/resources.dart';
import 'package:gyj/src/feature/saved_screen/saved_screen.dart';
import 'package:gyj/src/feature/app_start_screens/screens/skills/skills.dart';
import 'package:gyj/src/feature/select_title/select_title.dart';
import 'package:gyj/src/feature/training_details/training_details.dart';
import 'package:gyj/src/feature/trainings/trainings.dart';
import 'package:gyj/src/feature/update_profile/update_profile_page.dart';
import '../../feature/app_start_screens/screens/about/about.dart';
import '../../feature/app_start_screens/screens/availability/avaibality.dart';
import '../../feature/app_start_screens/screens/basic_information/presentation/screen/basic_information.dart';
import '../../feature/app_start_screens/screens/education/education.dart';
import '../../feature/app_start_screens/screens/experince/experince.dart';
import '../../feature/app_start_screens/screens/onboarding_screem/onboarding_screen.dart';
import '../../feature/app_start_screens/screens/portfolio/portfolio.dart';
import '../../feature/app_start_screens/screens/post_education.dart/post_education.dart';
import '../../feature/app_start_screens/screens/post_experience.dart/post_experience.dart';
import '../../feature/app_start_screens/screens/post_portfolio.dart/post_portfolio.dart';
import '../../feature/app_start_screens/screens/post_reference/post_reference.dart';
import '../../feature/app_start_screens/screens/reference/reference.dart';
import '../../feature/authentications/presentations/screens/login.dart';
import '../../feature/authentications/presentations/screens/register.dart';
import '../../feature/home_screen/home_screen.dart';
import '../../feature/resources_details/resources_details.dart';
import '../di/injection.dart';
import '../helpers/storage_helper.dart';
import 'app_router.dart';

export 'package:auto_route/auto_route.dart';

export 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute<void>(page: LoginPage),
    AutoRoute<void>(page: RegisterPage),
    AutoRoute<void>(page: SplashScreenPage, initial: true),
    AutoRoute<void>(page: OnBoardingScreenPage),
    AutoRoute<void>(page: BasicInformationPage),
    AutoRoute<void>(page: AboutScreenPage),
    AutoRoute<void>(page: SkillsScreenPage),
    AutoRoute<void>(page: AvailabilityScreenPage),
    AutoRoute<void>(page: ExperienceScreenPage),
    AutoRoute<void>(page: PostExperienceScreenPage),
    AutoRoute<void>(page: EducationScreenPage),
    AutoRoute<void>(page: PostEducationScreenPage),
    AutoRoute<void>(page: ReferenceScreenPage),
    AutoRoute<void>(page: PortfolioScreenPage),
    AutoRoute<void>(page: PostPortfolioScreenPage),
    AutoRoute<void>(page: PostReferrenceScreenPage),
    AutoRoute<void>(page: HomeScreenPage),
    AutoRoute<void>(page: BottomNavigationPage),
    AutoRoute<void>(page: JobsScreenPage),
    AutoRoute<void>(page: ProfilePageScreen),
    AutoRoute<void>(page: UpdateProfliePage),
    AutoRoute<void>(page: ChangePasswordPage),
    AutoRoute<void>(page: SavedPage),
    AutoRoute<void>(page: TrainingPage),
    AutoRoute<void>(page: TrainingDetailsPage),
    AutoRoute<void>(page: CertificatePage),
    AutoRoute<void>(page: CertificateDetailsPage),
    AutoRoute<void>(page: ResourcesScreenPage),
    AutoRoute<void>(page: ResourcesDetailsPage),
    AutoRoute<void>(page: JobDescriptionPage),
    AutoRoute<void>(page: JobsCompanyDetailsPage),
    AutoRoute<void>(page: SelectTitlePage),
  ],
)
class $AppRouter {}

class AuthGuard extends AutoRouteGuard {
  final _helper = getIt<StorageHelper>();

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    if (await _helper.hasAccessToken) {
      resolver.next();
    } else {
      router.root.replaceAll([const LoginRoute()]);
    }
  }
}
