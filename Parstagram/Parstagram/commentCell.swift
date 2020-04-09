//
//  commentCell.swift
//  Parstagram
//
//  Created by Subomi Popoola on 3/8/20.
//  Copyright © 2020 Subomi Popoola. All rights reserved.
//

import UIKit

class commentCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var commentLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
