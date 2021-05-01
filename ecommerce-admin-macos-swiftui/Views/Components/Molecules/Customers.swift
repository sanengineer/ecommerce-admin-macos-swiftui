import Foundation
import SwiftUI



struct UserView: View {
    
   
    @State private var showText = true
   
    var body: some View {
        ScrollView{
            HStack {
                VStack (spacing: 13) {
                    HStack(spacing: 13) {
                            LineChartCard()
                            TopLocationCard()
                            GenderPieChartCard()
                        }
                    HStack {
                       UserTableCard()
                    }
                    
                    Spacer()
                   
                    
                
                }.ignoresSafeArea(.container)
            }
            .padding(.top, 13)
            .padding(.bottom, 20)
            .padding(.horizontal, 20)
            .frame(width: 685, alignment: .center)
        }
       }
  }


struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        HomeStack()
    }
    
}
