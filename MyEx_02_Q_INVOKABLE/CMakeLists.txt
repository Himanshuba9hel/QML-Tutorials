cmake_minimum_required(VERSION 3.16)

project(MyEx_02_Q_INVOKABLE VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5.3)

if (EXISTS "${CMAKE_CURRENT_LIST_DIR}/importedcontent/CMakeLists.txt")
    add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/importedcontent)
endif()

qt_add_executable(appMyEx_02_Q_INVOKABLE
    main.cpp
)

qt_add_qml_module(appMyEx_02_Q_INVOKABLE
    URI MyEx_02_Q_INVOKABLE
    QML_FILES
        Main.qml
    SOURCES
        qproperty.h
        qproperty.cpp
)

set_target_properties(appMyEx_02_Q_INVOKABLE PROPERTIES
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appMyEx_02_Q_INVOKABLE
    PRIVATE Qt6::Quick
)

install(TARGETS appMyEx_02_Q_INVOKABLE
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)