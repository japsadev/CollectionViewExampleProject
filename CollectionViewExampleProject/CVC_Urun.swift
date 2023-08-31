//
//  CVC_Urun.swift
//  CollectionViewExampleProject
//
//  Created by Salih Yusuf Göktaş on 31.08.2023.
//

import UIKit

class CVC_Urun: UICollectionViewCell {

	@IBOutlet weak var bgCVC: UIView!
	@IBOutlet weak var ivResim: UIImageView!
	@IBOutlet weak var lblBaslik: UILabel!
	@IBOutlet weak var lblFiyat: UILabel!
	@IBOutlet weak var satinAlButton: UIButton!
	override func awakeFromNib() {
		
		satinAlButton.layer.cornerRadius = 10
		bgCVC.layer.cornerRadius = 30
		
		
		super.awakeFromNib()
        // Initialization code
    }

}


