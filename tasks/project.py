from invoke import task


@task
def setup(c):
    """
    Install all needed requirements
    """
    c.run("pip install -r requirements.txt")
