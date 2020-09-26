//
//  UIView+Layer.swift
//  Shadow
//
//  Created by Kumar on 26/09/20.
//  Copyright © 2020 Kumar. All rights reserved.
//

import UIKit

extension UIView{
    
    /// Color of shadow
    var shadowColor:UIColor{
        get{
            return UIColor(cgColor: self.layer.shadowColor ?? CGColor(srgbRed: 0, green: 0, blue: 0, alpha: 1))
        }set{
            self.layer.shadowColor = newValue.cgColor
        }
    }
    /// Opacity of shadow from 0 to 1, 0 means no visible. Default shadow opacity is 0.
    var shadowOpacity:Float{
        get{
            return self.layer.shadowOpacity
        }set{
            self.layer.shadowOpacity = newValue > 1 ? 1 : newValue
        }
    }
    
    /// Shadow radius means how far blur will affective.
    var shadowRadius:CGFloat{
        get{
            return self.layer.shadowRadius
        }set{
            self.layer.shadowRadius = newValue
        }
    }
    
    /// Default value of shadowOffSet is coming (0, -3)
    var shadowOffSet:CGSize{
        get{
            return self.layer.shadowOffset
        }set{
            self.layer.shadowOffset = newValue
        }
    }
    
    ///Not setting a shadow path makes shadow generation a lot slower.
    var shadowPath:CGPath?{
        get{
            return self.layer.shadowPath
        }set{
            self.layer.shadowPath = newValue
        }
    }
}
