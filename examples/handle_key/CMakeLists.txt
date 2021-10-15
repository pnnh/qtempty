set(PROJECT_SOURCES
        main.cpp
        qml.qrc)

qt_add_executable(handle_key
        MANUAL_FINALIZATION
        ${PROJECT_SOURCES})

target_link_libraries(handle_key
        PRIVATE Qt${QT_VERSION_MAJOR}::Core Qt${QT_VERSION_MAJOR}::Quick)

qt_import_qml_plugins(handle_key)
qt_finalize_executable(handle_key)
