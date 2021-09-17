#include <QDebug>
#include "voronoi.h"

Voronoi::Voronoi(QObject *parent) : QObject(parent)
{

}

void Voronoi::test()
{
    qDebug()<<"hello form c++";
}

double Voronoi::add(double x, double y)
{
    return x+y;
}

const std::string charsNumber = "0123456789";

QString Voronoi::random(QString text) {
  QString qmltext = text;
  qmltext != nullptr ? qDebug() << qmltext
                  : qDebug() << "text = null";



  return qmltext;
}
