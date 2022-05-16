//
//  ContentView.swift
//  ActivityIndicatorBreakdown
//
//  Created by Nikilicious on 13/05/22.
//

import SwiftUI

struct ContentView: View {
	
	@State private var isAnimating = false
	
	@State var capsuleAngles: [Double] = [0, 30, 60, 90, 120, 150]
	
	var foreverAnimation: Animation {
		Animation.linear(duration: 1.0)
			.repeatForever(autoreverses: false)
	}

    var body: some View {
		ZStack {
			ForEach(capsuleAngles.indices) { index in
				CustomActivityIndicatorBar(rotationAngle: $capsuleAngles[index])
			}
						
			OuterGradientCircle()
				.frame(width: 200, height: 200)
				.rotationEffect(Angle(degrees: self.isAnimating ? 360.0 : 0.0))
				.animation(self.foreverAnimation)
				.onAppear {
					self.isAnimating = true
			}

			Circle()
				.fill(.white)
				.frame(width: 100, height: 100)
		}
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
		ContentView()
    }
}
