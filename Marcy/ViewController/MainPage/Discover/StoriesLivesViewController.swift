//
//  StoriesLivesViewController.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 30/08/21.
//

import UIKit

class StoriesLivesViewController: UIViewController {

    @IBOutlet weak var CollectionView: UICollectionView!
    var story_image = [UIImage(named: "Story_1"),UIImage(named: "Story_2"),UIImage(named: "Story_3"),UIImage(named: "Story_4"),UIImage(named: "Story_5"),UIImage(named: "Story_6")]
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCollectionView()

        // Do any additional setup after loading the view.
    }
    
    func configureCollectionView(){
    
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 5, left: 2, bottom: 5, right: 2)
        layout.itemSize = CGSize(width:UIScreen.main.bounds.width/2.14, height: 263)
        layout.minimumInteritemSpacing = 3
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 5
        CollectionView.collectionViewLayout = layout
        
    }

  
    @IBAction func BackbtnonPressed(_ sender: Any) {
        if let parent = self.parent as? MainViewController{
            parent.home()
        }
    }
    
}

extension StoriesLivesViewController:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return story_image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoriesLivesCollectionViewCell", for: indexPath) as! StoriesLivesCollectionViewCell
        cell.ThumbnailImage.image = story_image[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0{
            if let parent = self.parent as? MainViewController {
                parent.stories_view()
            }
        }
        else if indexPath.row == 1{
            let vc = storyboard?.instantiateViewController(withIdentifier: "StoriesReactsViewController") as! StoriesReactsViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
    }
    
    
}
