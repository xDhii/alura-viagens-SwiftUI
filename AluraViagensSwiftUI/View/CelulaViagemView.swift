//
//  CelulaViagemView.swift
//  AluraViagensSwiftUI
//
//  Created by Adriano Valumin on 29/02/24.
//

import SwiftUI

struct CelulaViagemView: View {
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass

    var viagem: Viagem

    var body: some View {
        VStack(alignment: .leading) {
            Text(viagem.titulo)
                .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 14 : 24))

            Image("img\(viagem.id)")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: self.horizontalSizeClass == .compact ? 125 : 200)
                .clipped()

            HStack {
                Text(viagem.quantidadeDeDias)
                    .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 14 : 24))

                Spacer()

                Text("R$ \(viagem.valor)")
                    .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 14 : 24))
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CelulaViagemView(viagem: viagens[0])
}
