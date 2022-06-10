include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO djarek/certify
    REF 2d719a9ad79ce1a61684278a30196527e412a0b6
    SHA512 9f3611c447e73bde5bd039eb4a12aa3f8fba39f89b5e354f8842368bbad5dc9c97b67a9d301144a6a9b7e56e8f411613009c11052aae99709dffd1bef9505698
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})