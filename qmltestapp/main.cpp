#include <QGuiApplication>
#include <QQmlApplicationEngine>


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QString mainQmlPath = "://main.qml";
    engine.load(mainQmlPath);

    return app.exec();
}
