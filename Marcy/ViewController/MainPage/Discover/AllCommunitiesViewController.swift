//
//  AllCommunitiesViewController.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 30/08/21.
//

import UIKit

class AllCommunitiesViewController: UIViewController {

    @IBOutlet weak var CollectionView: UICollectionView!
    
    var Loc_images = [UIImage(named: "Loc_1"),UIImage(named: "Loc_2"),UIImage(named: "Loc_3"),UIImage(named: "Loc_4"),UIImage(named: "Loc_5"),UIImage(named: "Loc_6"),UIImage(named: "Loc_7"),UIImage(named: "Loc_8"),UIImage(named: "Loc_9"),UIImage(named: "Loc_10"),UIImage(named: "Loc_11"),UIImage(named: "Loc_12"),UIImage(named: "Loc_13"),UIImage(named: "Loc_14"),UIImage(named: "Loc_15"),UIImage(named: "Loc_16"),UIImage(named: "Loc_17"),UIImage(named: "Loc_18"),UIImage(named: "Loc_19"),UIImage(named: "Loc_20"),UIImage(named: "Loc_21"),UIImage(named: "Loc_22"),UIImage(named: "Loc_23"),UIImage(named: "Loc_24")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureCollectionView()
        // Do any additional setup after loading the view.
    }
    
    func configureCollectionView(){
    
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        layout.itemSize = CGSize(width:UIScreen.main.bounds.width/5.4, height: 107.16)
        layout.minimumInteritemSpacing = 0
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 0
        CollectionView.collectionViewLayout = layout
        
    }


    @IBAction func BackBtnOnPressed(_ sender: Any) {
        if let parent = self.parent as? MainViewController {
            parent.home()
        }
    }
    
}

extension AllCommunitiesViewController:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Loc_images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AllGroupCollectionViewCell", for: indexPath) as! AllGroupCollectionViewCell
        cell.ThumbnailImage.image = Loc_images[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let parent = self.parent as? MainViewController{
            parent.country_grp()
        }
    }
    
}
