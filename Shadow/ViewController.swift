//
//  ViewController.swift
//  Shadow
//
//  Created by Kumar on 26/09/20.
//  Copyright © 2020 Kumar. All rights reserved.
//

import UIKit

final class ViewController: UIViewController
{
    //MARK:- IBOutlet
    @IBOutlet weak var greenView: UIView!
    
    /// View load method
    override func viewDidLoad() {
        super.viewDidLoad()
       // addDropShadowOnGreenView()
        addContactShadowOnGreenView()
    }
    
    private func addDropShadowOnGreenView(){
        greenView.shadowColor = .red
        greenView.shadowOffSet = CGSize(width: 0, height: 0)
        greenView.shadowOpacity = 1
        greenView.shadowRadius = 3
        greenView.shadowPath = UIBezierPath(rect: greenView.bounds).cgPath
    }
    
    private func addContactShadowOnGreenView(){
        let size:CGFloat = 20
        
        let width = greenView.bounds.size.width + 2 * size
        let height = size
        let xAxis = -size
        let yAxis = greenView.bounds.size.height + size
        let rect = CGRect(x: xAxis, y: yAxis, width: width, height: height)
        
        greenView.shadowOffSet = CGSize.zero
        greenView.shadowColor = .black
        greenView.shadowOpacity = 0.3
        greenView.shadowRadius = 3
        greenView.shadowPath = UIBezierPath(ovalIn: rect).cgPath
        //greenView.shadowPath = UIBezierPath(roundedRect: rect, cornerRadius: 5).cgPath
    }
    
    
}

