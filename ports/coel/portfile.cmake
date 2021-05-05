
vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO CoelacanthStudios/coel
    REF 0.0.1
    SHA512 9a0a90a4f1883fe7bfc5f9087a5bc4b0b68c6defcfe9cf05a21ab1aa415258cf3e8fbe105366772ae7e6cd1697139c124d47b9f7cdda3226c8a014caf2b7f420
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
