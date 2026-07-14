// Copyright 2026 RISC Zero, Inc.
//
// Licensed under the Apache License, Version 2.0, <LICENSE-APACHE or
// http://apache.org/licenses/LICENSE-2.0> or the MIT license <LICENSE-MIT or
// http://opensource.org/licenses/MIT>, at your option. This file may not be
// copied, modified, or distributed except according to those terms.
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
// SPDX-License-Identifier: Apache-2.0 OR MIT

typedef __SIZE_TYPE__ size_t;
typedef __UINTPTR_TYPE__ uintptr_t;
typedef unsigned int word_t __attribute__((__may_alias__));

int memcmp(const void *s1, const void *s2, size_t n) {
    const unsigned char *a = s1;
    const unsigned char *b = s2;

    // RV32IM word loads must be aligned. Use them only if both pointers can
    // reach a word boundary together; otherwise stay on the byte path.
    if (n >= 8 && ((uintptr_t)a & 3) == ((uintptr_t)b & 3)) {
        while ((uintptr_t)a & 3) {
            if (*a != *b)
                return *a - *b;
            a++;
            b++;
            n--;
        }

        while (n >= 4) {
            word_t x = *(const word_t *)a;
            word_t y = *(const word_t *)b;
            if (x != y) {
                if ((unsigned char)x != (unsigned char)y)
                    return (unsigned char)x - (unsigned char)y;
                x >>= 8;
                y >>= 8;
                if ((unsigned char)x != (unsigned char)y)
                    return (unsigned char)x - (unsigned char)y;
                x >>= 8;
                y >>= 8;
                if ((unsigned char)x != (unsigned char)y)
                    return (unsigned char)x - (unsigned char)y;
                x >>= 8;
                y >>= 8;
                return (unsigned char)x - (unsigned char)y;
            }
            a += 4;
            b += 4;
            n -= 4;
        }
    }

    while (n--) {
        if (*a != *b)
            return *a - *b;
        a++;
        b++;
    }
    return 0;
}

int bcmp(const void *s1, const void *s2, size_t n) {
    return memcmp(s1, s2, n);
}
