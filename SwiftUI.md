# Data flow in SwiftUI: State, Binding, StateObject, ObservedObject
In SwiftUI, everything focuses mostly on the state, and when it mutates or alters, the states act as the source of truth that drives the flow of data in your app.

Each wrapper indicates a different source of data:

**`@State`** variables are owned by the view. SwiftUI ensures that this view is updated whenever the value of the state variable changes. Apple encourages you to mark these private to emphasize that a **`@State`** variable is owned and managed by that view specifically. **`@State`** binding variables are only in memory for the lifetime of the view.

**`@Binding`** declares dependency on a **`@State`** variable owned by another view, which uses the $ prefix to pass a binding to this state variable to another view. In the receiving view, **`@Binding`** variable is a reference to the data, so it doesn't need an initial value. So, with **`@Binding`**, you create a property similar to a state property, but with the data stored elsewhere, in a state property or an observable object of an ancestor view.

**`@ObservedObject`** declares dependency on a reference type that conforms to the **ObservableObject** protocol. It implements an **objectWillChange** property to publish changes to its data. The class can define one or more **`@Published`** properties.

**`@EnvironmentObject`** declares dependency on some shared data — data that's visible to all views in the app. It's a convenient way to pass data indirectly, instead of passing data from parent view to child to grandchild, especially if the child view doesn't need it.

<img width="704" alt="Screenshot 2023-11-20 at 5 31 07 PM" src="https://github.com/ToheedKhan/SwiftUIApps/assets/4839453/5aa60c06-47c4-4fcf-a7b1-7ed07dac9d04">
