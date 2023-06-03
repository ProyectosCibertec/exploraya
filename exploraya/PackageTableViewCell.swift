//
//  PackageTableViewCell.swift
//  exploraya
//
//  Created by wilmer quispe on 20/05/23.
//

import UIKit

class PackageTableViewCell: UITableViewCell {

    @IBOutlet weak var packageNameLabel: UILabel!
    @IBOutlet weak var packagePriceLabel: UILabel!
    @IBOutlet weak var packageDestinyLabel: UILabel!
    @IBOutlet weak var packagePackLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
