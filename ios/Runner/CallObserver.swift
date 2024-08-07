
import CallKit
import UserNotifications



class CallObserver: NSObject, CXCallObserverDelegate {
    private let callObserver = CXCallObserver()

    override init() {
        super.init()
        callObserver.setDelegate(self, queue: nil)
    }

    func callObserver(_ callObserver: CXCallObserver, callChanged call: CXCall) {
        
        if call.hasEnded {
            let preferences = UserDefaults.standard;
            let dir = call.isOutgoing==true ? "Outgoing" : "Incoming";
            preferences.set( "IPHONE",forKey:"flutter.calledNumber");
            preferences.set( dir,forKey:"flutter.callDirection");
            preferences.set( Date().timeIntervalSince1970,forKey:"flutter.callTime");
            preferences.synchronize();
            sendLocalNotification()
                    }
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

