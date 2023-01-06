//
//  PostView.swift
//  SocialMediaPosts mit Comment
//
//  Created by Marcel Zimmermann on 05.01.23.
//

import SwiftUI


struct PostView: View {
    var post: Post
    var body: some View {
        VStack(alignment: .leading) {
            if(post.showComments){
                VStack(alignment: .leading) {
                    Text(post.title).fontWeight(.bold)
                    HStack{
                        Text(post.author).fontWeight(
                            .bold)
                        Text(post.date)
                        
                    }
                }
                ForEach(post.comments){
                    comment in
                    VStack(alignment: .leading) {
                        Divider()
                        Text("\(comment.author):\(comment.text)")
                    }
                }
                
            }else{
                
                
                VStack{
                    Text(post.title)
                    HStack{
                        Text(post.author)
                        Text(post.date)
                    }
                }
                
            }
        }.padding()
        
    }
    struct PostView_Previews: PreviewProvider {
        static var previews: some View {
            PostView(post: post1)
        }
    }
    
}
