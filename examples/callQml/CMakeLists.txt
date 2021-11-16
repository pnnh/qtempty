set(PROJECT_SOURCES
        main.cpp changeColor.cc
        qml.qrc)

qt_add_executable(callQml
        MANUAL_FINALIZATION
        ${PROJECT_SOURCES})

target_link_libraries(callQml
        PRIVATE Qt${QT_VERSION_MAJOR}::Core Qt${QT_VERSION_MAJOR}::Quick)

qt_import_qml_plugins(callQml)
qt_finalize_executable(callQml)
