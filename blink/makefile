# makefile for blink program

include ../makedefs



#
# The default rule, which causes the project to be built.
#
all: ${COMPILER}
all: ${COMPILER}/blink.axf

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
${COMPILER}/blink.axf: ${COMPILER}/main.o 
${COMPILER}/blink.axf: ${COMPILER}/startup.o 

${COMPILER}/blink.axf: flash.ld
SCATTERgcc_blink=flash.ld
ENTRY_blink=Reset_Handler


ifneq (${MAKECMDGOALS},clean)
-include ${wildcard ${COMPILER}/*.d} __dummy__
endif