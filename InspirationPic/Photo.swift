//
//  Photo.swift
//  InspirationPic
//
//  Created by Carlos Linares on 11/3/15.
//  Copyright (c) 2015 Calosth. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class Photo: NSObject {
    var name: String?
    var info: String?
    var camera: String?
    var lens: String?
    var focalLength: String?
    var iso: String?
    var shutterSpeed: String?
    var highest_rating: Double?
    var imageurl: String?
    
    init(data: JSON){
        self.name = data["name"].stringValue
        self.info = data["description"].stringValue
        self.camera = data["camera"].stringValue
        self.lens = data["lens"].stringValue
        self.focalLength = data["focal_length"].stringValue
        self.iso = data["iso"].stringValue
        self.shutterSpeed = data["shutter_speed"].stringValue
        self.highest_rating = data["highest_rating"].doubleValue
        self.imageurl = data["images"][0]["url"].stringValue
    }
}