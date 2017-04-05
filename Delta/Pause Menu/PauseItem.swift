//
//  PauseItem.swift
//  Delta
//
//  Created by Riley Testut on 1/30/16.
//  Copyright © 2016 Riley Testut. All rights reserved.
//

import UIKit

// Must be class for use with Objective-C generics :(
class PauseItem: Equatable
{
    var image: UIImage
    var text: String
    var action: ((PauseItem) -> Void)
    
    var selected = false
    
    init(image: UIImage, text: String, action: @escaping ((PauseItem) -> Void))
    {
        self.image = image
        self.text = text
        self.action = action
    }
}

func ==(lhs: PauseItem, rhs: PauseItem) -> Bool
{
    return (lhs.image == rhs.image) && (lhs.text == rhs.text)
}
