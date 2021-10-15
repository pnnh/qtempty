set(PROJECT_SOURCES
        main.cpp
        qml.qrc)

qt_add_executable(repeater
        MANUAL_FINALIZATION
        ${PROJECT_SOURCES})

target_link_libraries(repeater
        PRIVATE Qt${QT_VERSION_MAJOR}::Core Qt${QT_VERSION_MAJOR}::Quick)

qt_import_qml_plugins(repeater)
qt_finalize_executable(repeater)
