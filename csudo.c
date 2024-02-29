#include <stdlib.h>
#include <unistd.h>

int main() {
  return execl("/bin/bash", "/bin/bash", NULL);
}

