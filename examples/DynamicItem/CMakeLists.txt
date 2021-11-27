set(PROJECT_SOURCES main.cpp qml.qrc)

set(ExampleName DynamicItem)

qt_add_executable(${ExampleName} MANUAL_FINALIZATION ${PROJECT_SOURCES})

target_link_libraries(${ExampleName}
        PRIVATE Qt${QT_VERSION_MAJOR}::Core Qt${QT_VERSION_MAJOR}::Quick)

qt_import_qml_plugins(${ExampleName})
qt_finalize_executable(${ExampleName})
