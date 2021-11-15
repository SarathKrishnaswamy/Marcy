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
    @IBAction func SearchBtnOnPressed(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "GroupPageSearchViewController") as! GroupPageSearchViewController
        vc.id = 2
        vc.modalPresentationStyle = .overCurrentContext
        self.present(vc, animated: true, completion: nil)
    }
    
}

extension AllCommunitiesViewController:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Loc_images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        //FooterCollectionReusableView
        if (kind == UICollectionView.elementKindSectionFooter) {
             let footerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "CartFooterCollectionReusableView", for: indexPath)
             // Customize footerView here
             return footerView
        }
        let footerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "FooterCollectionReusableView", for: indexPath)
        // Customize footerView here
        return footerView
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 100)
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
