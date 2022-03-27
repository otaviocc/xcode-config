//___FILEHEADER___

import Foundation

enum ___VARIABLE_productName:identifier___Action {
    case viewDidLoad
    case viewWillAppear
    case viewDidAppear
}

protocol ___VARIABLE_productName:identifier___ViewModelProtocol { 
   func send(
		_ action: ___VARIABLE_productName:identifier___Action
   	)
}

final class ___VARIABLE_productName:identifier___ViewModel: ___VARIABLE_productName:identifier___ViewModelProtocol {

    // MARK: - Properties

    // MARK: - Life cycle

    init(
        <#parameters#>
    ) {
        <#code#>
    }

    // MARK: - Public

    func send(
    	_ action: ___VARIABLE_productName:identifier___Action
    ) {
        switch action {
        case .viewDidLoad: break
        case .viewWillAppear: break
        case .viewDidAppear: break
        }
    }

    // MARK: - Private
}
