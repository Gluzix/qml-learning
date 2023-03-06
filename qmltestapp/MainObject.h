#pragma once

#include <QObject>
#include <QQmlApplicationEngine>
#include "CalculationsOperator.h"

class MainObject : public QObject
{
    Q_OBJECT
public:
    explicit MainObject(QObject *parent = nullptr);

private:
    QQmlApplicationEngine engine;
    CalculationsOperator calculationsOperator;
    const QString mainQmlPath{"://main.qml"};
};
