import UIKit
import Sub

struct Foo: Codable { }

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool
    {
        let foo = Foo()
        foo.subEncode()
        return true
    }
}
