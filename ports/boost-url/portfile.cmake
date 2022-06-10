include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO CPPAlliance/url
    REF d1e0e11ac97adf0efd4352a34d3e143c31004ab1
    SHA512 87f8c5f5db5b6cdfc76c0dcd29f502c3e7ef6c66ed54b193b9ebba26723f20c8024a26e638942b19f21883843564a58a96782388fb8c876a75c6ade82bb1fa8a
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})