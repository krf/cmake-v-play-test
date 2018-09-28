message(STATUS "Found installation prefix: ${_qt5Core_install_prefix}")

find_package(Qt5 CONFIG REQUIRED COMPONENTS WebSockets)

set(target ThirdParty::VPlay)
add_library(${target} STATIC IMPORTED GLOBAL)
set_target_properties(${target} PROPERTIES
    INTERFACE_INCLUDE_DIRECTORIES "${_qt5Core_install_prefix}/include/VPlay"
)
if (MSVC)
    set_target_properties(${target} PROPERTIES
        IMPORTED_LOCATION_RELEASE "${_qt5Core_install_prefix}/lib/VPlay.lib"
        IMPORTED_LOCATION_DEBUG "${_qt5Core_install_prefix}/lib/VPlayd.lib"
        IMPORTED_LINK_INTERFACE_LIBRARIES "Qt5::WebSockets;opengl32"
    )
else()
    set_target_properties(${target} PROPERTIES
        IMPORTED_LOCATION "${_qt5Core_install_prefix}/lib/libVPlay.a"
        IMPORTED_LINK_INTERFACE_LIBRARIES "Qt5::WebSockets;GL;z"
    )
endif()
