#include "CalculationsOperator.h"
#include <QString>

CalculationsOperator::CalculationsOperator(QObject *parent)
    : QObject{parent}
{

}

void CalculationsOperator::onAddOperation(QString value)
{
    int val = 0;
    val = value.toInt();
    sum += val;
}

QString CalculationsOperator::getSum()
{
    return QString::number(sum);
}

void CalculationsOperator::onEqualOperation()
{
    emit operationDone();
}
