cmake_minimum_required(VERSION 3.19)
project(KDAB_07_Connect_Function_Pointers LANGUAGES CXX)

find_package(Qt6 6.5 REQUIRED COMPONENTS Core Widgets)

qt_standard_project_setup()

qt_add_executable(KDAB_07_Connect_Function_Pointers
    WIN32 MACOSX_BUNDLE
    main.cpp


)

target_link_libraries(KDAB_07_Connect_Function_Pointers
    PRIVATE
        Qt::Core
        Qt::Widgets
)

install(TARGETS KDAB_07_Connect_Function_Pointers
    BUNDLE  DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
)

qt_generate_deploy_app_script(
    TARGET KDAB_07_Connect_Function_Pointers
    OUTPUT_SCRIPT deploy_script
    NO_UNSUPPORTED_PLATFORM_ERROR
)
install(SCRIPT ${deploy_script})
