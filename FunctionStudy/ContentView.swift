
import SwiftUI

struct ContentView: View {
    @State var textList = ["Hello"]
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
    //下の関数を別のビューで動かしたい
    func Hello() {
        let greeting = "Hello"
        self.textList.insert(greeting, at: 0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
