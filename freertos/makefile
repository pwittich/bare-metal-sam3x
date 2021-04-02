# makefile for freertos program


ROOT=../

# if the environment variable is not set, this is used
FREERTOS_ROOT?=../../../FreeRTOSv10.2.0/FreeRTOS/Source

# makefile definitions
include ${ROOT}/makedefs

# FreeRTOS
CFLAGS+=-Wno-pointer-compare

#
# Where to find source files that do not live in this directory.
#
VPATH=${ROOT}/
# FreeRTOS
VPATH+=${FREERTOS_ROOT}
VPATH+=${FREERTOS_ROOT}/portable/GCC/ARM_CM3
VPATH+=${FREERTOS_ROOT}/portable/MemMang

# Where to find header files that do not live in the source directory.
#
IPATH=.
IPATH+=..
IPATH+=${ROOT}
IPATH+=${FREERTOS_ROOT}/include
IPATH+=${FREERTOS_ROOT}/portable/GCC/ARM_CM3

#
# The default rule, which causes the project to be built.
#
all: ${COMPILER}
all: ${COMPILER}/freertos.axf

#
# The rule to clean out all the build products.
#
clean:
	@rm -rf ${COMPILER} ${wildcard *~}

#
# The rule to create the target directory.
#
${COMPILER}:
	@mkdir -p ${COMPILER}



# put dependencies here
${COMPILER}/freertos.axf: ${COMPILER}/main.o 
${COMPILER}/freertos.axf: ${COMPILER}/startup.o 
## FreeRTOS
${COMPILER}/freertos.axf: ${COMPILER}/tasks.o
${COMPILER}/freertos.axf: ${COMPILER}/queue.o
${COMPILER}/freertos.axf: ${COMPILER}/port.o
${COMPILER}/freertos.axf: ${COMPILER}/list.o
${COMPILER}/freertos.axf: ${COMPILER}/stream_buffer.o
${COMPILER}/freertos.axf: ${COMPILER}/heap_4.o


${COMPILER}/freertos.axf: flash.ld
SCATTERgcc_freertos=flash.ld
ENTRY_freertos=Reset_Handler


ifneq (${MAKECMDGOALS},clean)
-include ${wildcard ${COMPILER}/*.d} __dummy__
endif