import hy
from trytond.pool import Pool
from . import hello


def register():
    Pool.register(
        hello.Tag,
        hello.Hello,
        hello.HelloTag,
        module='hello_tag', type_='model')
