-- A project defines one build target
project "minko-examples"
   kind "ConsoleApp"
   language "C++"
   files { "**.hpp", "**.cpp" }
   includedirs { "src", "../framework/src" }
   targetdir "bin"

   configuration "Debug"
      defines { "DEBUG" }
      flags { "Symbols" }
      links { "GL", "GLU", "glut", "minko-framework" }
      buildoptions "-std=c++0x"
      linkoptions "-std=c++0x"

   configuration "Release"
      defines { "NDEBUG" }
      flags { "Optimize" }
      links { "GL", "GLU", "glut", "minko-framework" }
      buildoptions "-std=c++0x"
      linkoptions "-std=c++0x"

