# This file will be configured to contain variables for CPack. These variables
# should be set in the CMake list file of the project before CPack module is
# included. The list of available CPACK_xxx variables and their associated
# documentation may be obtained using
#  cpack --help-variable-list
#
# Some variables are common to all generators (e.g. CPACK_PACKAGE_NAME)
# and some are specific to a generator
# (e.g. CPACK_NSIS_EXTRA_INSTALL_COMMANDS). The generator specific variables
# usually begin with CPACK_<GENNAME>_xxxx.


SET(CPACK_ALL_INSTALL_TYPES "Minimal;Full")
SET(CPACK_BINARY_7Z "")
SET(CPACK_BINARY_BUNDLE "OFF")
SET(CPACK_BINARY_CYGWIN "")
SET(CPACK_BINARY_DEB "OFF")
SET(CPACK_BINARY_DRAGNDROP "OFF")
SET(CPACK_BINARY_IFW "OFF")
SET(CPACK_BINARY_NSIS "OFF")
SET(CPACK_BINARY_OSXX11 "OFF")
SET(CPACK_BINARY_PACKAGEMAKER "OFF")
SET(CPACK_BINARY_PACKAGEMARKER "ON")
SET(CPACK_BINARY_PRODUCTBUILD "OFF")
SET(CPACK_BINARY_RPM "OFF")
SET(CPACK_BINARY_STGZ "OFF")
SET(CPACK_BINARY_STGZ "OFF")
SET(CPACK_BINARY_TBZ2 "OFF")
SET(CPACK_BINARY_TGZ "OFF")
SET(CPACK_BINARY_TGZ "OFF")
SET(CPACK_BINARY_TXZ "OFF")
SET(CPACK_BINARY_TZ "")
SET(CPACK_BINARY_WIX "")
SET(CPACK_BINARY_ZIP "")
SET(CPACK_BUILD_SOURCE_DIRS "/Users/dominikguz/Documents/Masters/S1/ParetoTSP/Src/ParadisEO-2.0/moeo;/Users/dominikguz/Documents/Masters/S1/ParetoTSP/Src/ParadisEO-2.0/build")
SET(CPACK_CMAKE_GENERATOR "Unix Makefiles")
SET(CPACK_COMPONENTS_ALL "libraries;headers;tests;examples;doc")
SET(CPACK_COMPONENTS_ALL_SET_BY_USER "TRUE")
SET(CPACK_COMPONENT_DOC_DESCRIPTION "ParadisEO documentation")
SET(CPACK_COMPONENT_DOC_DISPLAY_NAME "Documentation")
SET(CPACK_COMPONENT_DOC_INSTALL_TYPES "Full")
SET(CPACK_COMPONENT_EXAMPLES_DEPENDS "libraries")
SET(CPACK_COMPONENT_EXAMPLES_DESCRIPTION "Examples and lessons")
SET(CPACK_COMPONENT_EXAMPLES_DISPLAY_NAME "Examples")
SET(CPACK_COMPONENT_EXAMPLES_INSTALL_TYPES "Full")
SET(CPACK_COMPONENT_HEADERS_DEPENDS "libraries")
SET(CPACK_COMPONENT_HEADERS_DESCRIPTION "C++ headers for using ParadisEO")
SET(CPACK_COMPONENT_HEADERS_DISPLAY_NAME "Headers")
SET(CPACK_COMPONENT_HEADERS_INSTALL_TYPES "Minimal;Full")
SET(CPACK_COMPONENT_LIBRARIES_DESCRIPTION "ParadisEO Libraries : EO, MO, MOEO")
SET(CPACK_COMPONENT_LIBRARIES_DISPLAY_NAME "Libraries")
SET(CPACK_COMPONENT_LIBRARIES_INSTALL_TYPES "Minimal;Full")
SET(CPACK_COMPONENT_TESTS_DEPENDS "libraries")
SET(CPACK_COMPONENT_TESTS_DESCRIPTION "Tests")
SET(CPACK_COMPONENT_TESTS_DISPLAY_NAME "Tests")
SET(CPACK_COMPONENT_TESTS_INSTALL_TYPES "Full")
SET(CPACK_COMPONENT_UNSPECIFIED_HIDDEN "TRUE")
SET(CPACK_COMPONENT_UNSPECIFIED_REQUIRED "TRUE")
SET(CPACK_INSTALL_CMAKE_PROJECTS "/Users/dominikguz/Documents/Masters/S1/ParetoTSP/Src/ParadisEO-2.0/build;ParadisEO;ALL;/")
SET(CPACK_INSTALL_PREFIX "/usr/local")
SET(CPACK_MODULE_PATH "")
SET(CPACK_NSIS_DISPLAY_NAME "ParadisEO")
SET(CPACK_NSIS_INSTALLER_ICON_CODE "")
SET(CPACK_NSIS_INSTALLER_MUI_ICON_CODE "")
SET(CPACK_NSIS_INSTALL_ROOT "$PROGRAMFILES")
SET(CPACK_NSIS_PACKAGE_NAME "ParadisEO")
SET(CPACK_OSX_SYSROOT "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.12.sdk")
SET(CPACK_OUTPUT_CONFIG_FILE "/Users/dominikguz/Documents/Masters/S1/ParetoTSP/Src/ParadisEO-2.0/build/CPackConfig.cmake")
SET(CPACK_PACKAGE_CONTACT "paradiseo-help@lists.gforge.inria.fr")
SET(CPACK_PACKAGE_DEFAULT_LOCATION "/")
SET(CPACK_PACKAGE_DESCRIPTION "ParadisEO is a white-box object-oriented framework dedicated to the flexible design of metaheuristics. This template-based, ANSI-C++ compliant computation library is portable across both Windows system and sequential platforms (Unix, Linux, Mac OS X, etc.). ParadisEO is distributed under the CeCill license and can be used under several environments.")
SET(CPACK_PACKAGE_DESCRIPTION_FILE "/Users/dominikguz/Documents/Masters/S1/ParetoTSP/Src/ParadisEO-2.0/README")
SET(CPACK_PACKAGE_DESCRIPTION_SUMMARY "A Software Framework for Metaheuristics")
SET(CPACK_PACKAGE_EXECUTABLES "ParadisEO;ParadisEO")
SET(CPACK_PACKAGE_FILE_NAME "ParadisEO-2.0-x86_64")
SET(CPACK_PACKAGE_INSTALL_DIRECTORY "ParadisEO")
SET(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "ParadisEO")
SET(CPACK_PACKAGE_NAME "ParadisEO")
SET(CPACK_PACKAGE_RELOCATABLE "true")
SET(CPACK_PACKAGE_VENDOR "Inria")
SET(CPACK_PACKAGE_VERSION "2.0.1")
SET(CPACK_PACKAGE_VERSION_MAJOR "2")
SET(CPACK_PACKAGE_VERSION_MINOR "0")
SET(CPACK_PACKAGE_VERSION_PATCH "1")
SET(CPACK_RESOURCE_FILE_LICENSE "/Users/dominikguz/Documents/Masters/S1/ParetoTSP/Src/ParadisEO-2.0/LICENSE")
SET(CPACK_RESOURCE_FILE_README "/Users/dominikguz/Documents/Masters/S1/ParetoTSP/Src/ParadisEO-2.0/README")
SET(CPACK_RESOURCE_FILE_WELCOME "/Applications/CMake.app/Contents/share/cmake-3.7/Templates/CPack.GenericWelcome.txt")
SET(CPACK_SET_DESTDIR "OFF")
SET(CPACK_SOURCE_7Z "")
SET(CPACK_SOURCE_CYGWIN "")
SET(CPACK_SOURCE_GENERATOR "TBZ2;TGZ;TXZ;TZ")
SET(CPACK_SOURCE_OUTPUT_CONFIG_FILE "/Users/dominikguz/Documents/Masters/S1/ParetoTSP/Src/ParadisEO-2.0/build/CPackSourceConfig.cmake")
SET(CPACK_SOURCE_RPM "OFF")
SET(CPACK_SOURCE_STRIP_FILES "bin/ParadisEO")
SET(CPACK_SOURCE_TBZ2 "ON")
SET(CPACK_SOURCE_TGZ "ON")
SET(CPACK_SOURCE_TXZ "ON")
SET(CPACK_SOURCE_TZ "ON")
SET(CPACK_SOURCE_ZIP "OFF")
SET(CPACK_STRIP_FILES "Evolving Objects")
SET(CPACK_SYSTEM_NAME "Darwin")
SET(CPACK_TOPLEVEL_TAG "Darwin")
SET(CPACK_WIX_SIZEOF_VOID_P "8")

if(NOT CPACK_PROPERTIES_FILE)
  set(CPACK_PROPERTIES_FILE "/Users/dominikguz/Documents/Masters/S1/ParetoTSP/Src/ParadisEO-2.0/build/CPackProperties.cmake")
endif()

if(EXISTS ${CPACK_PROPERTIES_FILE})
  include(${CPACK_PROPERTIES_FILE})
endif()
