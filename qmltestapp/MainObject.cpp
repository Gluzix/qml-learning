#include "MainObject.h"
#include <QQuickView>
#include <QQmlContext>

MainObject::MainObject(QObject *parent)
    : QObject{parent}
{
    engine.rootContext()->setContextProperty("calculationsOperator", &calculationsOperator);
    engine.load(mainQmlPath);
}
