#include "syscall.h"
#include "traps.h"

#define SYSCALL(name) \
  .globl name; \
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
SYSCALL(exit)
SYSCALL(wait)
SYSCALL(pipe)
SYSCALL(read)
SYSCALL(write)
SYSCALL(close)
SYSCALL(kill)
SYSCALL(exec)
SYSCALL(open)
SYSCALL(mknod)
SYSCALL(unlink)
SYSCALL(fstat)
SYSCALL(link)
SYSCALL(mkdir)
SYSCALL(chdir)
SYSCALL(dup)
SYSCALL(getpid)
SYSCALL(sbrk)
SYSCALL(sleep)
SYSCALL(uptime)
SYSCALL(reparent)
SYSCALL(getstate)
SYSCALL(suspend)
SYSCALL(inittaskmgr)
SYSCALL(closetaskmgr)
SYSCALL(getprocinfo)
SYSCALL(updscrcont)
SYSCALL(nfpgs)
SYSCALL(createshm)
SYSCALL(deleteshm)
SYSCALL(readshm)
SYSCALL(writeshm)
SYSCALL(setconsole)
SYSCALL(clearc)
SYSCALL(insertc)
SYSCALL(shutdown)
SYSCALL(lseek)
SYSCALL(gettimestamp)
SYSCALL(getcwd)
SYSCALL(hide)
SYSCALL(show)
SYSCALL(gettime)
SYSCALL(getsharedpages)
SYSCALL(showproc)
SYSCALL(signal)
<<<<<<< Updated upstream
SYSCALL(sigsend)
=======
SYSCALL(sigsend)
// scheduling
SYSCALL(cps)
SYSCALL(chpr)
>>>>>>> Stashed changes
