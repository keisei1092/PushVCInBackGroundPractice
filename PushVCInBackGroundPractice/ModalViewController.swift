//
//  ModalViewController.swift
//  PushVCInBackGroundPractice
//
//  Created by Keisei Saito on 2017/07/14.
//  Copyright © 2017 Keisei Saito. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {
	@IBAction func pressedDoneButton(_ sender: UIBarButtonItem) {
		let nc = navigationController as! ModalNavigationController
		nc.dismiss()
	}
}
