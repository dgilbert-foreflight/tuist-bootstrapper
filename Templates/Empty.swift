import ProjectDescription

let projectName: Template.Attribute = .required("name")
let orgName: Template.Attribute = .optional("org", default: "")

func template(named name: String) -> Path {
    .relativeToCurrentFile("Stencils/\(name).stencil")
}

let empty = Template(
    description: "Initializes an Empty Tuist Project",
    attributes: [
        projectName,
        orgName,
    ],
    items: [
        .file(
            path: "Project.swift",
            templatePath: template(named: "EmptyProject")
        ),
        .file(
            path: ".gitignore",
            templatePath: template(named: "Gitignore")
        ),
    ]
)
