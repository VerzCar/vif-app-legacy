# vote_your_face

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Packages

Generate new packages

``flutter create --template=package package_name``

## Routes

Generate routes

``flutter packages pub run build_runner build``

## Configure Amplify

```cd path/to/your/project```

``amplify init``

Für iOS öffnen Sie das Podfile (ios > Podfile) und aktualisieren Sie die Plattform auf 11.0 oder höher:

``platform :ios, '11.0'``

### Add Amplify Auth

``amplify add auth``

Wie aus der obigen Ausgabe hervorgeht, wurde die Ressource nur lokal hinzugefügt. 
Um unser Backend mit den Änderungen, die wir lokal vorgenommen haben, zu konfigurieren, müssen wir diesen Befehl ausführen:

``amplify push``

