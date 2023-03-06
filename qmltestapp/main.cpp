#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "MainObject.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    MainObject mainObject;

    return app.exec();
}
