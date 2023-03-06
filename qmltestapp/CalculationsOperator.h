#pragma once

#include <QObject>

class CalculationsOperator : public QObject
{
    Q_OBJECT
public:
    explicit CalculationsOperator(QObject *parent = nullptr);

public slots:
    Q_INVOKABLE void onAddOperation(QString value);
    Q_INVOKABLE QString getSum();
    Q_INVOKABLE void onEqualOperation();

signals:
    void operationDone();

private:
    double sum{0};
};

