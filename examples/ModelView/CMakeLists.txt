set(PROJECT_SOURCES main.cpp
        videoListModel.cc videoListModel.h
        qml.qrc)

qt_add_executable(ModelView
        MANUAL_FINALIZATION
        ${PROJECT_SOURCES})

target_link_libraries(ModelView
        PRIVATE Qt${QT_VERSION_MAJOR}::Core Qt${QT_VERSION_MAJOR}::Quick)

qt_import_qml_plugins(ModelView)
qt_finalize_executable(ModelView)
