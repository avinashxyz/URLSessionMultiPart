//
//  Media.swift
//  URLSessionMPFD
//
//  Created by Kyle Lee on 4/29/17.
//  Copyright © 2017 Kyle Lee. All rights reserved.
//

import UIKit

struct Media {
    let key: String
    let filename: String?
    let data: Data
    let mimeType: String?
    
    init?(withImage image: UIImage, forKey key: String) {
        self.key = key
        self.mimeType = nil //"image/jpeg"
        self.filename = nil     /*"circuit2.png"*/
        
      
        
        guard let data = image.jpegData(compressionQuality: 0.7) else { return nil }
        //jpegData(compressionQuality: 0.7) else { return nil }
        self.data = data
    }
    
}
