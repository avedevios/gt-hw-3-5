//
//  ViewController.swift
//  gt-hw-3-5
//
//  Created by ake11a on 2022-10-13.
//

import UIKit

class ViewController: UIViewController {
    
    var videos: [Tape] =
    [Tape(name: "Madonna - Pray fo yourself", preview: UIImage(systemName: "bolt.heart.fill")!, avatar: UIImage(systemName: "person")!, views: 12, duration: "3:34"),
     Tape(name: "Elvis - Rise to me", preview: UIImage(systemName: "bolt.heart")!, avatar: UIImage(systemName: "person")!, views: 345, duration: "2:44"),
     Tape(name: "U2 - Airplane", preview: UIImage(systemName: "bolt.heart.fill")!, avatar: UIImage(systemName: "person")!, views: 3456, duration: "4:33")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "video_cell", for: indexPath) as! VideoCell
        
        cell.nameLabel.text = videos[indexPath.row].name
        cell.previewImageView.image = videos[indexPath.row].preview
        cell.avatarImageView.image = videos[indexPath.row].avatar
        cell.viewsLabel.text = "\(videos[indexPath.row].views)"
        cell.durationLabel.text = "\(videos[indexPath.row].duration)"
        
        return cell
    }
    
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 400
    }
}
