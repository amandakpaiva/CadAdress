//
//  ContentView.swift
//  notesfromalura
//
//  Created by Amanda Karolina Santos da Fonseca Paiva on 17/03/22.
//


import SwiftUI

struct ContentView: View {
    

    
    @State  var name : String = ""
    @State var phoneNumber : String = ""
    @State var zipCode : String = ""
    @State var PublicPlace: String = ""
    @State var houseNumber : String = ""
    @State var district : String = ""
    @State var comp: String = ""
    @State var city : String = ""
    @State var state : String = ""


    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Cadastro de endereço")){
                 
                    TextField("Nome", text: $name)
                    TextField("Telefone", text: $phoneNumber) 
                    TextField("CEP", text: $zipCode) 
                    TextField("Logradouro", text: $PublicPlace) 
                    TextField("Número", text: $houseNumber)
                    TextField("Bairro", text: $district)
                    TextField("Complemento", text: $comp)
                    TextField("Cidade", text: $city)
                    TextField("Estado", text: $state)
                    
                    
                    
                }
                Button(action: {
                    print(name, phoneNumber, zipCode, PublicPlace, houseNumber,district, comp, city, state)
                }) {
                    Text("                                Salvar")
                }
                Section(header: Text("Amanda Paiva ® Alguns direitos reservados")){
                  
                }
            }
            .navigationBarTitle("MyScubaNotes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





