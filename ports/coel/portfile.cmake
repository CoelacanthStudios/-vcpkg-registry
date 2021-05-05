
vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO CoelacanthStudios/coel
    REF 0.0.8
    SHA512 ebdc78fa361922ab8932fae56342a5fe33ceceea40aff18dfaccb403227933d18e57ee6d604ceb8035707b0c6ff1c0f0f4828c6808c27765a797c9f3e2cd4728
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
