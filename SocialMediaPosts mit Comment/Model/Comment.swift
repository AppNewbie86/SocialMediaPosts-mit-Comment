//
//  Comment.swift
//  SocialMediaPosts mit Comment
//
//  Created by Marcel Zimmermann on 05.01.23.
//

import Foundation

// Comment hat immer einen Text und einen Author
struct Comment : Identifiable {
    
    var id = UUID ()
   
    var text : String
    var author : String
    
}
