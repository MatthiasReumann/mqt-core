[![PyPI](https://img.shields.io/pypi/v/mqt.core?logo=pypi&style=flat-square)](https://pypi.org/project/mqt.core/)
![OS](https://img.shields.io/badge/os-linux%20%7C%20macos%20%7C%20windows-blue?style=flat-square)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](https://opensource.org/licenses/MIT)
[![CI](https://img.shields.io/github/actions/workflow/status/cda-tum/mqt-core/ci.yml?branch=main&style=flat-square&logo=github&label=ci)](https://github.com/cda-tum/mqt-core/actions/workflows/ci.yml)
[![CD](https://img.shields.io/github/actions/workflow/status/cda-tum/mqt-core/cd.yml?style=flat-square&logo=github&label=cd)](https://github.com/cda-tum/mqt-core/actions/workflows/cd.yml)
[![Documentation](https://img.shields.io/readthedocs/mqt-core?logo=readthedocs&style=flat-square)](https://mqt.readthedocs.io/projects/core)
[![codecov](https://img.shields.io/codecov/c/github/cda-tum/mqt-core?style=flat-square&logo=codecov)](https://codecov.io/gh/cda-tum/mqt-core)

<p align="center">
  <a href="https://mqt.readthedocs.io">
   <picture>
     <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/cda-tum/mqt/main/docs/_static/mqt_light.png" width="60%">
     <img src="https://raw.githubusercontent.com/cda-tum/mqt/main/docs/_static/mqt_dark.png" width="60%">
   </picture>
  </a>
</p>

# MQT Core - The Backbone of the Munich Quantum Toolkit (MQT)

MQT Core is an open-source C++17 and Python library for quantum computing that forms the backbone of the quantum software tools developed as part of the [_Munich Quantum Toolkit (MQT)_](https://mqt.readthedocs.io) by the [Chair for Design Automation](https://www.cda.cit.tum.de/) at the [Technical University of Munich](https://www.tum.de/).
To this end, it consists of multiple components that are used throughout the MQT, including a fully fledged intermediate representation (IR) for quantum computations, a state-of-the-art decision diagram (DD) package for quantum computing, and a dedicated ZX-diagram package for working with the ZX-calculus.

<p align="center">
  <a href="https://mqt.readthedocs.io/projects/core">
  <img width=30% src="https://img.shields.io/badge/documentation-blue?style=for-the-badge&logo=read%20the%20docs" alt="Documentation" />
  </a>
</p>

If you have any questions, feel free to create a [discussion](https://github.com/cda-tum/mqt-core/discussions) or an [issue](https://github.com/cda-tum/mqt-core/issues) on [GitHub](https://github.com/cda-tum/mqt-core).

## Getting Started

`mqt.core` is available via [PyPI](https://pypi.org/project/mqt.core/) for all major operating systems and supports Python 3.9 to 3.13.

```console
(.venv) $ pip install mqt.core
```

The following code gives an example on the usage:

```python3
from mqt.core import QuantumComputation

qc = QuantumComputation(2, 2)
qc.h(0)
qc.cx(0, 1)
qc.measure(range(2), range(2))

print(qc)
```

**Detailed documentation and examples are available at [ReadTheDocs](https://mqt.readthedocs.io/projects/core).**

## System Requirements

Building (and running) is continuously tested under Linux, MacOS, and Windows using the [latest available system versions for GitHub Actions](https://github.com/actions/runner-images).
However, the implementation should be compatible with any current C++ compiler supporting C++17 and a minimum CMake version of 3.19.

MQT Core relies on some external dependencies:

- [nlohmann/json](https://github.com/nlohmann/json): A JSON library for modern C++.
- [boost/multiprecision](https://github.com/boostorg/multiprecision): A library for multiprecision arithmetic (used in the ZX package).
- [google/googletest](https://github.com/google/googletest): A testing framework for C++ (only used in tests).
- [pybind/pybind11_json](https://github.com/pybind/pybind11_json): Using nlohmann::json with pybind11 (only used for creating the Python bindings).

CMake will automatically look for installed versions of these libraries. If it does not find them, they will be fetched automatically at configure time via the [FetchContent](https://cmake.org/cmake/help/latest/module/FetchContent.html) module (check out the documentation for more information on how to customize this behavior).

It is recommended (although not required) to have [GraphViz](https://www.graphviz.org) installed for visualization purposes.

If you want to use the ZX library, it is recommended (although not strictly necessary) to have [GMP](https://gmplib.org/) installed in your system.

---

## Acknowledgements

The Munich Quantum Toolkit has been supported by the European
Research Council (ERC) under the European Union's Horizon 2020 research and innovation program (grant agreement
No. 101001318), the Bavarian State Ministry for Science and Arts through the Distinguished Professorship Program, as well as the
Munich Quantum Valley, which is supported by the Bavarian state government with funds from the Hightech Agenda Bayern Plus.

<p align="center">
<picture>
<source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/cda-tum/mqt/main/docs/_static/tum_dark.svg" width="28%">
<img src="https://raw.githubusercontent.com/cda-tum/mqt/main/docs/_static/tum_light.svg" width="28%" alt="TUM Logo">
</picture>
<picture>
<img src="https://raw.githubusercontent.com/cda-tum/mqt/main/docs/_static/logo-bavaria.svg" width="16%" alt="Coat of Arms of Bavaria">
</picture>
<picture>
<source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/cda-tum/mqt/main/docs/_static/erc_dark.svg" width="24%">
<img src="https://raw.githubusercontent.com/cda-tum/mqt/main/docs/_static/erc_light.svg" width="24%" alt="ERC Logo">
</picture>
<picture>
<img src="https://raw.githubusercontent.com/cda-tum/mqt/main/docs/_static/logo-mqv.svg" width="28%" alt="MQV Logo">
</picture>
</p>
