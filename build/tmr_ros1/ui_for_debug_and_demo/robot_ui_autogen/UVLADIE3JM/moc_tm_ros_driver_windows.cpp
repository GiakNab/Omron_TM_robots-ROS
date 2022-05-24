/****************************************************************************
** Meta object code from reading C++ file 'tm_ros_driver_windows.hpp'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../src/tmr_ros1/ui_for_debug_and_demo/src/tm_ros_driver_windows.hpp"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'tm_ros_driver_windows.hpp' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_RosPage_t {
    QByteArrayData data[10];
    char stringdata0[164];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_RosPage_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_RosPage_t qt_meta_stringdata_RosPage = {
    {
QT_MOC_LITERAL(0, 0, 7), // "RosPage"
QT_MOC_LITERAL(1, 8, 24), // "send_ui_feed_back_status"
QT_MOC_LITERAL(2, 33, 0), // ""
QT_MOC_LITERAL(3, 34, 22), // "tm_msgs::FeedbackState"
QT_MOC_LITERAL(4, 57, 3), // "msg"
QT_MOC_LITERAL(5, 61, 15), // "send_to_ui_list"
QT_MOC_LITERAL(6, 77, 11), // "std::string"
QT_MOC_LITERAL(7, 89, 22), // "send_sct_as_re_connect"
QT_MOC_LITERAL(8, 112, 22), // "send_svr_as_re_connect"
QT_MOC_LITERAL(9, 135, 28) // "change_control_box_io_button"

    },
    "RosPage\0send_ui_feed_back_status\0\0"
    "tm_msgs::FeedbackState\0msg\0send_to_ui_list\0"
    "std::string\0send_sct_as_re_connect\0"
    "send_svr_as_re_connect\0"
    "change_control_box_io_button"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_RosPage[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       5,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       2,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   39,    2, 0x06 /* Public */,
       5,    1,   42,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       7,    0,   45,    2, 0x08 /* Private */,
       8,    0,   46,    2, 0x08 /* Private */,
       9,    0,   47,    2, 0x08 /* Private */,

 // signals: parameters
    QMetaType::Void, 0x80000000 | 3,    4,
    QMetaType::Void, 0x80000000 | 6,    2,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void RosPage::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        RosPage *_t = static_cast<RosPage *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->send_ui_feed_back_status((*reinterpret_cast< tm_msgs::FeedbackState(*)>(_a[1]))); break;
        case 1: _t->send_to_ui_list((*reinterpret_cast< std::string(*)>(_a[1]))); break;
        case 2: _t->send_sct_as_re_connect(); break;
        case 3: _t->send_svr_as_re_connect(); break;
        case 4: _t->change_control_box_io_button(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            typedef void (RosPage::*_t)(tm_msgs::FeedbackState );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&RosPage::send_ui_feed_back_status)) {
                *result = 0;
                return;
            }
        }
        {
            typedef void (RosPage::*_t)(std::string );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&RosPage::send_to_ui_list)) {
                *result = 1;
                return;
            }
        }
    }
}

const QMetaObject RosPage::staticMetaObject = {
    { &QThread::staticMetaObject, qt_meta_stringdata_RosPage.data,
      qt_meta_data_RosPage,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *RosPage::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *RosPage::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_RosPage.stringdata0))
        return static_cast<void*>(this);
    return QThread::qt_metacast(_clname);
}

int RosPage::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QThread::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 5)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 5;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 5)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 5;
    }
    return _id;
}

