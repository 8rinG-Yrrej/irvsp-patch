# irvsp-patch
My patches to irvsp to fix syntax and make it compilable by gfortran.

- Fixed some nonstandard syntaxes, which are only permitted by ifort not gfortran
- Alter makefile options to work with gfortran.

Original code is the IRVSP at
https://github.com/zjwang11/IRVSP
or as presented in 
IRVSP: to obtain irreducible representations of electronic states in the VASP, Comput. Phys. Comm. 261, 107760 (2021). https://doi.org/10.1016/j.cpc.2020.107760.

Additional note:
1. You need a working libsymspg.a from spglib.
2. Makefile does not encode precedence. Run `make -j 8 -k` multiple times.
3. Take a look at the configure.sh, and decide it's useful. It contains environment variables required at program runtime.

See also irvsp User Guide at http://www.topmat.org/2024/05/11/irvsp-users-guide/
In particular,
*For VASP6.x, please modify the line “CALL SET_SPINROT_WRAPPER(LATT_CUR%B(1,1),-1)” in mkpoints.F to “CALL SET_SPINROT_WRAPPER(LATT_CUR%B(1,1),IU6)” and recompile VASP before using IRVSP.*
