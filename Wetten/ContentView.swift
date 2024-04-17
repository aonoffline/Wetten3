//
//  ContentView.swift
//  Wetten
//
//  Created by vierklee on 17.04.24.
//


import SwiftUI
import CoreData
import SafariServices

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
            
                Image("im2")
                
                Spacer()

                Button("Bereit zum Wetten") {
            
                let vc = SFSafariViewController(url: URL(string: "https://gs1.4klee.com:9999")!)
                
                UIApplication.shared.firstKeyWindow?.rootViewController?.present(vc, animated: true)
                
            }
                    .foregroundColor(.white)
                    .padding()
                    .background(.green)
                    .cornerRadius(2)
                Spacer()
                HStack{
                    
                    
                    
                    Image("18p")
                    //Spacer()
                    Button("Spielerschutz Informationen") {
                        
                        let vc = SFSafariViewController(url: URL(string: "https://bmf.gv.at/themen/gluecksspiel-spielerschutz/spielerschutz-hilfsangebote.html")!)
                        
                        UIApplication.shared.firstKeyWindow?.rootViewController?.present(vc, animated: true)
                        
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(.red)
                    .cornerRadius(2)
                Image("oshop")
               }
            }
            
           //Text("\n\n\n\n\n\n\n\n\n\nDieser Service\noperiert mit")
            //Text("           der Bewilligung \nA2/W.Wett-10423-13-2023")
            //Text("                         erteilt vom \nAmt der Burgenländischen Landesregierung")
           // Text("\n\n Die Wettabgabe erfolgt in Realannahme am\n Bewilligungstandort\n\n\n")
            
            //Text("!!Wetten ab 18 Jahren!!")
            
           // Image("Image")
            
             //   .resizable()
             //   .aspectRatio(contentMode: .fit)
              //  .frame(maxWidth: .infinity, maxHeight: .infinity)
               // .padding()
        }
        }
}

extension UIApplication {
    // 3
    var firstKeyWindow: UIWindow? {
        return UIApplication.shared.connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .filter { $0.activationState == .foregroundActive }
            .first?.keyWindow
               
    }
}

