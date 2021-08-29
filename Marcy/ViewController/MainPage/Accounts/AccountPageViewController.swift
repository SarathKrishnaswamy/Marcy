//
//  AccountPageViewController.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 25/08/21.
//

import UIKit

class AccountPageViewController: UIPageViewController {

 
    var id : Int!
   
    
    private(set) lazy var orderedViewControllers:[UIViewController] = {

            let sb = UIStoryboard(name: "Main", bundle: nil)
            let vc1 = sb.instantiateViewController(withIdentifier: "InformationViewController")
            let vc2 = sb.instantiateViewController(withIdentifier: "PostsViewController")
            
            return [vc1, vc2]
        }()
        
        override func viewDidLoad() {
            super.viewDidLoad()
          //  print("pageview")
            dataSource = self
            delegate = self
            
            
           if let initialViewController = orderedViewControllers.first {
            //print(orderedViewControllers.firstIndex(of: initialViewController))
            scrollToViewController(viewController: initialViewController)
            }
            
           
            
        }

    func goToPage(index: Int) {
        if index < orderedViewControllers.count {
            let viewController = self.orderedViewControllers[index]
            setViewControllers([viewController], direction:UIPageViewController.NavigationDirection.forward, animated: true, completion: nil)
        }
    }
    
    // Navigate to next page
    func goNextPage(forwardTo position: Int) {
          let viewController = self.orderedViewControllers[position]
          setViewControllers([viewController], direction:
          UIPageViewController.NavigationDirection.forward, animated: true, completion: nil)
       }
    
    // Navigate to previous page
    func goPreviousPage(fowardTo position: Int) {
          let viewController = self.orderedViewControllers[position]
          setViewControllers([viewController], direction: UIPageViewController.NavigationDirection.reverse, animated: true, completion: nil)
       }
    
    
        
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        let pageContentViewController = pageViewController.viewControllers![0]
        //self.pageControl.currentPage = orderedViewControllers.index(of: pageContentViewController)!
       // print(orderedViewControllers.firstIndex(of: pageContentViewController)!)
        if orderedViewControllers.firstIndex(of: pageContentViewController)! == 0{
            if let parent = self.parent as? AccountsViewController{
               
            }
        }
        else if orderedViewControllers.firstIndex(of: pageContentViewController)! == 1{
            if let parent = self.parent as? AccountsViewController{
                
            }
        }
        
    }
        /**
         Scrolls to the next view controller.
         */
        func scrollToNextViewController() {
            if let visibleViewController = viewControllers?.first,
                let nextViewController = pageViewController(self, viewControllerAfter: visibleViewController) {
                        scrollToViewController(viewController: nextViewController)
            }
        }
        
        /**
         Scrolls to the view controller at the given index. Automatically calculates
         the direction.
         
         - parameter newIndex: the new index to scroll to
         */
        func scrollToViewController(index newIndex: Int) {
            if let firstViewController = viewControllers?.first,
                let currentIndex = orderedViewControllers.firstIndex(of: firstViewController) {
                let direction: UIPageViewController.NavigationDirection = newIndex >= currentIndex ? .forward : .reverse
                    let nextViewController = orderedViewControllers[newIndex]
                    scrollToViewController(viewController: nextViewController, direction: direction)
            }
        }
        
        func newColoredViewController(_ viewcontroller: String) -> UIViewController {
            return UIStoryboard(name: "Search", bundle: nil) .
                instantiateViewController(withIdentifier: viewcontroller)
        }
        
        /**
         Scrolls to the given 'viewController' page.
         
         - parameter viewController: the view controller to show.
         */
        private func scrollToViewController(viewController: UIViewController,
                                            direction: UIPageViewController.NavigationDirection = .forward) {
            setViewControllers([viewController],
                direction: direction,
                animated: true,
                completion: { (finished) -> Void in
                    // Setting the view controller programmatically does not fire
                    // any delegate methods, so we have to manually notify the
                    // 'tutorialDelegate' of the new index.
                  //  self.notifyTutorialDelegateOfNewIndex()
            })
        }
        
        /**
         Notifies '_tutorialDelegate' that the current page index was updated.
         */
        private func notifyTutorialDelegateOfNewIndex() {
            if let firstViewController = viewControllers?.first,
                let index = orderedViewControllers.firstIndex(of: firstViewController) {
                   print(index)
            }
        }
    
   
    
        
    }

    // MARK: UIPageViewControllerDataSource
    extension AccountPageViewController: UIPageViewControllerDataSource {
        
        func pageViewController(_ pageViewController: UIPageViewController,
                                viewControllerBefore viewController: UIViewController) -> UIViewController? {
                guard let viewControllerIndex = orderedViewControllers.firstIndex(of: viewController) else {
                    return nil
                }
                
                let previousIndex = viewControllerIndex - 1
                
                // User is on the first view controller and swiped left to loop to
                // the last view controller.
                guard previousIndex >= 0 else {
                    return nil
                }
           
                
                //guard orderedViewControllers.count > previousIndex else {
                  //  return nil
                //}
                
                return orderedViewControllers[previousIndex]
        }

        func pageViewController(_ pageViewController: UIPageViewController,
                                viewControllerAfter viewController: UIViewController) -> UIViewController? {
                guard let viewControllerIndex = orderedViewControllers.firstIndex(of: viewController) else {
                    return nil
                }
                
                let nextIndex = viewControllerIndex + 1
                let orderedViewControllersCount = orderedViewControllers.count
            
                // User is on the last view controller and swiped right to loop to
                // the first view controller.
               // guard orderedViewControllersCount != nextIndex else {
                 //   return orderedViewControllers.first
                //}
                
                guard orderedViewControllersCount > nextIndex else {
                    return nil
                }
            
                return orderedViewControllers[nextIndex]
        }
        
    }

extension AccountPageViewController: UIPageViewControllerDelegate {
    
    func pageViewController(pageViewController: UIPageViewController,
        didFinishAnimating finished: Bool,
        previousViewControllers: [UIViewController],
        transitionCompleted completed: Bool) {
        //notifyTutorialDelegateOfNewIndex()
    }
    
}

extension UIPageViewController {
    func goToNextPage(animated: Bool = true, completion: ((Bool) -> Void)? = nil) {
        if let currentViewController = viewControllers?[0] {
            if let nextPage = dataSource?.pageViewController(self, viewControllerAfter: currentViewController) {
                setViewControllers([nextPage], direction: .forward, animated: animated, completion: completion)
            }
        }
    }

}
