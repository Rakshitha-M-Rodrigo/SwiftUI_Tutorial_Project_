//
//  PageViewController.swift
//  SwiftUI_Tutorial_Project_LandMarks
//
//  Created by Rakshitha Rodrigo on 2023-10-28.
//

import Foundation
import UIKit
import SwiftUI

struct PageViewController<Page: View>: UIViewControllerRepresentable {
    var pages: [Page]
    @Binding var currentPage: Int
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    
    
    
    
    func makeUIViewController(context: Context) -> UIPageViewController {
            let pageViewController = UIPageViewController(
                transitionStyle: .scroll,
                navigationOrientation: .horizontal)
        
        pageViewController.dataSource = context.coordinator
        pageViewController.delegate = context.coordinator
    
            return pageViewController
        }
    
    
    func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
//        pageViewController.setViewControllers(
//            [UIHostingController(rootView: pages[0])], direction: .forward, animated: true)
        
        pageViewController.setViewControllers(
            [context.coordinator.controllers[currentPage]], direction: .forward, animated: true)
    }
    
    class Coordinator: NSObject, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
            guard let index = controllers.firstIndex(of: viewController) else {
                return nil
            }
            if(index == 0){
                return controllers.last
            }
            return controllers[index - 1]
        }
        
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
            guard let index = controllers.firstIndex(of: viewController) else {
                return nil
            }
            if(index == controllers.count - 1){
                return controllers.first
            }
            return controllers[index + 1]
        }
        
        var parent: PageViewController
        var controllers = [UIViewController]()
        
        init(_ pageViewController: PageViewController) {
            parent = pageViewController
            controllers = parent.pages.map {
                UIHostingController(rootView: $0)
            }
        }
        
        func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
            if completed, let visibleViewController = pageViewController.viewControllers?.first , let index = controllers.firstIndex(of: visibleViewController) {
                parent.currentPage = index
            } // compact implementation
            
//            if(completed){
//                if let visibleViewController = pageViewController.viewControllers?.first {
//                    if let index = controllers.firstIndex(of: visibleViewController) {
//                        parent.currentPage = index
//                    }
//                }
//            } // long implementation
                
            
        }
    }
    
}

//struct PageViewController<Page: View>: UIViewControllerRepresentable {
//    var pages: [Page]
//
//
//    func makeUIViewController(context: Context) -> UIPageViewController {
//        let pageViewController = UIPageViewController(
//            transitionStyle: .scroll,
//            navigationOrientation: .horizontal)
//
//
//        return pageViewController
//    }
//
//
//    func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
//        pageViewController.setViewControllers(
//            [UIHostingController(rootView: pages[0])], direction: .forward, animated: true)
//    }
//}

