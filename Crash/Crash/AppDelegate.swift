import UIKit
import Sub

struct Foo: Codable { }
extension Foo: SubEncodable { }

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let foo = Foo()
        foo.encode()
        
        // Override point for customization after application launch.
        return true
    }
}

