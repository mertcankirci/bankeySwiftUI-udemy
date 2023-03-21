//
//  LoginView.swift
//  Rebank
//
//  Created by Mertcan Kırcı on 19.03.2023.
//

import SwiftUI

struct LoginView: View {
    
    
    @State var username : String = ""
    @State var password: String = ""
    @ObservedObject var viewModel = LoginViewModel()
    @State var showingAlert: Bool = false
        
    var body: some View {
        VStack(alignment: .center, spacing: 20){
            Group{
                Text("BANKEY")
                    .font(.title)
                Text("Your premium source for all things banking")
                    .font(.footnote)
            }
            
            .padding()
            
            Text("Username")
                .padding(EdgeInsets(top: -5, leading: 0, bottom: -10, trailing: 200))
            
            TextField("", text: $username)
                .frame(width: 300, height: 50)
                .background(Color.secondary)
                .foregroundColor(.white)
                .cornerRadius(14)
                .multilineTextAlignment(.leading)
                .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
            
            Text("Password")
                .padding(EdgeInsets(top: -5, leading: 0, bottom: -10, trailing: 200))
            
            SecureField("", text: $password)
                .frame(width: 300, height: 50)
                .background(Color.secondary)
                .foregroundColor(.white)
                .cornerRadius(14)
                .multilineTextAlignment(.leading)
                .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
            
            
            
            Button("Log in") {
                
                if viewModel.login(username: username, password: password){
                    //MARK: NEW SCREEN
                    print("New screen")
                }
                else {
                    showingAlert.toggle()
                }
            }
                .frame(width: 70, height: 35)
                .background(Color.secondary)
                .foregroundColor(.white)
                .cornerRadius(3)
                .padding(.top, 16)
                .alert("Please check your username and password", isPresented: $showingAlert) {
                    Button("OK", role: .cancel) {}
                }
                
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)

    }

}

struct LoginView_Previews: PreviewProvider {
    static let username = ""
    static let password = ""
    static var previews: some View {

        LoginView(username: username, password: password)
    }
}
