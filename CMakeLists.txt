cmake_minimum_required(VERSION 3.5)
project(kella)

set(CMAKE_EXPORT_COMPILE_COMMANDS 1)

include(CheckCXXCompilerFlag)
CHECK_CXX_COMPILER_FLAG("-std=c++14" COMPILER_SUPPORTS_CXX14)
CHECK_CXX_COMPILER_FLAG("-std=c++0x" COMPILER_SUPPORTS_CXX0X)
if(COMPILER_SUPPORTS_CXX11)
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=c14 -pthread ")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17 -pthread ")
elseif(COMPILER_SUPPORTS_CXX0X)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++0x")
endif()

set(CMAKE_CXX_FLAGS "${C_CXX_FLAGS_DEFAULT} ${CMAKE_CXX_FLAGS} --std=c++17 ")



#set the default path for built executables to the "bin" directory
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/build)

find_package(Eigen3 REQUIRED)



include_directories( SYSTEM
  	${CMAKE_CURRENT_SOURCE_DIR}
  	${PROJECT_SOURCE_DIR}/include
  	${PROJECT_SOURCE_DIR}/modules/gui/include
  	${PROJECT_SOURCE_DIR}/modules/esp32/include
  	${PROJECT_SOURCE_DIR}/modules/joystick/include
  	
  	${GTKMM_INCLUDE_DIRS}

)


find_package (PkgConfig REQUIRED)
find_package(Threads)
pkg_search_module(GTKMM REQUIRED gtkmm-3.0)

include_directories(SYSTEM
  ${GTKMM_INCLUDE_DIRS}
  ${SIGCPP_INCLUDE_DIRS}
  ${X11_INCLUDE_DIRS})

add_executable( app 

		src/app.cpp
		src/message.cpp
		src/parameters.cpp
		
		modules/gui/src/gui.cpp
		modules/gui/src/gui_dispatcher.cpp
		
		modules/gui/src/status_button.cpp
		modules/gui/src/base_widget.cpp
		
		modules/esp32/src/esp32.cpp
		modules/joystick/src/joystick.cpp
		modules/joystick/src/joystick.cpp
		modules/joystick/src/joystick_linux.cpp
		
		
		) 

target_link_libraries(app ${GTKMM_LIBRARIES} 
			   ${CMAKE_THREAD_LIBS_INIT}
			   serial)



