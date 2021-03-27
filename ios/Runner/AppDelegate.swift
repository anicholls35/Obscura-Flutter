import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    GMSServices.provideAPIKey("AIzaSyCzoll3ckryPH7ZmKu5SUZQuqY1FnAAA40")
    GMSPlacesClient.provideAPIKey("AIzaSyCzoll3ckryPH7ZmKu5SUZQuqY1FnAAA40")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
