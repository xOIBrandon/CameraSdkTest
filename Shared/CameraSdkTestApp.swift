import SwiftUI
import XoiSdk

@main
struct CameraSdkTestApp: App {
    var body: some Scene {
        WindowGroup {
          ContentView().onAppear(perform: setupSdk)
        }
    }

  func setupSdk() {
    XoiSDK.configure(
      apiKey: "",
      accountId: "XOi",
      environment: .devl,
      onMmsResult: { mms, identifier in
        print(mms, identifier as Any)
      }
    )
    XoiSDK.setTheme(
      colors: XoiColors(
        headerBackground: Color.indigo,
        textHeader: Color.white,
        textHeaderAction: Color.white
      ),
      borderRadii: XoiBorderRadii(buttonMain: 1, contentCard: 1)
    )
    XoiSDK.isLauncherVisible = true
    XoiSDK.identifier = "sumnum"
  }

}
