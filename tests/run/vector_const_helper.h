struct IntContainer {
    int number;
  
    IntContainer(const int number)
        : number(number) {}
  
    IntContainer() = default;
};

using CVecOfIntContainer = std::vector<IntContainer>;
