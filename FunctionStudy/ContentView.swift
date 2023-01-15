
import SwiftUI

struct ContentView: View {
    @State private var textList = ["Hello"]
    
    var body: some View {
        VStack {
            List {
                ForEach(textList, id: \.self) { index in
                    Text(index)
                }
            }
            ButtonView(hello: Hello)
        }
    }
    func Hello() {
        let greeting = "Hello"
        self.textList.insert(greeting, at: 0)
    }
}

struct ButtonView: View {
    let hello: () -> Void
    var body: some View {
        VStack {
            Button(action: {
                hello()
            }) {
                Text("挨拶をする")
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
