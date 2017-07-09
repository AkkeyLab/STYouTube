//
//  ViewController.swift
//  STYouTube
//
//  Created by AKIO on 2017/05/15.
//  Copyright © 2017 AKIO. All rights reserved.
//

import UIKit
import YouTubePlayer

class ViewController: UIViewController {
    @IBOutlet weak var playerView: YouTubePlayerView!

    override func viewDidLoad() {
        super.viewDidLoad()

        playerView.loadVideoID("ROEIKn8OsGU")
    }

    @IBAction func videoPlay(_ sender: UIButton) {
        playerView.play()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

