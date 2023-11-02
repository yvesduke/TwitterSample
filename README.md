# TwitterApp

#### Intro :

This a basic app that display a list of static tweets. tweets home page consist of User details and tweets details including 
a tweet, replies, likes,....

#### Quick start :

Xcode Version 14.3.1
iOS Deployment Target 16.4

Launch the application using either a physical device or a simulator. Upon launching, 
you will be presented with a list of tweets with their essential information including the user image and username. 
You can scrolling left or right to either view a tweet image or tweet video 

#### Status :

- The application presently employs SwiftUI to craft its user interface. It has been constructed following
the MVVM architecture and incorporates Test Cases. Additionally,
the app's viewModel reads a static json data and decodes the data using JSONDecoder then makes it avaible to the view

- To ensure compatibility, the app accommodates various iOS screen sizes and is designed to be compatible with iOS 13 and subsequent versions.

- Unit tests for the viewModel layer have been done using XCTest.

- The app uses image Caching mechanism to optimise performance


#### What's included :

- Model: The model serves as the core representation of an application's data and its underlying business logic. Through this model, we can effectively manage and uphold the application's crucial data. This data is sourced as a response retrieved from an API.

- ViewModel: Responsible for both exhibiting data to the user and managing their interactions, the ViewModel assumes a pivotal role in the user experience.

- View: Within this layer, the user interface is comprised of a videoView, ImageView, TweetView collectively forming the app's visual elements.

- Caching: This layer is dedicated to optimising app performance by ensuring that images are downloaded only once, subsequently minimising redundant data fetching.

#### Recommendations for future features and improvements :

- Coordinator pattern to further separate navigation related logic
  
- dependancy injection

- Accessibility: Semantic and visual accommodation for Motor Impaired User, Visual Impaired users, voice over users, Motion Impaired users,  Colour Blinded User and Hearing Impaired users

- Local storage such as  Core Data to save and fetch data saved on the database for offline capabilities.  We can also store secret keys and tokens in keychain and apply encryption to them

- Use of Generics

- UITest and BDD Testing

#### Screen shots :

<img width="355" alt="Screenshot 2023-11-02 at 18 42 54" src="https://github.com/yvesduke/TwitterSample/assets/8191486/216d5c04-136c-459b-8a3c-c66b137d8b36">

