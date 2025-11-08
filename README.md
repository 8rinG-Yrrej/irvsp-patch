# irvsp-patch
My patches to irvsp to fix syntax and make it compilable by gfortran.

- Fixed some nonstandard syntaxes, which are only permitted by ifort not gfortran
- Fix makefile options
- Make configure.sh inactive.

Original code is the IRVSP at
https://github.com/zjwang11/IRVSP
or as presented in 
IRVSP: to obtain irreducible representations of electronic states in the VASP, Comput. Phys. Comm. 261, 107760 (2021). https://doi.org/10.1016/j.cpc.2020.107760.

Additional note:
1. You need a working libsymspg.a from spglib.
2. Makefile does not encode precedence. Run `make -j 8 -k` multiple times.
3. Take a look at the configure.sh, and decide it's useful. It contains environment variables required at program runtime.
