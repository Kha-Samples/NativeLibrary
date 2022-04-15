let project = new Project('Native Library');

project.addSources('Sources');

await project.addProject('VeryNative');

resolve(project);
