// Based on musl libc commit 37e18b7bf307fa4a8c745feebfcba54a0ba74f30:
//
// src/string/memcmp.c
//
// Copyright (c) 2005-2020 Rich Felker, et al.
// SPDX-License-Identifier: MIT

typedef __SIZE_TYPE__ size_t;

int memcmp(const void *vl, const void *vr, size_t n) {
    const unsigned char *l = vl;
    const unsigned char *r = vr;

    for (; n && *l == *r; n--, l++, r++);
    return n ? *l - *r : 0;
}
