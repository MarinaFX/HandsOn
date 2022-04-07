//
//  CountDownTimer.swift
//  HandsOnWatch WatchKit Extension
//
//  Created by João Gabriel Biazus de Quevedo on 07/04/22.
//

import SwiftUI

struct CountdownTimer: View {
    var body: some View {
        Countdown()
    }
}

struct CountdownTimer_Previews: PreviewProvider {
    static var previews: some View {
        CountdownTimer()
    }
}

struct Countdown : View {
    
    @State var start = false
    @State var to : CGFloat = 0
    @State var count: Double = 0.0
    @State var cookTime: TimeInterval = 10
    @State var timeremaining: TimeInterval = 10
    @State var time = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    
    func convertSecondstoTimeStatic(seconds: Int) ->
    String {
        
        let minutes = seconds / 60
        let second = seconds % 60
        
        if second == 0{
            if minutes < 9 {
                return String(format: "%2i", minutes)
            }else{
                return String(format: "%02i", minutes)
            }
        }else{
            return String(format: "%02i:%02i", minutes,second)
        }
    }
    
    func convertSecondstoTime(seconds: Int) ->
    String {
        
        let minutes = seconds / 60
        let second = seconds % 60
        
        return String(format: "%02i:%02i", minutes,second)
    }
    
    
    var body: some View {
        
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 35)
                    .trim(from: 0, to: 1)
                    .stroke(Color.red.opacity(0.4),style: StrokeStyle(lineWidth: 8, lineCap: .square))
                    .frame(width: WKInterfaceDevice.current().screenBounds.size.width * 0.96, height: WKInterfaceDevice.current().screenBounds.size.height * 0.77)
                    .rotationEffect(.init(degrees: -90))
                
                
                RoundedRectangle(cornerRadius: 35)
                    .trim(from: 0, to: self.to)
                    .stroke(Color.red.opacity(1),style: StrokeStyle(lineWidth: 8, lineCap: .square))
                    .frame(width: WKInterfaceDevice.current().screenBounds.size.width * 0.96, height: WKInterfaceDevice.current().screenBounds.size.height * 0.77)
                    .rotationEffect(.init(degrees: -90))
                
                
                VStack{
                    Text("\(convertSecondstoTimeStatic(seconds:Int(timeremaining))) min")
                        .foregroundColor(.red)
                        .font(.system(size: 15))
                    
                    Text((convertSecondstoTime(seconds:Int(cookTime))))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(.system(size: 40))
                    
                    HStack{
                        NavigationLink(destination: FinishedTimerView()){
                            Image(systemName: "arrow.left.circle.fill")
                                .resizable()
                                .frame(width: 32, height: 32)
                                .foregroundColor(.red)
                                .buttonStyle(PlainButtonStyle())
                            
                        }
                        .background(Color.clear)
                        .buttonStyle(BorderlessButtonStyle())
                        .cornerRadius(20)
                        .padding(.leading, 20)
                        Spacer()
                        
                        Button(action: {
                            self.start.toggle()
                        }, label: {
                            
                            Image(systemName: self.start ? "pause.circle.fill" : "play.circle.fill")
                                .resizable()
                                .frame(width: 32, height: 32)
                                .foregroundColor(.red)
                        })
                        .buttonStyle(PlainButtonStyle())
                        .cornerRadius(20)
                        Spacer()
                        
                        NavigationLink(destination: FinishedTimerView()){
                            Image(systemName: "arrow.right.circle.fill")
                                .resizable()
                                .frame(width: 32, height: 32)
                                .foregroundColor(.red)
                                .buttonStyle(PlainButtonStyle())
                            
                        }
                        .background(Color.clear)
                        .buttonStyle(BorderlessButtonStyle())
                        .cornerRadius(20)
                        .padding(.trailing, 20)
                    }
                    
                }
                
            }
            .padding(.top, 20)
            .padding(.bottom, 15)
        }
        .padding(.top, 38)
        .padding(.bottom, 10)
        
        .edgesIgnoringSafeArea(.all)
        ._statusBar(hidden: true)
        
        .onReceive(self.time) { (_) in
            
            if self.start{
                
                if self.count != timeremaining{
                    
                    self.count += 1
                    self.cookTime -= 1
                    
                    withAnimation(.default){
                        
                        self.to = CGFloat(self.count) / CGFloat(timeremaining)
                    }
                }
                else{
                    
                    self.start.toggle()
                }
                
            }
            
        }
    }
}
