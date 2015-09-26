//
//  SideMenuTableViewCell.swift
//  WedCart
//
//  Created by Karan on 22/08/15.
//  Copyright (c) 2015 Promact Infotech. All rights reserved.
//

import UIKit

class SideMenuTableViewCell: UITableViewCell {

    @IBOutlet weak var SideMenuLabel: UILabel!
    @IBOutlet weak var SideMenuIcon: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
