//
//  AddCommentView.swift
//  SocialMediaPosts mit Comment
//
//  Created by Marcel Zimmermann on 06.01.23.
//

import SwiftUI

struct AddCommentView: View {
    
    // hinzufügen einer alertvariablen
    @State private var presentAlert: Bool = false
    
    // Wollen ja Wert später behalten
    @State private var userName: String = ""
    @State private var comment: String = ""
    
    @State private var isSaved : Bool = false

    
    var body: some View {
        VStack {
            
            
            Text (isSaved ? "Your Comment is Saved " :
            "please save your comment")
            
            
            
            
            // hier findet das Binding statt
            Text(presentAlert ? "Presenting" : "Fehlgeschlagen")
            Button("Add Comment"){
                presentAlert = true
            }
            Spacer()
        }
        .padding()
        
        
        // hier bauen wir unseren Alert
        .alert(
            "Add Comment",
            isPresented: $presentAlert,
            actions: {
            
                
            TextField( "Username", text: $userName)
            TextField( "Comment", text: $comment)
            
                
            // Im IOS Styleguide werden mehr als 2 Buttons untereinander angezeigt
                
            // Button mit Save
            Button("Save", action:{
                if(userName == "Marcel"){
                    isSaved = true
                }
                
            })
                
            // Mit role erfüllen wir den Styleguide von Apple
            Button ("Cancel",role: .cancel,action:
                        {})

        },message: {
            Text("Hier können Sie einen neuen Kommentar hinzufügen")
            
        }
        )
    }
   
}
        
