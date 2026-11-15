cmake_minimum_required(VERSION 3.19)
project(KDAB_09_QVariant LANGUAGES CXX)

find_package(Qt6 6.5 REQUIRED COMPONENTS Core Widgets)

qt_standard_project_setup()

qt_add_executable(KDAB_09_QVariant
    WIN32 MACOSX_BUNDLE
    main.cpp


)

target_link_libraries(KDAB_09_QVariant
    PRIVATE
        Qt::Core
        Qt::Widgets
)

install(TARGETS KDAB_09_QVariant
    BUNDLE  DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
)

qt_generate_deploy_app_script(
    TARGET KDAB_09_QVariant
    OUTPUT_SCRIPT deploy_script
    NO_UNSUPPORTED_PLATFORM_ERROR
)
install(SCRIPT ${deploy_script})
