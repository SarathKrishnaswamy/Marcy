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
        //configureCollectionView()

        // Do any additional setup after loading the view.
    }
    
    func configureCollectionView(){
    
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.itemSize = CGSize(width:UIScreen.main.bounds.width/2.2, height: UIScreen.main.bounds.height/3.4)
        layout.minimumInteritemSpacing = 0
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
        else if indexPath.row == 2{
            if let parent = self.parent as? MainViewController {
                parent.Private_user()
            }
        }
        else if indexPath.row == 3{
            let vc = storyboard?.instantiateViewController(withIdentifier: "SignalBadStoriesViewController") as! SignalBadStoriesViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
    }
    
    
}
