//
//  HeaderView.swift
//  AluraViagensSwiftUI
//
//  Created by Adriano Valumin on 29/02/24.
//

import SwiftUI

struct HeaderView: View {
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass

    var body: some View {
        GeometryReader { view in
            VStack {
                VStack {
                    // MARK: Header VStack

                    Text("alura viagens")
                        .foregroundStyle(.white)
                        .font(.custom("Avenir Black", size: self.horizontalSizeClass == .compact ? 20 : 30))
                        .padding(.top, self.horizontalSizeClass == .compact ? 10 : 20)
                    Text("ESPECIAL")
                        .foregroundStyle(.white)
                        .font(.custom("Avenir Book", size: self.horizontalSizeClass == .compact ? 20 : 30))
                        .frame(minWidth: 0, 
                               maxWidth: .infinity,
                               alignment: .leading)
                        .padding(.leading, 30)
                    Text("BRASIL")
                        .foregroundStyle(.white)
                        .font(.custom("Avenir Black", 
                                      size: self.horizontalSizeClass == .compact ? 23 : 33))
                        .frame(minWidth: 0,
                               maxWidth: .infinity,
                               alignment: .leading)
                        .padding(.leading, 30)
                }
                .frame(width: view.size.width, 
                       height: self.horizontalSizeClass == .compact ? 140 : 190, alignment: .top)
                .background(.purple)

                HStack {
                    Button(action: { }, label: {
                        Text("Hotéis")
                            .font(.custom("Avenir Medium", size: self.horizontalSizeClass == .compact ? 17 : 24))
                            .foregroundStyle(.white)
                    })
                    .frame(width: self.horizontalSizeClass == .compact ? 100 : 150,
                           height: self.horizontalSizeClass == .compact ? 50 : 75)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(.blue, lineWidth: 10))
                    .background(.blue)
                    .offset(x: self.horizontalSizeClass == .compact ? 50 : (view.size.width / 6))

                    Spacer()

                    Button(action: { }, label: {
                        Text("Pacotes")
                            .font(.custom("Avenir Medium", size: self.horizontalSizeClass == .compact ? 17 : 24))
                            .foregroundStyle(.white)
                    })
                    .frame(width: self.horizontalSizeClass == .compact ? 100 : 150,
                           height: self.horizontalSizeClass == .compact ? 50 : 75)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(.orange, lineWidth: 10))
                    .background(.orange)
                    .offset(x: self.horizontalSizeClass == .compact ? -50 : -(view.size.width / 6))
                }
                .offset(y: self.horizontalSizeClass == .compact ? -25 : -37.5)
//                .offset(y: self.horizontalSizeClass == .compact ? -(view.size.width / 8) + 15 : -(view.size.width / 6) + (view.size.width / 8) - 5)
            }
        }
    }
}

#Preview(traits: .fixedLayout(width: 400, height: 250)) {
    HeaderView()
}
