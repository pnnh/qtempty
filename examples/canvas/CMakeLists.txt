set(PROJECT_SOURCES main.cpp qml.qrc)

qt_add_executable(canvas
        MANUAL_FINALIZATION
        ${PROJECT_SOURCES})

target_link_libraries(canvas
        PRIVATE Qt${QT_VERSION_MAJOR}::Core Qt${QT_VERSION_MAJOR}::Quick)

qt_import_qml_plugins(canvas)
qt_finalize_executable(canvas)