// SIGNAL 0
void RosPage::send_ui_feed_back_status(tm_msgs::FeedbackState _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void RosPage::send_to_ui_list(std::string _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}
struct qt_meta_stringdata_MainWindow_t {
    QByteArrayData data[15];
    char stringdata0[299];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_MainWindow_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_MainWindow_t qt_meta_stringdata_MainWindow = {
    {
QT_MOC_LITERAL(0, 0, 10), // "MainWindow"
QT_MOC_LITERAL(1, 11, 22), // "send_sct_as_re_connect"
QT_MOC_LITERAL(2, 34, 0), // ""
QT_MOC_LITERAL(3, 35, 22), // "send_svr_as_re_connect"
QT_MOC_LITERAL(4, 58, 28), // "change_control_box_io_button"
QT_MOC_LITERAL(5, 87, 24), // "send_ui_feed_back_status"
QT_MOC_LITERAL(6, 112, 22), // "tm_msgs::FeedbackState"
QT_MOC_LITERAL(7, 135, 3), // "msg"
QT_MOC_LITERAL(8, 139, 15), // "send_to_ui_list"
QT_MOC_LITERAL(9, 155, 11), // "std::string"
QT_MOC_LITERAL(10, 167, 31), // "click_set_sct_re_connect_button"
QT_MOC_LITERAL(11, 199, 31), // "click_set_svr_re_connect_button"
QT_MOC_LITERAL(12, 231, 34), // "click_change_control_box_io_b..."
QT_MOC_LITERAL(13, 266, 27), // "click_clear_response_button"
QT_MOC_LITERAL(14, 294, 4) // "quit"

    },
    "MainWindow\0send_sct_as_re_connect\0\0"
    "send_svr_as_re_connect\0"
    "change_control_box_io_button\0"
    "send_ui_feed_back_status\0"
    "tm_msgs::FeedbackState\0msg\0send_to_ui_list\0"
    "std::string\0click_set_sct_re_connect_button\0"
    "click_set_svr_re_connect_button\0"
    "click_change_control_box_io_button\0"
    "click_clear_response_button\0quit"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_MainWindow[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
      10,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       3,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    0,   64,    2, 0x06 /* Public */,
       3,    0,   65,    2, 0x06 /* Public */,
       4,    0,   66,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       5,    1,   67,    2, 0x08 /* Private */,
       8,    1,   70,    2, 0x08 /* Private */,
      10,    0,   73,    2, 0x08 /* Private */,
      11,    0,   74,    2, 0x08 /* Private */,
      12,    0,   75,    2, 0x08 /* Private */,
      13,    0,   76,    2, 0x08 /* Private */,
      14,    0,   77,    2, 0x08 /* Private */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 6,    7,
    QMetaType::Void, 0x80000000 | 9,    2,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void MainWindow::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        MainWindow *_t = static_cast<MainWindow *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->send_sct_as_re_connect(); break;
        case 1: _t->send_svr_as_re_connect(); break;
        case 2: _t->change_control_box_io_button(); break;
        case 3: _t->send_ui_feed_back_status((*reinterpret_cast< tm_msgs::FeedbackState(*)>(_a[1]))); break;
        case 4: _t->send_to_ui_list((*reinterpret_cast< std::string(*)>(_a[1]))); break;
        case 5: _t->click_set_sct_re_connect_button(); break;
        case 6: _t->click_set_svr_re_connect_button(); break;
        case 7: _t->click_change_control_box_io_button(); break;
        case 8: _t->click_clear_response_button(); break;
        case 9: _t->quit(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            typedef void (MainWindow::*_t)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&MainWindow::send_sct_as_re_connect)) {
                *result = 0;
                return;
            }
        }
        {
            typedef void (MainWindow::*_t)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&MainWindow::send_svr_as_re_connect)) {
                *result = 1;
                return;
            }
        }
        {
            typedef void (MainWindow::*_t)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&MainWindow::change_control_box_io_button)) {
                *result = 2;
                return;
            }
        }
    }
}

const QMetaObject MainWindow::staticMetaObject = {
    { &QDialog::staticMetaObject, qt_meta_stringdata_MainWindow.data,
      qt_meta_data_MainWindow,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *MainWindow::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *MainWindow::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_MainWindow.stringdata0))
        return static_cast<void*>(this);
    return QDialog::qt_metacast(_clname);
}

int MainWindow::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QDialog::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 10)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 10;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 10)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 10;
    }
    return _id;
}

// SIGNAL 0
void MainWindow::send_sct_as_re_connect()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}

// SIGNAL 1
void MainWindow::send_svr_as_re_connect()
{
    QMetaObject::activate(this, &staticMetaObject, 1, nullptr);
}

// SIGNAL 2
void MainWindow::change_control_box_io_button()
{
    QMetaObject::activate(this, &staticMetaObject, 2, nullptr);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
