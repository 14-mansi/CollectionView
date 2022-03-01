//
//  ViewController.swift
//  Collection View(gallery)
//
//  Created by Dr.Mac on 01/03/22.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDataSource , UICollectionViewDelegate , UICollectionViewDelegateFlowLayout {
    
    let dic =  [[ "photo": "Banaras"], ["photo": "CharMinar"], ["photo": "GoldenTemple"], ["photo": "IndiaGate"],["photo": "TajMahal"],[ "photo": "Banaras"], ["photo": "CharMinar"], ["photo": "GoldenTemple"], ["photo": "IndiaGate"],["photo": "TajMahal"],[ "photo": "Banaras"], ["photo": "CharMinar"], ["photo": "GoldenTemple"], ["photo": "IndiaGate"],["photo": "TajMahal"],[ "photo": "Banaras"], ["photo": "CharMinar"], ["photo": "GoldenTemple"], ["photo": "IndiaGate"],["photo": "TajMahal"],[ "photo": "Banaras"], ["photo": "CharMinar"], ["photo": "GoldenTemple"], ["photo": "IndiaGate"],["photo": "TajMahal"],[ "photo": "Banaras"], ["photo": "CharMinar"], ["photo": "GoldenTemple"], ["photo": "IndiaGate"],["photo": "TajMahal"],[ "photo": "Banaras"], ["photo": "CharMinar"], ["photo": "GoldenTemple"], ["photo": "IndiaGate"],["photo": "TajMahal"]]
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dic.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        let data = dic[indexPath.row]
        cell.imgView.image = UIImage(named: data["photo"]!)
       // cell.lbl1.text = data["name"]
        //cell.layer.borderWidth = 1
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewlayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionWidth = collectionView.bounds.width
        return CGSize(width: collectionWidth/3-6, height: collectionWidth/3-6)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewlayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 2, bottom: 2, right: 2)
    }
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewlayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewlayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
}

