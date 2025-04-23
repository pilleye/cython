cdef class VecOfIntContainer:
    def __cinit__(self):
        self.c_vec = new CVecOfIntContainer()

    def append(self, int number):
        self.c_vec.push_back(IntContainer(number))
        return self

    def get_last(self) -> int:
        return self.c_vec.back().number

    def __dealloc__(self):
        del self.c_vec

def test_int_container():
    """
    >>> test_int_container()
    1
    """
    c = IntContainer(1)
    return c.number

def test_vec():
    """
    >>> test_vec()
    1
    """
    vec = VecOfIntContainer()
    vec.append(1)
    return vec.get_last()

