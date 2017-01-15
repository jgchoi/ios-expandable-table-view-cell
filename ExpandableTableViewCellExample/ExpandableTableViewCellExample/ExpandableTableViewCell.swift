//
//  ExpandableTableViewCell.swift
//  ExpandableTableViewCellExample
//
//  Created by Jung Geon Choi on 2017-01-14.
//  Copyright © 2017 Seneca. All rights reserved.
//

import UIKit

class ExpandableTableViewCell: UITableViewCell {
    @IBOutlet weak var imgHeightConstraint: NSLayoutConstraint!

    @IBOutlet weak var img: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // Variable
    var isExpanded:Bool = false {
        didSet{
            if !isExpanded {
                self.imgHeightConstraint.constant = 0.0
            } else {
                self.imgHeightConstraint.constant = 153.0
            }
        }
    }
}
