//
//  PhotoCell.swift
//  
//
//  Created by Carlos Linares on 21/3/15.
//
//

import UIKit

class PhotoCell: UITableViewCell {

    @IBOutlet weak var cameraLabel: UILabel!
    
    @IBOutlet weak var isoLabel: UILabel!
    @IBOutlet weak var shutterSpeedLabel: UILabel!
    @IBOutlet weak var focalLengthLabel: UILabel!
    @IBOutlet weak var posterImageVIew: UIImageView!
    
    
    @IBOutlet weak var blurView: UIVisualEffectView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
