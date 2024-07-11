# test_firebase

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

============================================================

https://www.youtube.com/watch?v=nqAIz7Pkbp0 

# Crear un materialapp desde cero. 
- Cambiaremos la id del build.gradle y resto del documento 

# instalar el paquete change_app_package_name
Instalo desde la terminal con:
    - flutter pub add -d change_app_package_name (con -d se instala en dependencias de desarrollo)
    - Tengo que hacer un flutter pub outdated
    - flutter pub get y flutter pub outdated para actualizar dependencias
    - dart run change_app_package_name:main com.agrgal.testfirebase
    - Y así le cambio el nombre a la aplicación. Ver más en [change_name](https://pub.dev/packages/change_app_package_name) 

# Comprobar
Comprobar que en android>>app>>src>>kotlin>>MainActivity.kt se ha cambiado el nombre, por ejemplo.
La versión mínima es flutter.minSdkVersion he averiguado qeu es al 21, que la pone él manualmente. No lo cambio porque es esa. 21 se necesita para FireBase y para Messages la 19. 

# En el proyecto de FireBase le doy a 
- Agregar tu proyecto a la App . Botón FLUTTER.
- Instalar FireBase CLI, según las instrucciones de https://firebase.google.com/docs/cli?hl=es&authuser=1#mac-linux-auto-script
    - curl -sL https://firebase.tools | bash
- Hacer **firebase** login desde el terminal. Se abre una página en el navegador y te autentificas con la cuenta de google. Puedes hacer **firebase projects:list** para comprobar y ver tus proyectos.

# Instalar firebase_core
- Primero hacer dart pub global activate flutterfire_cli
    - Variable export --> export PATH="$PATH":"$HOME/.pub-cache/bin"
- Hacemos un "flutterfire configure" (dentro de la carpeta del proyecto y siempre que se cambie el ID)
- Elegimos el proyecto (flechas arriba y abajo)
- Seleccionamos y deseleccionamos plataformas (espacio, y flechas).
- ¡¡Dios !! ALT+Z en el terminal para poder alargar el ancho de la ventana del terminal... 
- Escribo el nombre que seleccioné antes para el ID: **com.agrgal.testfirebase**

# Crear el fichero firebase_options
- Instalamos **flutter pub add firebase_core** y actualizamos con flutter pub outdated
- Se puede comprobar que se quitan los errores. 

- Da un error al hacer la implementación en el móvil ANDROID. Dentro de la carpeta android buscar **settings.gradle** y cambiar la versión del kotlin a 1.8.0 **id "org.jetbrains.kotlin.android" version "1.8.0" apply false**

# Vamos al código
https://youtu.be/3lJiF0tF6Fg?si=N6i2P8_E0bV9hRHU






    