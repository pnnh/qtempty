set(PROJECT_SOURCES
        main.cpp
        qml.qrc)

qt_add_executable(color_block
        MANUAL_FINALIZATION
        ${PROJECT_SOURCES})

target_link_libraries(color_block
        PRIVATE Qt${QT_VERSION_MAJOR}::Core Qt${QT_VERSION_MAJOR}::Quick)

qt_import_qml_plugins(color_block)
qt_finalize_executable(color_block)
