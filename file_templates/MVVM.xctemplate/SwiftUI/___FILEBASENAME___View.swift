// ___FILEHEADER___

import SwiftUI

struct ___VARIABLE_productName:identifier___View: View {

    // MARK: - Properties

    @ObservedObject private var viewModel: ___VARIABLE_productName:identifier___ViewModel

    // MARK: - Life cycle

    init(
        viewModel: ___VARIABLE_productName:identifier___ViewModel
    ) {
        self.viewModel = viewModel
    }

    // MARK: - Public

    var body: some View {
        Text("")
    }
}

// MARK: - PreviewProvider

struct ___VARIABLE_productName:identifier___View_Previews: PreviewProvider {
    static var previews: some View {
        ___VARIABLE_productName:identifier___View(
            viewModel: .init()
        )
        .previewLayout(.sizeThatFits)
    }
}
