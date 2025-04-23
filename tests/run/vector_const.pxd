from libcpp.vector cimport vector

cdef extern from "vector_const_helper.h":
    struct IntContainer:
        int number

    ctypedef vector[IntContainer] CVecOfIntContainer

cdef class VecOfIntContainer:
    cdef CVecOfIntContainer* c_vec
