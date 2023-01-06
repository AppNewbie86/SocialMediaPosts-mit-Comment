//
//  ContentView.swift
//  SocialMediaPosts mit Comment
//
//  Created by Marcel Zimmermann on 05.01.23.
//

import SwiftUI

// Deklaration von den Posts

let comment1 = Comment(text: "Swift Ui", author: "Darth Vader")
let comment2 = Comment(text: "Examples please", author: "Gagamel")
let comment3 = Comment(text: "Bambi ist geflohen", author: "Gloeckner")
let comment4 = Comment(text: "Skiwalker nein Mama das ist nicht mein Vater.....", author: "Gandalf")
let comment5 = Comment(text: "Luke ich bin dein Vater", author: "DarthVader")
let comment6 = Comment(text: "streite es nicht ab ... es bringt nix es zu leugnen ", author: "Prinzissin Leya")




// Bauen der Posts #1

let post1 = Post(title: "post1", author: "Marcel",comments:
                    [comment1,comment2], date:
                    "21.02.1986", showComments: true)
    

// Bauen der Posts #2


let post2 = Post(title: "post2", author: "JustDoIt",comments:
                    [comment3,comment4], date:
                    "05.01.2023", showComments: true)

// Bauen der Posts #3


let post3 = Post(title: "post3", author: "PrincessLeya",comments:
                    [comment5,comment6], date:
                    "06.01.2023", showComments: true)


struct ContentView: View {
    
   
    // State Variablen sind dafür da wenn man einen Status behalten möchte
    // posts variable zum anzeigen des post1 , posts 2 und posts3
    @State var posts = [post1, post2, post3]
    @State var isPresented : Bool = false
    
    // hinzufügen eines Comments brauchen wir eine Variable die einen Status behalten kann deswegen @ State
    @State private var commentText = ""

    var body: some View {
        VStack {
            // Liste wo wir uns auf die Posts und deren Index beziehen 
            List(posts.indices){
                index in
                HStack {
                    PostView(post: posts[index])
                    Spacer()
                }
                .onTapGesture {
                    for i in 0...posts.count-1{
                        if(i == index){
                            posts[i].showComments.toggle()
                        }
                        else{
                            posts[i].showComments = false
                        }
                    }
                }
                if(posts[index].showComments){
                    Button("Neuen Kommentar hinzufügen"){
                        isPresented = true
                    }.padding()
                        .cornerRadius(25)
                        .background(Color.gray)
                        
                }
                
            }
          
        }
        
        
        // Klappbarer View typisch IOS Layout
        .sheet(isPresented: $isPresented){
         AddCommentView()
        }
        
        .padding()
    }
}







        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
 

