
import SwiftUI

struct ButtonView: View {
    //ContentViewのHello関数を受け取る。
    let hello: () -> Void
    
    var body: some View {
        VStack {
            Button(action: {
                //ContentViewのHello関数を実行する
                hello()
            }) {
                Text("挨拶をする")
            }
            .padding()
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static let hello = {}
    static var previews: some View {
        ButtonView(hello: hello)
    }
}
