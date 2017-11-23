# Rodeo

![Platform](https://img.shields.io/badge/platforms-iOS%208.0+-333333.svg) [![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

Easy to instantiate UIViewController from Storyboard.

## Requirements

- iOS 8.0+
- Xcode 9

## Usage

Make sure your Storyboard file name is the same string without `ViewController`, e.g. MainViewController -> Main.storyboard

Set `Storyboard ID` to same as the your ViewController class name.

![2017-11-23 18 16 49](https://user-images.githubusercontent.com/2027132/33165577-b1e86e90-d07a-11e7-9d79-6b246c2fae3f.png)

Import Rodeo framework at your AppDelegate.

![2017-11-23 18 04 14](https://user-images.githubusercontent.com/2027132/33165063-cad0aca8-d078-11e7-9ab2-c5673d8dfb86.png)

Instantiate your ViewController with explicit type declaration.

![2017-11-23 18 08 26](https://user-images.githubusercontent.com/2027132/33165227-5cefd5e6-d079-11e7-8414-e539f42294ec.png)
