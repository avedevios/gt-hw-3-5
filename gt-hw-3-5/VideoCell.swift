//
//  VideoCell.swift
//  gt-hw-3-5
//
//  Created by ake11a on 2022-10-13.
//

import UIKit

class VideoCell: UITableViewCell {

    var isViewed = false
    
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var previewImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var viewsLabel: UILabel!
    
    override func layoutSubviews() {
     
        avatarImageView.layer.borderWidth = 1
        avatarImageView.layer.cornerRadius = 40 / 2
        avatarImageView.layer.borderColor = UIColor.lightGray.cgColor
        
        previewImageView.layer.borderWidth = 1
        previewImageView.layer.borderColor = UIColor.lightGray.cgColor
        
        layer.borderWidth = 1
        
        previewImageView.isUserInteractionEnabled = true
        let  tap = UITapGestureRecognizer(target: self, action: #selector(updateViews))
        previewImageView.addGestureRecognizer(tap)
    }
    
    @objc func updateViews() {
        
        var currentViews = Int(viewsLabel.text!)
        
        if !isViewed {
            currentViews! += 1

            isViewed = true
        }
        
        viewsLabel.text = "\(currentViews ?? 0)"
    }

}
