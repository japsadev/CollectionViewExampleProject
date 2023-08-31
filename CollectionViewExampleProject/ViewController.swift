//
//  ViewController.swift
//  CollectionViewExampleProject
//
//  Created by Salih Yusuf Göktaş on 31.08.2023.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

	var urunListesi:[Urun] = []

	@IBOutlet weak var shopNowButton: UIButton!
	@IBOutlet weak var bgView: UIView!
	@IBOutlet weak var cvUrunler: UICollectionView!
	override func viewDidLoad() {
		super.viewDidLoad()

		design()
		
		var u = Urun()
		u.Baslik = "Air Max 97"
		u.Fiyat = 20.99
		u.ResimAd = "shoe 1"
		
		urunListesi.append(u)
		
		u = Urun()
		u.Baslik = "React Presto"
		u.Fiyat = 25.99
		u.ResimAd = "shoe 3"
		
		urunListesi.append(u)
		
		u = Urun()
		u.Baslik = "Air Max 200 SE"
		u.Fiyat = 30.99
		u.ResimAd = "shoe 4"
		
		urunListesi.append(u)
		
		u = Urun()
		u.Baslik = "Air Max 17"
		u.Fiyat = 28.99
		u.ResimAd = "shoe 2"
		
		urunListesi.append(u)
		
		cvUrunler.register(UINib(nibName: "CVC_Urun", bundle: nil), forCellWithReuseIdentifier: "CVC_Urun")
		cvUrunler.collectionViewLayout = CollumnFlowLayout(sutunSayisi: 2, minSutunAraligi: 10, minSatirAraligi: 10)
		
	}

	func design() {
		bgView.layer.cornerRadius = 30.0
		shopNowButton.layer.cornerRadius = 10.0
	}
	
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return urunListesi.count
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		
		let hucre = collectionView.dequeueReusableCell(withReuseIdentifier: "CVC_Urun", for: indexPath) as! CVC_Urun
		
		let u = urunListesi[indexPath.row]
		
		hucre.lblBaslik.text = u.Baslik
		hucre.lblFiyat.text = "$ \(u.Fiyat!)"
		hucre.ivResim.image = UIImage(named: u.ResimAd!)
		
		return hucre
		
	}

}

