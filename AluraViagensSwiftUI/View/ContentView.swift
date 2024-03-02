//
//  ContentView.swift
//  AluraViagensSwiftUI
//
//  Created by Adriano Valumin on 27/02/24.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass

    var body: some View {
        NavigationStack {
            GeometryReader { view in

                VStack {
                    // MARK: Principal VStack

                    HeaderView()
                        .frame(width: view.size.width,
                               height: self.horizontalSizeClass == .compact ? 140 : 240,
                               alignment: .top)

                    List(viagens) { viagem in
                        NavigationLink {
                            MapaView(coordenada: viagem.localizacao)
                                .navigationTitle(viagem.titulo)
                                .navigationBarTitleDisplayMode(.inline)
                        } label: {
                            CelulaViagemView(viagem: viagem)
                        }
                    }
                    .listRowSeparator(.hidden)
                    .listRowBackground(Color.clear)
                    .scrollContentBackground(.hidden)
                    .navigationTitle("")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
