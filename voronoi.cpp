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
