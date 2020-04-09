//
//  postCell.swift
//  Parstagram
//
//  Created by Subomi Popoola on 3/3/20.
//  Copyright © 2020 Subomi Popoola. All rights reserved.
//

import UIKit

class postCell: UITableViewCell {

    @IBOutlet var captionLabel: UILabel!
    @IBOutlet var usernameLabel: UILabel!
    @IBOutlet var photoView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
