#include <pthread.h>
#include <string.h>

#define bcopy(b1, b2, len) (void)(memmove((b2), (b1), (len)))
#define bzero(b, len) (void)(memset((b), '\0', (len)))

pid_t __pthread_gettid(pthread_t t) {
    return pthread_gettid_np(t);
  }
