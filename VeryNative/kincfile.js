let project = new Project('Very Native');

project.addFile('src/**');
project.addIncludeDir('src');

resolve(project);
