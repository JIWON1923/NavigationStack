# 🚀 Navigation Stack 프로젝트

SwiftUI에서 **커스텀 네비게이션 기능**을 구현하는 프로젝트입니다.  
기본적인 **Push & Pop** 동작뿐만 아니라 특정 View까지 Pop하는 기능을 제공합니다.

---

## 📌 주요 기능

### ✅ 1. 기본 Push & Pop 기능 / 특정 View까지 Pop 액션 실행

```swift
class Router<Route: Hashable>: ObservableObject {
    @Published var paths: [Route] = []
    
    /// 새로운 View를 Push
    func push(_ route: Route) {
        paths.append(route)
    }
    
    /// 현재 View를 Pop
    func pop() {
        guard !paths.isEmpty else { return }
        paths.removeLast()
    }
    
    /// 루트 View까지 Pop
    func popToRootView() {
        paths = []
    }
    
    /// 특정 View까지 Pop
    func popTo(_ routeCase: Route) {
        guard let index = paths.lastIndex(of: routeCase) else { return }
        paths = Array(paths.prefix(through: index))
    }
}
```

### ✅ 2. 뒤로 가기(Back) 버튼 커스텀
SwiftUI에서 .navigationBarBackButtonHidden()을 사용한 후 커스텀 아이콘을 삽입하면 스와이프 제스처가 작동하지 않는 문제가 발생할 수 있습니다.
이를 해결하기 위해 UINavigationBar의 appearance API를 활용합니다.

``` swift
@main
struct NavigationStackApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    UINavigationBar.appearance().backIndicatorImage = ImageLiterals.Chevron.left
                    UINavigationBar.appearance().backIndicatorTransitionMaskImage = ImageLiterals.Chevron.left
                }
        }
    }
}
```

## 스크린샷

![스크린샷](https://github.com/user-attachments/assets/d8cdd7b2-d39b-40ff-a0be-bdd7b93cf14a)
