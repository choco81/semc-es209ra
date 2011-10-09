cmd_net/mac80211/michael.o := /home/tsuyo/prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/arm-eabi-gcc -Wp,-MD,net/mac80211/.michael.o.d  -nostdinc -isystem /home/tsuyo/prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include -Iinclude  -I/home/tsuyo/semc-es209ra/semc-4.0.A.2.368/kernel/arch/arm/include -include include/linux/autoconf.h -D__KERNEL__ -mlittle-endian -Iarch/arm/mach-msm/include -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -Werror -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -Os -marm -mabi=aapcs-linux -mno-thumb-interwork -funwind-tables -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -Wframe-larger-than=2048 -fno-stack-protector -fomit-frame-pointer -g -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fno-dwarf2-cfi-asm -fconserve-stack -D__CHECK_ENDIAN__   -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(michael)"  -D"KBUILD_MODNAME=KBUILD_STR(mac80211)" -D"DEBUG_HASH=21" -D"DEBUG_HASH2=11" -c -o net/mac80211/michael.o net/mac80211/michael.c

deps_net/mac80211/michael.o := \
  net/mac80211/michael.c \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  /home/tsuyo/semc-es209ra/semc-4.0.A.2.368/kernel/arch/arm/include/asm/types.h \
  include/asm-generic/int-ll64.h \
  /home/tsuyo/semc-es209ra/semc-4.0.A.2.368/kernel/arch/arm/include/asm/bitsperlong.h \
  include/asm-generic/bitsperlong.h \
  include/linux/posix_types.h \
  include/linux/stddef.h \
  include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  include/linux/compiler-gcc4.h \
  /home/tsuyo/semc-es209ra/semc-4.0.A.2.368/kernel/arch/arm/include/asm/posix_types.h \
  include/linux/bitops.h \
    $(wildcard include/config/generic/find/first/bit.h) \
    $(wildcard include/config/generic/find/last/bit.h) \
    $(wildcard include/config/generic/find/next/bit.h) \
  /home/tsuyo/semc-es209ra/semc-4.0.A.2.368/kernel/arch/arm/include/asm/bitops.h \
    $(wildcard include/config/smp.h) \
  /home/tsuyo/semc-es209ra/semc-4.0.A.2.368/kernel/arch/arm/include/asm/system.h \
    $(wildcard include/config/cpu/xsc3.h) \
    $(wildcard include/config/cpu/fa526.h) \
    $(wildcard include/config/arch/msm.h) \
    $(wildcard include/config/cpu/sa1100.h) \
    $(wildcard include/config/cpu/sa110.h) \
    $(wildcard include/config/cpu/32v6k.h) \
  include/linux/linkage.h \
  /home/tsuyo/semc-es209ra/semc-4.0.A.2.368/kernel/arch/arm/include/asm/linkage.h \
  include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
    $(wildcard include/config/x86.h) \
  include/linux/typecheck.h \
  /home/tsuyo/semc-es209ra/semc-4.0.A.2.368/kernel/arch/arm/include/asm/irqflags.h \
  /home/tsuyo/semc-es209ra/semc-4.0.A.2.368/kernel/arch/arm/include/asm/ptrace.h \
    $(wildcard include/config/cpu/endian/be8.h) \
    $(wildcard include/config/arm/thumb.h) \
  /home/tsuyo/semc-es209ra/semc-4.0.A.2.368/kernel/arch/arm/include/asm/hwcap.h \
  include/asm-generic/cmpxchg-local.h \
  include/asm-generic/bitops/non-atomic.h \
  include/asm-generic/bitops/fls64.h \
  include/asm-generic/bitops/sched.h \
  include/asm-generic/bitops/hweight.h \
  include/asm-generic/bitops/lock.h \
  include/linux/ieee80211.h \
    $(wildcard include/config/len.h) \
  /home/tsuyo/semc-es209ra/semc-4.0.A.2.368/kernel/arch/arm/include/asm/byteorder.h \
  include/linux/byteorder/little_endian.h \
  include/linux/swab.h \
  /home/tsuyo/semc-es209ra/semc-4.0.A.2.368/kernel/arch/arm/include/asm/swab.h \
  include/linux/byteorder/generic.h \
  /home/tsuyo/semc-es209ra/semc-4.0.A.2.368/kernel/arch/arm/include/asm/unaligned.h \
  include/linux/unaligned/le_byteshift.h \
  include/linux/unaligned/be_byteshift.h \
  include/linux/unaligned/generic.h \
  net/mac80211/michael.h \

net/mac80211/michael.o: $(deps_net/mac80211/michael.o)

$(deps_net/mac80211/michael.o):
