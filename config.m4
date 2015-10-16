dnl
dnl Check for arc4random on BSD systems
dnl
AC_CHECK_DECLS([arc4random_buf])

dnl
dnl Check for getrandom on newer Linux kernels
dnl
AC_CHECK_DECLS([getrandom])

PHP_ARG_ENABLE(random, Whether to enable the "random" extension,
	[  --enable-random           Enable "php-random" extension support])

if test $PHP_RANDOM != "no"; then
	PHP_NEW_EXTENSION(random, random.c, $ext_shared)
fi
