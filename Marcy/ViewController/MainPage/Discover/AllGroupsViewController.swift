//
//  AllGroupsViewController.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 29/08/21.
//

import UIKit

class AllGroupsViewController: UIViewController {

    @IBOutlet weak var CollectionView: UICollectionView!
    
    var Group_images = [UIImage(named: "Group_1-1"),UIImage(named: "Group_2-1"),UIImage(named: "Group_3-1"),UIImage(named: "Group_4-1"),UIImage(named: "Group_5-1"),UIImage(named: "Group_6"),UIImage(named: "Group_7"),UIImage(named: "Group_8"),UIImage(named: "Group_9"),UIImage(named: "Group_10"),UIImage(named: "Group_11"),UIImage(named: "Group_12")]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func BackBtnOnPressed(_ sender: Any) {
        if let parent = self.parent as? MainViewController {
            parent.home()
        }
    }
    

}

extension AllGroupsViewController:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Group_images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AllGroupCollectionViewCell", for: indexPath) as! AllGroupCollectionViewCell
        cell.ThumbnailImage.image = Group_images[indexPath.row]
        return cell
    }
    
    
}
