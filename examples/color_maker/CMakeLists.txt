set(PROJECT_SOURCES
        main.cpp ColorMaker.cc
        qml.qrc)

qt_add_executable(color_maker
        MANUAL_FINALIZATION
        ${PROJECT_SOURCES})

target_link_libraries(color_maker
        PRIVATE Qt${QT_VERSION_MAJOR}::Core Qt${QT_VERSION_MAJOR}::Quick)

qt_import_qml_plugins(color_maker)
qt_finalize_executable(color_maker)
