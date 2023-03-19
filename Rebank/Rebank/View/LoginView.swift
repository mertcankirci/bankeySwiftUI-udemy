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
            
            TextField("Username", text: $username)
                .frame(width: 300, height: 50)
                .background(Color.white)
                .foregroundColor(.black)
                .cornerRadius(14)
                .multilineTextAlignment(.leading)
                .textCase(.lowercase)
                .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
            
            
            SecureField("Password", text: $password)
                .frame(width: 300, height: 50)
                .background(Color.white)
                .cornerRadius(14)
                .multilineTextAlignment(.leading)
                .textCase(.lowercase)
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
                .cornerRadius(3)
                .padding(.top, 16)
                .alert("Please check your username and password", isPresented: $showingAlert) {
                    Button("OK", role: .cancel) {}
                }
                
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.gray)
    }

}

struct LoginView_Previews: PreviewProvider {
    static let username = ""
    static let password = ""
    static var previews: some View {

        LoginView(username: username, password: password)
    }
}
