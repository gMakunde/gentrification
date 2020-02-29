//
//  representativeCell.swift
//  hack24
//
//  Created by Subomi Popoola on 2/29/20.
//  Copyright © 2020 Subomi Popoola. All rights reserved.
//

import UIKit

class representativeCell: UITableViewCell {

   
    @IBOutlet var picture: UIImageView!
    @IBOutlet var synopsisLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
