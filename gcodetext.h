#ifndef GCODETEXT_H
#define GCODETEXT_H



#include <QDebug>


#include <QObject>
#include <QTextDocument>
#include <QTextStream>
#include "errorhandler.h"

class GCodeText : public QObject
{
    Q_OBJECT

private:
    bool GCodeDocumentSet;
    QTextDocument* GCodeDocument;
    ErrorHandler* err;

public:
    ~GCodeText();
    explicit GCodeText(QObject *parent = 0);
    void setDocument(QTextDocument *document);
    void setErrorHandler(ErrorHandler *handler);
    QTextDocument* document();
    void scale(float xScale, float yScale);
    void offset(float xOffset, float yOffset, bool units);
    void toAbsolute();
    void toIncremental();
    void addLineNumbers();
    void removeLineNumbers();
    int getUnits();

signals:

public slots:

};

#endif // GCODETEXT_H