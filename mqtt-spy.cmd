@echo off

java --module-path %PATH_TO_JAVAFX% --add-modules javafx.fxml,javafx.controls --add-opens javafx.graphics/javafx.scene.text=ALL-UNNAMED --add-opens javafx.graphics/com.sun.javafx.text=ALL-UNNAMED -jar c:\progs\mqtt-spy\1.0.1_beta18\mqtt-spy-1.0.1-beta-b18-jar-with-dependencies.jar