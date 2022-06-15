from tasks.test import *
from tasks.project import *
from invoke import Collection

namespace = Collection()
namespace.add_collection(test)
project_tasks = Collection.from_module(project).tasks

for key in project_tasks:
    namespace.add_task(project_tasks[key])
