# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/Users/juergen/esp/master/esp-idf/components/bootloader/subproject")
  file(MAKE_DIRECTORY "/Users/juergen/esp/master/esp-idf/components/bootloader/subproject")
endif()
file(MAKE_DIRECTORY
  "/Users/juergen/ESP-IDF/Projects/esp-idf-i2c-scanner/build/bootloader"
  "/Users/juergen/ESP-IDF/Projects/esp-idf-i2c-scanner/build/bootloader-prefix"
  "/Users/juergen/ESP-IDF/Projects/esp-idf-i2c-scanner/build/bootloader-prefix/tmp"
  "/Users/juergen/ESP-IDF/Projects/esp-idf-i2c-scanner/build/bootloader-prefix/src/bootloader-stamp"
  "/Users/juergen/ESP-IDF/Projects/esp-idf-i2c-scanner/build/bootloader-prefix/src"
  "/Users/juergen/ESP-IDF/Projects/esp-idf-i2c-scanner/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/juergen/ESP-IDF/Projects/esp-idf-i2c-scanner/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/juergen/ESP-IDF/Projects/esp-idf-i2c-scanner/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
