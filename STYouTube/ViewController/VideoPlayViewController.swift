//
//  VideoPlayViewController.swift
//  STYouTube
//
//  Created by AKIO on 2017/06/25.
//  Copyright © 2017 AKIO. All rights reserved.
//

import UIKit
import YouTubePlayer

class VideoPlayViewController: UIViewController {
    @IBOutlet weak var playerView: YouTubePlayerView!
    var videoID: String = "ROEIKn8OsGU"

    override func viewDidLoad() {
        super.viewDidLoad()

        playerView.loadVideoID(videoID)
    }

    @IBAction func videoPlay(_ sender: Any) {
        playerView.play()
    }

    @IBAction func backPage(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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
