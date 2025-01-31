// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Sync",
    platforms: [.iOS(.v13), .macOS(.v11)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Sync",
            targets: ["Sync"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Sync",
            dependencies: [],
        path: "Source"),
        .testTarget(
            name: "SyncTests",
            dependencies: ["Sync"],
            path: "Tests",
            exclude: ["Info.plist"],
            resources: [.copy("DataFilter/users.json"),
                        .copy("Sync/JSONs/233.json"),
                        .copy("DataFilter/users3.json"),
                        .copy("Sync/JSONs/422-many-to-many-update-option-update.json"),
                        .copy("Sync/JSONs/225-a.json"),
                        .copy("Sync/JSONs/unique.json"),
                        .copy("Sync/JSONs/457-subcategories.json"),
                        .copy("Sync/JSONs/453-to-many-ordered-relationship-objects-update.json"),
                        .copy("Sync/JSONs/422-one-to-many-insert-option-update.json"),
                        .copy("Sync/JSONs/422-many-to-many-insert-option-initial.json"),
                        .copy("Sync/JSONs/bug-125-light.json"),
                        .copy("Sync/JSONs/camelcase.json"),
                        .copy("DataFilter/simple.json"),
                        .copy("Sync/JSONs/users_company.json"),
                        .copy("Sync/JSONs/157-cities.json"),
                        .copy("Sync/JSONs/primary-key-organizations.json"),
                        .copy("Sync/JSONs/bug-179-routes.json"),
                        .copy("DataFilter/note.json"),
                        .copy("Sync/JSONs/422-one-to-many-update-option-update.json"),
                        .copy("Sync/JSONs/225-a-replaced.json"),
                        .copy("Sync/JSONs/225-a-null.json"),
                        .copy("Sync/JSONs/to-one-snakecase.json"),
                        .copy("Sync/JSONs/primary-key-organizations-update.json"),
                        .copy("Sync/JSONs/422-one-to-one-insert-option-initial.json"),
                        .copy("Sync/JSONs/users_b.json"),
                        .copy("Sync/JSONs/476.json"),
                        .copy("Sync/JSONs/225-a-empty.json"),
                        .copy("Sync/JSONs/422-one-to-one-delete-option-initial.json"),
                        .copy("Sync/JSONs/bug-125.json"),
                        .copy("Sync/JSONs/operation-types-users-a.json"),
                        .copy("Sync/JSONs/inital-ordered-many-to-many-update.json"),
                        .copy("Sync/JSONs/283.json"),
                        .copy("Sync/JSONs/519.json"),
                        .copy("Sync/JSONs/375-to-one.json"),
                        .copy("Sync/JSONs/422-many-to-many-delete-option-update.json"),
                        .copy("Sync/JSONs/story-summarize.json"),
                        .copy("Sync/JSONs/ordered-many-to-many-update-update.json"),
                        .copy("Sync/JSONs/3ca82a0.json"),
                        .copy("Sync/JSONs/157-locations.json"),
                        .copy("Sync/JSONs/422-one-to-one-insert-option-update.json"),
                        .copy("Sync/JSONs/422-one-to-many-delete-option-initial.json"),
                        .copy("Sync/JSONs/users_c.json"),
                        .copy("Sync/JSONs/bug-179-places.json"),
                        .copy("Sync/JSONs/tagged_notes.json"),
                        .copy("Sync/JSONs/comments-no-id.json"),
                        .copy("Sync/JSONs/375.json"),
                        .copy("Sync/JSONs/numbers_in_collection.json"),
                        .copy("Sync/JSONs/480.json"),
                        .copy("DataFilter/users-with-nil.json"),
                        .copy("Sync/JSONs/447.json"),
                        .copy("Sync/JSONs/453-to-many-ordered-relationship-ids-update.json"),
                        .copy("Sync/JSONs/primary-key-users.json"),
                        .copy("Sync/JSONs/bug-number-84.json"),
                        .copy("Sync/JSONs/422-one-to-one-update-option-initial.json"),
                        .copy("Sync/JSONs/422-one-to-many-delete-option-update.json"),
                        .copy("Sync/JSONs/bug-239.json"),
                        .copy("Sync/JSONs/453-to-many-ordered-relationship-item-insert.json"),
                        .copy("Sync/JSONs/stories-comments-no-ids.json"),
                        .copy("Sync/JSONs/bug-113-comments-no-id.json"),
                        .copy("Sync/JSONs/bug-113-stories-comments-no-ids.json"),
                        .copy("Sync/JSONs/bug-202-a.json"),
                        .copy("Sync/JSONs/422-many-to-many-update-option-initial.json"),
                        .copy("Sync/JSONs/375-to-many-series.json"),
                        .copy("Sync/JSONs/388.json"),
                        .copy("Sync/JSONs/375-to-one-speeches.json"),
                        .copy("Sync/JSONs/422-many-to-many-insert-option-update.json"),
                        .copy("Sync/JSONs/organizations-tree.json"),
                        .copy("Sync/JSONs/users_notes.json"),
                        .copy("Sync/JSONs/237.json"),
                        .copy("Sync/JSONs/412.json"),
                        .copy("DataFilter/users-with-null.json"),
                        .copy("Sync/JSONs/422-one-to-many-update-option-initial.json"),
                        .copy("Sync/JSONs/277.json"),
                        .copy("Sync/JSONs/to-one-camelcase.json"),
                        .copy("Sync/JSONs/notes_for_user_a.json"),
                        .copy("Sync/JSONs/151-many-to-many-notes.json"),
                        .copy("Sync/JSONs/bug-202-b.json"),
                        .copy("Sync/JSONs/notes_with_user_id.json"),
                        .copy("Sync/JSONs/notes_with_user_id_custom.json"),
                        .copy("Sync/JSONs/id.json"),
                        .copy("Sync/JSONs/bug-254.json"),
                        .copy("Sync/JSONs/users_a.json"),
                        .copy("Sync/JSONs/422-one-to-one-update-option-update.json"),
                        .copy("Sync/JSONs/151-to-many-users-update.json"),
                        .copy("Sync/JSONs/ordered-many-to-many-update-inital.json"),
                        .copy("Sync/JSONs/151-many-to-many-notes-update.json"),
                        .copy("Sync/JSONs/bug-257.json"),
                        .copy("Sync/JSONs/custom_relationship_key_to_one.json"),
                        .copy("Sync/JSONs/265.json"),
                        .copy("Sync/JSONs/453-to-many-ordered-relationship-objects-initial.json"),
                        .copy("Sync/JSONs/422-many-to-many-delete-option-initial.json"),
                        .copy("Sync/JSONs/markets_items.json"),
                        .copy("Sync/JSONs/457-products.json"),
                        .copy("DataFilter/users2.json"),
                        .copy("Sync/JSONs/patients.json"),
                        .copy("Sync/JSONs/157-locations-update.json"),
                        .copy("Sync/JSONs/373.json"),
                        .copy("Sync/JSONs/417.json"),
                        .copy("Sync/JSONs/bug-113-custom_relationship_key_to_one.json"),
                        .copy("Sync/JSONs/320.json"),
                        .copy("Sync/JSONs/151-to-many-users.json"),
                        .copy("Sync/JSONs/151-to-many-notes.json"),
                        .copy("Sync/JSONs/422-one-to-many-insert-option-initial.json"),
                        .copy("Sync/JSONs/280.json"),
                        .copy("Sync/JSONs/numbers.json"),
                        .copy("Sync/JSONs/375-to-many-speeches.json"),
                        .copy("Sync/JSONs/images.json"),
                        .copy("Sync/JSONs/remote_key.json"),
                        .copy("Sync/JSONs/custom_relationship_key_to_many.json"),
                        .copy("Sync/JSONs/422-one-to-one-delete-option-update.json"),
                        .copy("Sync/JSONs/operation-types-users-b.json"),
                        .copy("Sync/JSONs/151-many-to-many-tags.json")]),
    ]
)
