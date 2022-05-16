//
//  OuterGradientCircle.swift
//  ActivityIndicatorBreakdown
//
//  Created by Nikilicious on 16/05/22.
//

import Foundation
import SwiftUI

struct OuterGradientCircle: View {
	
	var body: some View {
		Circle()
			.fill(
				AngularGradient(gradient: Constants.gradientColors, center: .center, angle: .degrees(90))
			)
	}
	
}

struct OuterGradient_Previews: PreviewProvider {
	static var previews: some View {
		OuterGradientCircle()
	}
}
