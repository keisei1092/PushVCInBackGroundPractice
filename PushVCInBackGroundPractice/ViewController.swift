//
//  ViewController.swift
//  PushVCInBackGroundPractice
//
//  Created by Keisei Saito on 2017/07/14.
//  Copyright © 2017 Keisei Saito. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	@IBAction func pressedButton(_ sender: UIButton) {
		let sb = UIStoryboard(name: "ModalViewController", bundle: nil)
		let nc = sb.instantiateInitialViewController() as! ModalNavigationController
		nc.modalDelegate = self
		let vc = nc.viewControllers.first as! ModalViewController
		present(nc, animated: true, completion: nil)
	}
}

extension ViewController: ModalNavigationControllerDelegate {
	func modalNavigationControllerWillDismiss(_ modalNavigationController: ModalNavigationController) {
		let sb = UIStoryboard(name: "SecondViewController", bundle: nil)
		let vc = sb.instantiateInitialViewController() as! SecondViewController
		navigationController?.pushViewController(vc, animated: true)
	}
}
