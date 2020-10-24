let project = new Project('Native Subproject');

project.addSources('Sources');

project.addLibrary('VeryNative');

resolve(project);
