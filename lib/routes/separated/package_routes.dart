import '../../views/package_detail_view.dart';
import '../../views/package_listing_view.dart';
import '../app_routes.dart';
import '../route_type.dart';

Map<String, RouteType> packageRoutes = {
  AppRoutes.packageListing: (context, settings) => const PackageListingView(),
  AppRoutes.packageDetail: (context, settings) => const PackageDetailView(),
};
