set(CMAKE_C_COMPILER "clang-cl")
set(CMAKE_CXX_COMPILER "clang-cl")
set(CMAKE_MT "llvm-mt")

set(CMAKE_SYSTEM_NAME Windows)
set(CMAKE_SYSTEM_PROCESSOR x86_64)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wno-unused-command-line-argument -fuse-ld=lld-link /I/opt/xwin/crt/include /I/opt/xwin/sdk/include/ucrt /I/opt/xwin/sdk/include/um /I/opt/xwin/sdk/include/shared")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-unused-command-line-argument -fuse-ld=lld-link /I/opt/xwin/crt/include /I/opt/xwin/sdk/include/ucrt /I/opt/xwin/sdk/include/um /I/opt/xwin/sdk/include/shared")

set(XWIN_LINKER_FLAGS "/LIBPATH:/opt/xwin/crt/lib/x86_64 /LIBPATH:/opt/xwin/sdk/lib/um/x86_64 /LIBPATH:/opt/xwin/sdk/lib/ucrt/x86_64")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} ${XWIN_LINKER_FLAGS}")
set(CMAKE_STATIC_LINKER_FLAGS "${CMAKE_STATIC_LINKER_FLAGS} ${XWIN_LINKER_FLAGS}")
set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} ${XWIN_LINKER_FLAGS}")

#set(CMAKE_MSVC_RUNTIME_LIBRARY MultiThreaded)
#set(CMAKE_CXX_FLAGS_DEBUG_INIT "")
#set(CMAKE_C_FLAGS_DEBUG_INIT "")
