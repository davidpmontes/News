//
//  Article.swift
//  News
//
//  Created by David Montes on 1/8/20.
//  Copyright © 2020 David Montes. All rights reserved.
//

import Foundation

struct Article
{
    var title:String
    var author:String
    var url:String
    
    var urlRequest:URLRequest
    {
        URLRequest(url: URL(string: url)!)
    }
}
