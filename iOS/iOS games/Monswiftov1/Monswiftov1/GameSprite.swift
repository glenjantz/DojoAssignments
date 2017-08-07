//
//  GameSprite.swift
//  Monswiftov1
//
//  Created by Glen Jantz on 3/11/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import Foundation
import SpriteKit
protocol GameSprite {
    var textureAtlas:SKTextureAtlas { get set }
    var initialSize: CGSize { get set }
    func onTap()
}
