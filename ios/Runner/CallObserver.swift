import UIKit
import CallKit
import UserNotifications
import AppDelegate



class CallObserver: NSObject, CXCallObserverDelegate {
    private let callObserver = CXCallObserver()

    override init() {
        super.init()
        callObserver.setDelegate(self, queue: nil)
    }

    func callObserver(_ callObserver: CXCallObserver, callChanged call: CXCall) {
        if call.hasEnded {
            print("Call ended")
            DispatchQueue.main.async {
                self.showCallEndedPopup()
            }
        }
    }

    func showCallEndedPopup() {
        guard let rootVC = UIApplication.shared.windows.first?.rootViewController else {
            return
        }

        let alert = UIAlertController(title: "Call Ended", message: "Your call has ended.", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        rootVC.present(alert, animated: true, completion: nil)
    }

    func sendLocalNotification() {
        let content = UNMutableNotificationContent()
        content.title = "Call Ended"
        content.body = "Your call has ended."
        content.sound = .default
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: nil)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
}

extension AppDelegate: UNUserNotificationCenterDelegate {
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.alert, .sound])
    }

    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        DispatchQueue.main.async {
            if let rootVC = UIApplication.shared.windows.first?.rootViewController {
                let alert = UIAlertController(title: "Call Ended", message: "Your call has ended.", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                rootVC.present(alert, animated: true, completion: nil)
            }
        }
        completionHandler()
    }
}
