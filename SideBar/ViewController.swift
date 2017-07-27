//
//  ViewController.swift
//  SideBar
//
//  Created by Eduardo Sanchez on 7/26/17.
//  Copyright © 2017 Eduardo Sanchez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sideBar: UIView!
    @IBOutlet weak var closeView: UIView!
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var hotButton: UIButton!
    @IBOutlet weak var messagesButton: UIButton!
    @IBOutlet weak var notificationsButton: UIButton!
    @IBOutlet weak var favoritesButton: UIButton!
    @IBOutlet weak var settingsButton: UIButton!
    @IBOutlet weak var profileButton: UIButton!
    @IBOutlet weak var bubbleMenuImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        closeSideBar()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func toggleSideBar(_ sender: Any) {
        openSideBar()
    }
    
    @IBAction func closeSegmentTapped(_ sender: Any) {
        closeSideBar()
    }
    
    func closeSideBar(){
        UIView.animate(withDuration: 0.6, delay:0, options: .curveEaseIn, animations: {
            self.sideBar.alpha = 0
            self.closeView.alpha = 0
            self.bubbleMenuImage.transform = CGAffineTransform(translationX: -self.bubbleMenuImage.frame.width, y: 0)
        })
        
        UIView.animate(withDuration: 0.3, delay:0, options: .curveEaseIn, animations: {
            self.homeButton.transform = CGAffineTransform(translationX: -self.sideBar.frame.width, y: 0)
        })
        UIView.animate(withDuration: 0.3, delay: 0.05, options: .curveEaseIn, animations: {
            self.hotButton.transform = CGAffineTransform(translationX: -self.sideBar.frame.width, y: 0)
        })
        UIView.animate(withDuration: 0.3, delay: 0.1, options: .curveEaseIn, animations: {
            self.messagesButton.transform = CGAffineTransform(translationX: -self.sideBar.frame.width, y: 0)
        })
        UIView.animate(withDuration: 0.3, delay: 0.15, options: .curveEaseIn, animations: {
            self.notificationsButton.transform = CGAffineTransform(translationX: -self.sideBar.frame.width, y: 0)
        })
        UIView.animate(withDuration: 0.3, delay: 0.2, options: .curveEaseIn, animations: {
            self.favoritesButton.transform = CGAffineTransform(translationX: -self.sideBar.frame.width, y: 0)
        })
        UIView.animate(withDuration: 0.3, delay: 0.25, options: .curveEaseIn, animations: {
            self.settingsButton.transform = CGAffineTransform(translationX: -self.sideBar.frame.width, y: 0)
        })
        UIView.animate(withDuration: 0.3, delay: 0.3, options: .curveEaseIn, animations: {
            self.profileButton.transform = CGAffineTransform(translationX: -self.sideBar.frame.width, y: 0)
        })
    }
    
    func openSideBar(){
        UIView.animate(withDuration: 0.6, delay:0, options: .curveEaseOut, animations: {
            self.sideBar.alpha = 1
            self.closeView.alpha = 1
            self.bubbleMenuImage.transform = .identity
        })
        
        UIView.animate(withDuration: 0.3, delay:0.3, options: .curveEaseOut, animations: {
            self.homeButton.transform = .identity
        })
        UIView.animate(withDuration: 0.3, delay: 0.25, options: .curveEaseOut, animations: {
            self.hotButton.transform = .identity
        })
        UIView.animate(withDuration: 0.3, delay: 0.2, options: .curveEaseOut, animations: {
            self.messagesButton.transform = .identity
        })
        UIView.animate(withDuration: 0.3, delay: 0.15, options: .curveEaseOut, animations: {
            self.notificationsButton.transform = .identity
        })
        UIView.animate(withDuration: 0.3, delay: 0.1, options: .curveEaseOut, animations: {
            self.favoritesButton.transform = .identity
        })
        UIView.animate(withDuration: 0.3, delay: 0.05, options: .curveEaseOut, animations: {
            self.settingsButton.transform = .identity
        })
        UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseOut, animations: {
            self.profileButton.transform = .identity
        })
    }
    
}

