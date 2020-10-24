let project = new Project('Native Library');

project.addSources('Sources');

project.addLibrary('VeryNative');

resolve(project);
