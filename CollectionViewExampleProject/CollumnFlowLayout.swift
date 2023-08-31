//
//  CollumnFlowLayout.swift
//  CollectionViewExampleProject
//
//  Created by Salih Yusuf Göktaş on 31.08.2023.
//

import UIKit

class CollumnFlowLayout: UICollectionViewFlowLayout {

	let sutunSayisi : Int
	var yukseklikOrani : CGFloat = (3.0 / 2.0)

	init(sutunSayisi : Int, minSutunAraligi : CGFloat = 0, minSatirAraligi: CGFloat = 0) {
		self.sutunSayisi = sutunSayisi
		super.init()
		
		self.minimumInteritemSpacing = minSutunAraligi
		self.minimumLineSpacing = minSatirAraligi
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	override func prepare() {
		super.prepare()
		
		guard let collectionView = collectionView else {return}
		
		let araliklar = collectionView.safeAreaInsets.left + collectionView.safeAreaInsets.right + minimumInteritemSpacing * CGFloat(sutunSayisi-1)
		
		let elemanGenisligi = ((collectionView.bounds.size.width - araliklar) / CGFloat(sutunSayisi)).rounded(.down)
		let elemanYuksekligi = elemanGenisligi * yukseklikOrani

		itemSize = CGSize(width: elemanGenisligi, height: elemanYuksekligi)
		
	}
	
}
