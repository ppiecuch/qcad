#ifndef QTSCRIPTSHELL_QSPLITTER_H
#define QTSCRIPTSHELL_QSPLITTER_H

#include <qsplitter.h>

#include <QtScript/qscriptvalue.h>
#include <__package_shared.h>

class QtScriptShell_QSplitter : public QSplitter
{
public:
    QtScriptShell_QSplitter(QWidget*  parent = 0);
    QtScriptShell_QSplitter(Qt::Orientation  arg__1, QWidget*  parent = 0);
    ~QtScriptShell_QSplitter();

    void actionEvent(QActionEvent*  arg__1);
    void changeEvent(QEvent*  arg__1);
    void childEvent(QChildEvent*  arg__1);
    void closeEvent(QCloseEvent*  arg__1);
    void contextMenuEvent(QContextMenuEvent*  arg__1);
    QSplitterHandle*  createHandle();
    void customEvent(QEvent*  arg__1);
    int  devType() const;
    void dragEnterEvent(QDragEnterEvent*  arg__1);
    void dragLeaveEvent(QDragLeaveEvent*  arg__1);
    void dragMoveEvent(QDragMoveEvent*  arg__1);
    void dropEvent(QDropEvent*  arg__1);
    void enterEvent(QEvent*  arg__1);
    bool  event(QEvent*  arg__1);
    bool  eventFilter(QObject*  arg__1, QEvent*  arg__2);
    void focusInEvent(QFocusEvent*  arg__1);
    bool  focusNextPrevChild(bool  next);
    void focusOutEvent(QFocusEvent*  arg__1);
    bool  hasHeightForWidth() const;
    int  heightForWidth(int  arg__1) const;
    void hideEvent(QHideEvent*  arg__1);
    void initPainter(QPainter*  painter) const;
    void inputMethodEvent(QInputMethodEvent*  arg__1);
    QVariant  inputMethodQuery(Qt::InputMethodQuery  arg__1) const;
    void keyPressEvent(QKeyEvent*  arg__1);
    void keyReleaseEvent(QKeyEvent*  arg__1);
    void leaveEvent(QEvent*  arg__1);
    int  metric(QPaintDevice::PaintDeviceMetric  arg__1) const;
    void mouseDoubleClickEvent(QMouseEvent*  arg__1);
    void mouseMoveEvent(QMouseEvent*  arg__1);
    void mousePressEvent(QMouseEvent*  arg__1);
    void mouseReleaseEvent(QMouseEvent*  arg__1);
    void moveEvent(QMoveEvent*  arg__1);
    bool  nativeEvent(const QByteArray&  eventType, void*  message, long*  result);
    QPaintEngine*  paintEngine() const;
    void paintEvent(QPaintEvent*  arg__1);
    QPaintDevice*  redirected(QPoint*  offset) const;
    void resizeEvent(QResizeEvent*  arg__1);
    QPainter*  sharedPainter() const;
    void showEvent(QShowEvent*  arg__1);
    void tabletEvent(QTabletEvent*  arg__1);
    void timerEvent(QTimerEvent*  arg__1);
    void wheelEvent(QWheelEvent*  arg__1);

    QScriptValue __qtscript_self;
};

#endif // QTSCRIPTSHELL_QSPLITTER_H
