cdef extern from 'function_specialization_helper.h':
    cdef int foo(int x)
    cdef int foo(float x, int y)

ctypedef int (*FooType)(float x, int y)

cdef int uses_foo_type(FooType foo_pointer):
    x = foo_pointer(1.0, 2)
    return x

def uses_double_arg_foo():
    """
    >>> uses_double_arg_foo()
    2
    """
    x = uses_foo_type(foo)
    return x


def uses_single_arg_foo():
    """
    >>> uses_single_arg_foo()
    1
    """
    x = foo(1)
    return x

