//
//  VideoSelectViewController.swift
//  STYouTube
//
//  Created by AKIO on 2017/06/25.
//  Copyright © 2017 AKIO. All rights reserved.
//

import UIKit

class VideoSelectViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    let name: [String] = ["はじめしゃちょー", "HikakinTV", "瀬戸弘司", "すしらーめん"]
    let id: [String] = ["iUtiwvuFprI", "cQ9kGR8Mq0M", "rivpSDucSfk", "dcbmUiuHIeY"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // どこでデータを渡しますか？
        tableView.dataSource = self
        // アクションをどこで受け取りますか？
        tableView.delegate = self
    }

    // 準備するセルの個数を設定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }

    // セルを渡すところ
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "VideoCell")

        cell.textLabel?.text = name[indexPath.row]
        return cell
    }

    // タップされた時にどうするか
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // 遷移に用いるSegueをIDで指定
        performSegue(withIdentifier: "videoSegue", sender: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "videoSegue" {
            // 選択した添字を取得
            if let indexPath = tableView.indexPathForSelectedRow {
                // 遷移先のオブジェクトを生成
                let videoPlayVC: VideoPlayViewController = segue.destination as! VideoPlayViewController
                // 遷移先に値をセット
                videoPlayVC.videoID = id[indexPath.row]
            }

        }
    }
}
