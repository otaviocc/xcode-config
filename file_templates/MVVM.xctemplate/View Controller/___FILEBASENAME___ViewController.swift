// ___FILEHEADER___

import UIKit

final class ___VARIABLE_productName:identifier___ViewController: UIViewController {
    // MARK: - Properties

    private let viewModel: ___VARIABLE_productName:identifier___ViewModelProtocol

    // MARK: - Life cycle

    init(
        viewModel: ___VARIABLE_productName:identifier___ViewModelProtocol
    ) {
        self.viewModel = viewModel

        super.init(nibName: nil, bundle: nil)
    }

    required init?(
        coder aDecoder: NSCoder
    ) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpView()

        viewModel.send(.viewDidLoad)
    }

    override func viewWillAppear(
        _ animated: Bool
    ) {
        super.viewWillAppear(animated)

        viewModel.send(.viewWillAppear)
    }

    override func viewDidAppear(
        _ animated: Bool
    ) {
        super.viewDidAppear(animated)

        viewModel.send(.viewDidAppear)
    }

    // MARK: - Public

    // MARK: - Private

    private func setUpView() {
        <#code#>
    }
}
