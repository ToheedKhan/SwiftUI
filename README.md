# SwiftUI Essentials
## Creating and Combining Views
This tutorial guides you through building Landmarks — an app for discovering and sharing the places you love. You’ll start by building the view that shows a landmark’s details.

To lay out the views, Landmarks uses stacks to combine and layer the image and text view components. To add a map to the view, you’ll include a standard MapKit component. As you refine the view’s design, Xcode provides real-time feedback so you can see how those changes translate into code.

### Notes
You use the @State attribute to establish a source of truth for data in your app that you can modify from more than one view. SwiftUI manages the underlying storage and automatically updates views that depend on the value.

By prefixing a state variable with $, you pass a binding, which is like a reference to the underlying value. When the user interacts with the map, the map updates the region value to match the part of the map that’s currently visible in the user interface.

When you specify only the height parameter, the view automatically sizes to the width of its content. In this case, MapView expands to fill the available space.

## Building Lists and Navigation
With the basic landmark detail view set up, you need to provide a way for users to see the full list of landmarks, and to view the details about each location.

You’ll create views that can show information about any landmark, and dynamically generate a scrolling list that a user can tap to see a detail view for a landmark. To fine-tune the UI, you’ll use Xcode’s canvas to render multiple previews at different device sizes.

### Notes
Adding Codable conformance makes it easier to load data into the structure from the data file.

You mark the property in a Codable structure as private because you’ll use it only to create a public computed property.

Lists work with identifiable data. You can make your data identifiable in one of two ways: by passing along with your data a key path to a property that uniquely identifies each element, or by making your data type conform to the Identifiable protocol.

The Landmark data already has the id property required by Identifiable protocol; you only need to add a property to decode it when reading the data.

ForEach operates on collections the same way as the list, which means you can use it anywhere you can use a child view, such as in stacks, lists, groups, and more. When the elements of your data are simple value types — like the strings you’re using here — you can use \.self as key path to the identifier.

## Handling User Input
In the Landmarks app, a user can flag their favorite places, and filter the list to show just their favorites. To create this feature, you’ll start by adding a switch to the list so users can focus on just their favorites, and then you’ll add a star-shaped button that a user taps to flag a landmark as a favorite.

### Notes
Because you use state properties to hold information that’s specific to a view and its subviews, you always create state as private.

When you make changes to your view’s structure, like adding or modifying a property, you need to manually refresh the canvas.

To give the user control over the list’s filter, you need to add a control that can alter the value of showFavoritesOnly. You do this by passing a binding to a toggle control.

A binding acts as a reference to a mutable state. When a user taps the toggle from off to on, and off again, the control uses the binding to update the view’s state accordingly.

You use the $ prefix to access a binding to a state variable, or one of its properties.

To combine static and dynamic views in a list, or to combine two or more different groups of dynamic views, use the ForEach type instead of passing your collection of data to List.

To prepare for the user to control which particular landmarks are favorites, you’ll first store the landmark data in an observable object.

An observable object is a custom object for your data that can be bound to a view from storage in SwiftUI’s environment. SwiftUI watches for any changes to observable objects that could affect a view, and displays the correct version of the view after a change.

An observable object needs to publish any changes to its data using the @Published keyword, so that its subscribers can pick up the change.

The modelData property gets its value automatically, as long as the environmentObject(_:) modifier has been applied to a parent.

Use the **@StateObject** attribute to initialize a model object for a given property only once during the life time of the app. This is true when you use the attribute in an app instance, as shown here, as well as when you use it in a view.

Because you use **@Binding**, changes made inside this view propagate back to the data source.
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
## What’s the role of a binding?

It’s a value and a way to change that value.
A binding controls the storage for a value, so you can pass data around to different views that need to read or write it.

## Which is the correct way to create state for a view?
@State private var showFavoritesOnly = false
Use the @State property wrapper to mark a value as state, declare the property as private, and give it a default value.
