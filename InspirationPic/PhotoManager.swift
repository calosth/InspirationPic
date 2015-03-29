//
//  PhotoManager.swift
//  InspirationPic
//
//  Created by Carlos Linares on 11/3/15.
//  Copyright (c) 2015 Calosth. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class PhotoManager: NSObject {
    let consumer_key = "RRwketpgK4xfuIAOOgQpWtGCistA9doy7YEaMBa4"
    let baseurl = "https://api.500px.com/v1/photos/search"
    
    func getPhotos(var params: [String: String], completion: (photos: [Photo], error : NSError?)->()){
        
        params["consumer_key"] = consumer_key
        
        Alamofire.request(.GET, baseurl, parameters: params, encoding: ParameterEncoding.URL).responseJSON  { (request, response, data, error) -> Void in
                let jsonData = JSON(data!)
                var photos: [Photo] = []
            
                for (_,photo) in jsonData["photos"] {
                    let newPhoto: Photo = Photo(data: photo)
                    photos.append(newPhoto)
                }
            
                
            
                return completion(photos: photos, error: error)
            }
    }
    
}