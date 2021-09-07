//
//  StoriesViewViewController.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 30/08/21.
//

import UIKit

class StoriesViewViewController: UIViewController {

    @IBOutlet weak var ViewsBg: UIView!
    @IBOutlet weak var Collectionview: UICollectionView!
    var views_image = [UIImage(named: "spectator1"),UIImage(named: "spectator2"),UIImage(named: "spectator3"),UIImage(named: "spectator4"),UIImage(named: "spectator5"),UIImage(named: "spectator6"),UIImage(named: "spectator7"),UIImage(named: "spectator8"),UIImage(named: "spectator9"),UIImage(named: "spectator10"),UIImage(named: "spectator11"),UIImage(named: "spectator12"),UIImage(named: "spectator13"),UIImage(named: "spectator14"),UIImage(named: "spectator15")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ViewsBg.setRadiusWithShadow(1.0)
        configureCollectionView()

        // Do any additional setup after loading the view.
    }
    
    func configureCollectionView(){
    
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 5, left: 10, bottom: 5, right: 10)
        layout.itemSize = CGSize(width:105, height: 80)
        layout.minimumInteritemSpacing = 0
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 40
        Collectionview.collectionViewLayout = layout
        
    }
    

    @IBAction func BackBtnOnPressed(_ sender: Any) {
        if let parent = self.parent as? MainViewController {
            parent.stories()
        }
    }
    

}

extension StoriesViewViewController:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return views_image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoriesViewCollectionViewCell", for: indexPath) as! StoriesViewCollectionViewCell
        cell.ThumbnailImage.image = views_image[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let parent = self.parent as? MainViewController{
            parent.user_profile()
        }
    }
   
    
    
}
