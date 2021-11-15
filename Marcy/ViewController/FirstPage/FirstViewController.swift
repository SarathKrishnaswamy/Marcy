//
//  FirstViewController.swift
//  Marcy
//
//  Created by Marcy on 14/08/21.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var GradientView: UIView!
    @IBOutlet weak var SignUpbtn: UIButton!
    @IBOutlet weak var LoginBtn: UIButton!
    @IBOutlet weak var GradientHeightconstraint: NSLayoutConstraint!
    @IBOutlet weak var Collectionview: UICollectionView!
    
    
    var timer = Timer()
    var user_image = [UIImage(named: "Profuser_1"),UIImage(named: "Profuser_2"),UIImage(named: "Profuser_3"),UIImage(named: "Profuser_4"),UIImage(named: "Profuser_5")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.LoginBtn.layer.cornerRadius = 15
        self.SignUpbtn.layer.cornerRadius = 15
        self.SignUpbtn.layer.borderWidth = 1.0
        self.SignUpbtn.layer.borderColor = UIColor.white.cgColor
        self.GradientView.frame.origin.y = 1000
        self.GradientHeightconstraint.constant = 0
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        self.timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(callview), userInfo: nil, repeats: false)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        GradientView.layer.configureGradientBackground(UIColor(hexString: "#D9A634").cgColor, UIColor(hexString: "#EDEAC6").cgColor)
        // Call the roundCorners() func right there.
        GradientView.clipsToBounds = true
        GradientView.layer.cornerRadius = 30
        GradientView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner] // Top right corner, Top left corner respectively
    }
    
    
    @objc func callview(){
        UIView.animate(withDuration: 0.5) {
            self.GradientHeightconstraint.constant = 230
            self.GradientView.frame.origin.y = 666
            
        }
    }

   
    @IBAction func SignUpBtnOnPressed(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SignupViewController") as! SignupViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func LoginBtnOnPressed(_ sender: Any) {
    }
    
    
}

extension FirstViewController : UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return user_image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "UserCollectionViewCell", for: indexPath) as! UserCollectionViewCell
        cell.UserImage.image = user_image[indexPath.row]
        return cell
    }
    
    
}
