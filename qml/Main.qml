import VPlayApps 1.0
import QtQuick 2.0


App {

  NavigationStack {

    Page {
      title: "My First App"

      AppText {
        text: "Welcome to V-Play"
        anchors.centerIn: parent
      }
    }
  }
}
