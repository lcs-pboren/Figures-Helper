import SwiftUI

struct CircleView: View {
    
    //MARK: Stored properties
    //"radius" is the name
    //"Double" is the data type
    //By adding = 15.0   we are providing a default value.
    var radius: Double = 15.0
    
    //MMARK: Computed properties
    
    var area: Double{
        return Double.pi * radius * radius
    }
    
    // User interface
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            // Input
            Text("Radius:")
                .bold()
            
            Group {
                
                // Show the selected radius value
                HStack {
                    Spacer()
                    Text("\(radius)")
                        .font(.title2)
                        .bold()
                    Spacer()
                }
                
                Slider(value: .constant(15.0),
                       in: 0.0...100.0,
                       label: {
                    Text("Radius")
                },
                       minimumValueLabel: {
                    Text("0.0")
                },
                       maximumValueLabel: {
                    Text("100.0")
                })

            }
            
                        
            // Output
            Text("Area:")
                .bold()
            
            Text("\(area) square units")
                .font(.title2)
            
            
            Spacer()
            
        }
        .padding()
        .navigationTitle("Circle")
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CircleView()
        }
    }
}
