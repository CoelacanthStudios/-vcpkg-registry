
vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO CoelacanthStudios/coel
    REF 0.0.2
    SHA512 1e46853f72e426116beb999a977e123e2b31c791784800984726b30521f2623381f3c083aabf0826915f20bcecb73c286e6ac12980e5b979d263ec5a6eb94c67
    HEAD_REF master
)

vcpkg_configure_cmake(
    SOURCE_PATH "${SOURCE_PATH}"
    PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(
    INSTALL "${SOURCE_PATH}/LICENSE"
    DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
    RENAME copyright)
