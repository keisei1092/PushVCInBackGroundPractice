//
//  ModalNavigationController.swift
//  PushVCInBackGroundPractice
//
//  Created by Keisei Saito on 2017/07/14.
//  Copyright © 2017 Keisei Saito. All rights reserved.
//

import UIKit

protocol ModalNavigationControllerDelegate: class {
	func modalNavigationControllerWillDismiss(_ modalNavigationController: ModalNavigationController)
}

class ModalNavigationController: UINavigationController {
	weak var modalDelegate: ModalNavigationControllerDelegate?

	func dismiss() {
		modalDelegate?.modalNavigationControllerWillDismiss(self)
		dismiss(animated: true, completion: nil)
	}
}
