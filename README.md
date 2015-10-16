random-compat-ext
=================

PHP 5 extension implementing `random_bytes` and `random_int`

Source code taken directly from PHP 7 and made to work with PHP 5

This extension is especially useful if you randomness backed by `CryptGenRandom` (Windows API), `arc4random` (BSD), or `getrandom(2)` (Linux syscall).

If you don't care about the above APIs, just use `/dev/urandom`

Untested on Windows.
