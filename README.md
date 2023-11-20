# SwiftUI

## App.swift

An app that uses the SwiftUI app life cycle has **a structure** that conforms to the **App protocol**. The structure’s body property returns one or more scenes, which in turn provide content for display. The **@main** attribute identifies the app’s entry point.

## ContentView.swift

By default, SwiftUI view files declare a structure and a preview. The structure conforms to the View protocol and describes the view’s content and layout. The preview declaration creates a preview for that view.

The canvas displays a preview automatically.
**Tip**
If the canvas isn’t visible, select Editor > Canvas to show it.

## Customize the text using inspector

## 1. Change the canvas mode to Selectable.
The canvas displays previews in Live mode by default so that you can interact with them, but you can use the Selectable mode to enable editing instead.

## 2. In the preview, `Command-Control-click` the greeting to bring up the structured editing popover, and choose “Show SwiftUI Inspector”.
The popover shows different attributes that you can customize, depending on the type of view you inspect.

## 3. To customize a SwiftUI view, you call methods called modifiers. Modifiers wrap a view to change its display or other properties. Each modifier returns a new view, so it’s common to chain multiple modifiers, stacked vertically.

## When creating a custom SwiftUI view, where do you declare the view’s layout?
Custom views implement the body property, which is a requirement of the View protocol.

## Create the list of landmarks
When you use SwiftUI’s List type, you can display a platform-specific list of views. The elements of the list can be static, like the child views of the stacks you’ve created so far, or dynamically generated. You can even mix static and dynamically generated views.

## Make the list dynamic

Lists work with identifiable data. You can make your data identifiable in one of two ways: 
* by passing along with your data a key path to a property that uniquely identifies each element, or
* by making your data type conform to the **Identifiable protocol**.

### You can create a List of views from a collection of Identifiable elements. What approach do you use to adapt a collection of elements that don’t conform to the Identifiable protocol?
Passing a key path along with the data to List(_:id:).
Pass the key path to a uniquely identifying property for your collection’s elements as the second parameter when creating a List.

## Set up navigation between list and detail
You add navigation capabilities to a list by embedding it in a **NavigationSplitView**, and then nesting each row in a **NavigationLink** to set up a transtition to a destination view.

## In addition to List, which of these types presents a dynamic list of views from a collection?
Place a ForEach instance inside a List or other container type to create a dynamic list.

## Use observation for storage
To prepare for the user to control which particular landmarks are favorites, you’ll first store the landmark data using the Observable() macro.
With Observation, a view in SwiftUI can support data changes without using property wrappers or bindings. SwiftUI watches for any observable property changes that could affect a view, and displays the correct version of the view after a change.


## The @Environment attribute.
You use this attribute in views that are lower down in the view hierarchy to receive data from views that are higher up.

## Passes data downward in the view hierarchy?
## The environment(_:) modifier.
You apply this modifier so that views further down in the view hierarchy can read data objects passed down through the environment.
