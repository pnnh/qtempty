set(PROJECT_SOURCES
        main.cpp imageProcessor.cc
        qml.qrc)

qt_add_executable(imageProcessor
        MANUAL_FINALIZATION
        ${PROJECT_SOURCES})

target_link_libraries(imageProcessor
        PRIVATE Qt${QT_VERSION_MAJOR}::Core Qt${QT_VERSION_MAJOR}::Quick)

qt_import_qml_plugins(imageProcessor)
qt_finalize_executable(imageProcessor)
