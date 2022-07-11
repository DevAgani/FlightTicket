//
//  ContentView.swift
//  FlightTicket
//
//  Created by George Nyakundi on 10/07/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            // Title
            Text("My Flights")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
            // Timing
            HStack {
                Text("Go to the airport at")
                    .font(.body)
                    .fontWeight(.medium)
                Spacer()
                HStack {
                    Image(systemName: "clock")
                    Text("21:20")
                        .font(.body)
                        .fontWeight(.medium)
                }
            }
            .padding(EdgeInsets(top: 26, leading: 16, bottom: 20, trailing: 16))
            // Departure & Destination Airport
            ZStack {
                Group {
                    VStack {
                        HStack {
                            Text("FROM")
                            Spacer()
                            Image(systemName: "airplane.departure")
                            Spacer()
                            Text("TO")
                        }
                        .padding(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
                        HStack {
                            Text("ABC")
                                .font(.headline)
                                .fontWeight(.bold)
                            Spacer()
                            Text("CBA")
                                .font(.headline)
                                .fontWeight(.bold)
                        }
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 8, trailing: 0))
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Copenhagen, Denmark")
                                Text("23:45, Thu 15 Oct")
                                Text("Terminal 1")
                            }
                            Spacer()
                            VStack(alignment: .trailing) {
                                Text("Oslo, Norway")
                                Text("23:45, Thu 16 Oct")
                                Text("Terminal 1")
                            }
                        }
                        .font(.subheadline)
                        // Divider
                        Divider()
                            .padding(EdgeInsets(top: 20, leading: 0, bottom: 10, trailing: 0))
                        // Flight Details
                        VStack {
                            HStack {
                                Text("GATE")
                                Spacer()
                                Text("FLIGHT")
                                Spacer()
                                Text("SEAT")
                            }
                            HStack {
                                Text("C2")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                Spacer()
                                Text("UA 902Y")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                Spacer()
                                Text("14E")
                                    .font(.headline)
                                    .fontWeight(.bold)
                            }
                            .padding(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
                        }
                        // Divider
                        Divider()
                            .padding(EdgeInsets(top: 10, leading: 0, bottom: 20, trailing: 0))
                        // Traveller's Information
                        VStack {
                            HStack {
                             Text("TRAVELLER")
                             Spacer()
                             Text("CLASS")
                            }
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 3, trailing: 0))
                            HStack {
                                Text("Samantha Ruth")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                Spacer()
                                Text("Economy")
                                    .font(.headline)
                                    .fontWeight(.bold)
                            }
                        }
                        // Barcode
                        HStack {
                            Image(systemName: "barcode")
                                .resizable()
                                .scaledToFit()
                            Image(systemName: "barcode")
                                .resizable()
                                .scaledToFit()
                            Image(systemName: "barcode")
                                .resizable()
                                .scaledToFit()
                            Image(systemName: "barcode")
                                .resizable()
                                .scaledToFit()
                        }
                        .padding(EdgeInsets(top: 51.62, leading: 0, bottom: 20, trailing: 0))
                    }
                    .padding(EdgeInsets(top: 50, leading: 40, bottom: 20, trailing: 40))
                }
                .background(
                    Group {
                        Image("Noise")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(Color("#C1E3E1"))
                    }
                        .padding(EdgeInsets(top: 0, leading: 16, bottom: 16, trailing: 15))
                )
               
            }
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
