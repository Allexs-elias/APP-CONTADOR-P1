# App Contador - Actividad 02

Código de la actividad del PDF: contador con StatefulWidget y setState,
botones para sumar y restar, reinicio en la barra superior, texto Click/Clicks,
tema verde, botones redondos y separación de 15 píxeles.
El contador permite negativos, como el decremento mostrado en la guía.

## Abrir y ejecutar en Windows

1. Extrae el ZIP completo. No lo ejecutes dentro del archivo comprimido.
2. Necesitas Flutter instalado y disponible en la terminal (`flutter --version`).
3. Abre la carpeta app_contador en Visual Studio Code.
4. En Terminal > Nueva terminal, ejecuta:

   flutter create --project-name app_contador --platforms=android,web .
   flutter pub get
   flutter run -d chrome

El primer comando genera las carpetas de plataforma que necesita tu instalación
de Flutter; conserva los archivos existentes de lib y test. Este ZIP contiene
el código fuente, no un APK ni un ejecutable compilado.

También puedes hacer doble clic en PREPARAR_WINDOWS.bat para generar las
carpetas de plataforma y descargar las dependencias. Después abre la terminal
del proyecto y ejecuta `flutter run -d chrome`.

Para Android: inicia un emulador o conecta un teléfono con depuración USB,
ejecuta `flutter devices` y después `flutter run -d ID_DEL_DISPOSITIVO`,
sustituyendo el identificador por el de tu dispositivo.

## Si ya tienes el proyecto Hola Mundo

Copia el contenido de lib de este ZIP a lib de tu proyecto, reemplazando
main.dart y conservando la carpeta presentation. No necesitas cambiar el nombre
de tu proyecto ni usar el archivo de prueba de este ZIP en otro paquete.

## Archivos principales

- lib/main.dart: inicio de la app y tema de colores.
- lib/presentation/screens/counter/counter_screen.dart: pantalla y contador.
- test/widget_test.dart: prueba de suma, resta, reinicio y texto singular/plural.

## Comprobar el proyecto

Una vez preparado, ejecuta:

   flutter analyze
   flutter test

Prueba manual: empieza en 0, pulsa +1 dos veces (2), pulsa -1 (1) y pulsa
reiniciar (0). En 1 debe decir Click y en los demás valores Clicks.

No se ejecutaron Flutter ni las pruebas durante la preparación del ZIP porque
el entorno de creación no tiene instalado el SDK de Flutter.
