set(PROJECT_SOURCES
        main.cpp CppObject.cc
        qml.qrc)

qt_add_executable(cppobject
        MANUAL_FINALIZATION
        ${PROJECT_SOURCES})

target_link_libraries(cppobject
        PRIVATE Qt${QT_VERSION_MAJOR}::Core Qt${QT_VERSION_MAJOR}::Quick)

qt_import_qml_plugins(cppobject)
qt_finalize_executable(cppobject)
