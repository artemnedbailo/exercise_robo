from invoke import task


@task
def func(c):
    """

    :param c:
    :return:
    """
    c.run("robot -d reports tests/functional/")


@task
def func_no_reports(c):
    """

    :param c:
    :return:
    """
    c.run("robot tests/functional/")
