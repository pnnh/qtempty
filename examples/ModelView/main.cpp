#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QKeyEvent>

int main(int argc, char *argv[]) {
  QGuiApplication app(argc, argv);

  QQmlApplicationEngine engine;
  const QUrl url(QStringLiteral("qrc:/phone_list_header.qml"));

  engine.load(url);

  if (engine.rootObjects().isEmpty())
    return -1;

  return app.exec();
}
