#ifndef VORONOI_H
#define VORONOI_H

#include <QObject>

class Voronoi : public QObject
{
    Q_OBJECT
public:
    explicit Voronoi(QObject *parent = nullptr);

    Q_INVOKABLE void test();
    Q_INVOKABLE double add(double x, double y);

signals:

};

#endif // VORONOI_H
