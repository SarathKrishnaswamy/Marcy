//
//  AllPagesViewController.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 21/10/21.
//

import UIKit

class AllPagesViewController: UIViewController {

    @IBOutlet weak var CollectionView: UICollectionView!
    var Group_images = [UIImage(named: "Add_aPage"),UIImage(named: "Group 210"),UIImage(named: "Group 211"),UIImage(named: "Group 212"),UIImage(named: "Group 209"),UIImage(named: "LDNA"),UIImage(named: "Afro"),UIImage(named: "Inve"),UIImage(named: "NN"),UIImage(named: "Aj+francis"),UIImage(named: "LeMonde"),UIImage(named: "femme"),UIImage(named: "Assa"),UIImage(named: "jenueAfrique"),UIImage(named: "rfi"),UIImage(named: "konbini")]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        configureCollectionView()
    }
    
    func configureCollectionView(){
    
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        layout.itemSize = CGSize(width:UIScreen.main.bounds.width/4.65, height: 107.16)
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
extension AllPagesViewController:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Group_images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AllGroupCollectionViewCell", for: indexPath) as! AllGroupCollectionViewCell
        cell.ThumbnailImage.image = Group_images[indexPath.row]
        return cell
    }
    
    
}

