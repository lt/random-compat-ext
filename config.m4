dnl
dnl Check for arc4random on BSD systems
dnl
AC_CHECK_DECLS([arc4random_buf])

dnl
dnl Check for getrandom on newer Linux kernels
dnl
AC_CHECK_DECLS([getrandom])

PHP_ARG_ENABLE(csprng, Whether to enable the "csprng" extension,
	[  --enable-csprng         Enable "php-csprng" extension support])

if test $PHP_CSPRNG != "no"; then
	PHP_NEW_EXTENSION(csprng, random.c, $ext_shared)
fi
