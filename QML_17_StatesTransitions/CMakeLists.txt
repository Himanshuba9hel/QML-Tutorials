cmake_minimum_required(VERSION 3.16)

project(QML_17_StatesTransitions VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)


qt_add_executable(appQML_17_StatesTransitions
    main.cpp
)

qt_add_qml_module(appQML_17_StatesTransitions
    URI QML_17_StatesTransitions
    VERSION 1.0
    QML_FILES
        Main.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appQML_17_StatesTransitions PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appQML_17_StatesTransitions
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appQML_17_StatesTransitions
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appQML_17_StatesTransitions
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
