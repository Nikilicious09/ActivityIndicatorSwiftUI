//
//  CustomActivityIndicatorBar.swift
//  ActivityIndicatorBreakdown
//
//  Created by Nikilicious on 13/05/22.
//

import Foundation
import SwiftUI

struct CustomActivityIndicatorBar: View {

	@Binding var rotationAngle: Double
	
	var body: some View {
		Capsule()
			.frame(width: 20, height: 200)
			.rotationEffect(.degrees(rotationAngle), anchor: .center)
	}
	
}

struct CustomActivityIndicatorBar_Previews: PreviewProvider {
	
	static var previews: some View {
		CustomActivityIndicatorBar(rotationAngle: .constant(30))
	}
	
}
	
