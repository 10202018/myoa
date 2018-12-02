//
//  subMYOAViewController.swift
//  MYOA
//
//  Created by TJ on 12/1/18.
//  Copyright © 2018 TJ. All rights reserved.
//

import UIKit

class SubMYOAViewController: UIViewController, ContinueIntoStory {
    
    // MARK: Properties

    
    // MARK: Outlets
    @IBOutlet weak var rightBarButtonItem: UIBarButtonItem! {
        didSet {
            buildNavigtationRightBarButton()
        }
    }
    
    
    // MARK: Actions
    func buildNavigtationRightBarButton() {
        self.navigationItem.rightBarButtonItem = returnNavigationRightBarButton(for: self, withTintColor: .red, andStyle: .plain)
    }

    @IBAction func clickedStartOver(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    
    func returnNavigationRightBarButton (for state: UIViewController, withTintColor tintColor: UIColor, andStyle style: UIBarButtonItem.Style) -> UIBarButtonItem {
        let navigationRightBarButton: UIBarButtonItem = {
            let vc = state
            let navButton = vc.navigationItem.rightBarButtonItem!
            navButton.style = style
            navButton.tintColor = tintColor
            navButton.title = "Start Over"
            return navButton
        }()
        return navigationRightBarButton
    }

}
