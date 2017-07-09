//
//  StoreViewController.swift
//  STYouTube
//
//  Created by AKIO on 2017/07/09.
//  Copyright © 2017 AKIO. All rights reserved.
//

import UIKit
import UserNotifications

class StoreViewController: UIViewController {
    var timer: Timer!
    var request: UNNotificationRequest!

    override func viewDidLoad() {
        super.viewDidLoad()

        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.alert, .sound], completionHandler: { (granted, error) in })
        createNotification()
    }

    // 画面が表示された直後
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }

    func createNotification() {
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 1, repeats: false)

        let content = UNMutableNotificationContent()
        content.title = "セール実施中！"
        content.body = "現在、期間限定でセールを実施中です。"
        content.sound = UNNotificationSound.default()

        request = UNNotificationRequest(identifier: "normal", content: content, trigger: trigger)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
