//
//  swiftinputview.swift
//  loginpage
//
//  Created by Bill Mar on 6/18/24.
//

import SwiftUI

struct InputView: View {
    @Binding var text: String
    let title: String
    let placeHolder: String
    var isSecureField = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12){
            Text(title)
                .foregroundColor(Color(.darkGray))
                .fontWeight(.semibold)
                .font(.footnote)
        }
        if isSecureField{
            SecureField(placeHolder, text:$text)
                .font(.system(size: 14))
        } else{
            TextField(placeHolder, text: $text)
                .font(.system(size: 14))
        }
        Divider()
    }
}

struct InputView_Previews: PreviewProvider{
    static var previews: some View{
        InputView(text: .constant(""), title: "Email Address", placeHolder: "name@example.com")
    }
}
