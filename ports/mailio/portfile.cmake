vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO Seclous/mailio
    REF 48f5dc0ed50d400cd63e6f3d394390c4ba1a5036 # version_0-21-1
    SHA512 49d2986bc2b0f1fcce6505e3358ef5808f9f7280a9aac70985cec0c5e5adce05e171dd78891d8dae7dc235759767ae0a29ea88c45669552948d387b79ddbb243
    HEAD_REF master
)

string(COMPARE EQUAL "${VCPKG_LIBRARY_LINKAGE}" "dynamic" BUILD_SHARED)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    PREFER_NINJA
    OPTIONS
        -DMAILIO_BUILD_DOCUMENTATION=OFF
        -DMAILIO_BUILD_EXAMPLES=OFF
)
vcpkg_cmake_install()
vcpkg_cmake_config_fixup()

vcpkg_fixup_pkgconfig()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")
file(INSTALL "${SOURCE_PATH}/LICENSE" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}" RENAME copyright)
