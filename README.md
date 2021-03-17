<p align="center">
	<a href="https://github.com/tenhobi/effective_dart"><img src="https://img.shields.io/badge/style-effective_dart-40c4ff.svg" alt="Effective Dart Badge"></a>
	<a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/license-MIT-purple.svg" alt="MIT License Badge"></a>
</p>


# Curved Splash Screen
A Splash screen with curved custom bottom sheet and dots indicator within it.
- You can add your custom splash screens according to it's index.
- You can change any color of the items of the bottom sheet.
- You can specify the text of back and skip button and their color.
- All items in the bottom sheet is responsive to the screen size.

<p align="center">
	<img src="https://i.imgur.com/b9oe7sw.png" alt="Image" height="500"/>
	<img src="https://i.imgur.com/9YCGXsO.png" alt="Image" height="500"/>
	<img src="https://i.imgur.com/NMV8ldD.png" alt="Image" height="500"/>	
	

## Usage

```dart
 class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CurvedSplashScreen(
          screensLength: splashContent.length,
          screenBuilder: (index) {
            return SplashContent(
              title: splashContent[index]["title"],
              image: splashContent[index]["image"],
              text: splashContent[index]["text"],
            );
          },
          onSkipButton: () {
            print("Ends");
          }),
    );
  }
}
  ```
  
## Usage Scenarios
- When You like to add Splash or Landing page at the beginning of your application 

## Inspiration
- <a href="https://dribbble.com/shots/15300013-Task-Management-App">Rakib Kowshar</a>


