//
//  MapaView.swift
//  AluraViagensSwiftUI
//
//  Created by Adriano Valumin on 01/03/24.
//

import MapKit
import SwiftUI

struct MapaView: UIViewRepresentable {
    var coordenada: CLLocationCoordinate2D

    func makeUIView(context: Context) -> MKMapView {
        return MKMapView(frame: .zero)
    }

    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        let region = MKCoordinateRegion(center: coordenada, span: span)
        uiView.setRegion(region, animated: true)
    }
}

#Preview {
    MapaView(coordenada: viagens[0].localizacao)
}
