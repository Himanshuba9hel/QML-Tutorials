cmake_minimum_required(VERSION 3.19)
project(KDAB_06_Connect_Overloaded_Signal_Slot LANGUAGES CXX)

find_package(Qt6 6.5 REQUIRED COMPONENTS Core Widgets)

qt_standard_project_setup()

qt_add_executable(KDAB_06_Connect_Overloaded_Signal_Slot
    WIN32 MACOSX_BUNDLE
    main.cpp


)

target_link_libraries(KDAB_06_Connect_Overloaded_Signal_Slot
    PRIVATE
        Qt::Core
        Qt::Widgets
)

install(TARGETS KDAB_06_Connect_Overloaded_Signal_Slot
    BUNDLE  DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
)

qt_generate_deploy_app_script(
    TARGET KDAB_06_Connect_Overloaded_Signal_Slot
    OUTPUT_SCRIPT deploy_script
    NO_UNSUPPORTED_PLATFORM_ERROR
)
install(SCRIPT ${deploy_script})
