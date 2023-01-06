//
//  Post.swift
//  SocialMediaPosts mit Comment
//
//  Created by Marcel Zimmermann on 05.01.23.
//

import Foundation


// Was wird alles benötigt wenn wir einen Post bauen wollen ?

// der Post hat einen titel
// einen author
// und ein array aus Comments
// und ein Datum
// Variable ob man Comment gerade sehen kann aber als Booolean also wahr oder falsch 

struct Post : Identifiable {
    var id = UUID()
    var title : String
    var author : String
    var comments : Array<Comment>
    var date : String
    var showComments : Bool
}
