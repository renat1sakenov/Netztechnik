#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/SystemnaheProgrammierung.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/SystemnaheProgrammierung.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=--mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=busyxlcd.c main.c openxlcd.c putrxlcd.c putsxlcd.c readaddr.c readdata.c setcgram.c setddram.c wcmdxlcd.c writdata.c adcbusy.c adcclose.c adcconv.c adcopen.c adcread.c adcselchconv.c adcsetch.c i2c1ack.c i2c1clos.c i2c1dtrd.c i2c1eeap.c i2c1eebw.c i2c1eecr.c i2c1eepw.c i2c1eerr.c i2c1eesr.c i2c1gets.c i2c1idle.c i2c1nack.c i2c1open.c i2c1puts.c i2c1read.c i2c1rstr.c i2c1stop.c i2c1strt.c i2c1writ.c i2c2ack.c i2c2clos.c i2c2dtrd.c i2c2eeap.c i2c2eebw.c i2c2eecr.c i2c2eepw.c i2c2eerr.c i2c2eesr.c i2c2gets.c i2c2idle.c i2c2nack.c i2c2open.c i2c2puts.c i2c2read.c i2c2rstr.c i2c2stop.c i2c2strt.c i2c2writ.c i2c_ack.c i2c_clos.c i2c_dtrd.c i2c_eeap.c i2c_eebw.c i2c_eecr.c i2c_eepw.c i2c_eerr.c i2c_eesr.c i2c_gets.c i2c_idle.c i2c_nack.c i2c_open.c i2c_puts.c i2c_read.c i2c_rstr.c i2c_stop.c i2c_strt.c i2c_writ.c t1close.c t1open.c t1read.c t1write.c pw1close.c pw1open.c pw1setdc.c pw1setoc.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/busyxlcd.p1 ${OBJECTDIR}/main.p1 ${OBJECTDIR}/openxlcd.p1 ${OBJECTDIR}/putrxlcd.p1 ${OBJECTDIR}/putsxlcd.p1 ${OBJECTDIR}/readaddr.p1 ${OBJECTDIR}/readdata.p1 ${OBJECTDIR}/setcgram.p1 ${OBJECTDIR}/setddram.p1 ${OBJECTDIR}/wcmdxlcd.p1 ${OBJECTDIR}/writdata.p1 ${OBJECTDIR}/adcbusy.p1 ${OBJECTDIR}/adcclose.p1 ${OBJECTDIR}/adcconv.p1 ${OBJECTDIR}/adcopen.p1 ${OBJECTDIR}/adcread.p1 ${OBJECTDIR}/adcselchconv.p1 ${OBJECTDIR}/adcsetch.p1 ${OBJECTDIR}/i2c1ack.p1 ${OBJECTDIR}/i2c1clos.p1 ${OBJECTDIR}/i2c1dtrd.p1 ${OBJECTDIR}/i2c1eeap.p1 ${OBJECTDIR}/i2c1eebw.p1 ${OBJECTDIR}/i2c1eecr.p1 ${OBJECTDIR}/i2c1eepw.p1 ${OBJECTDIR}/i2c1eerr.p1 ${OBJECTDIR}/i2c1eesr.p1 ${OBJECTDIR}/i2c1gets.p1 ${OBJECTDIR}/i2c1idle.p1 ${OBJECTDIR}/i2c1nack.p1 ${OBJECTDIR}/i2c1open.p1 ${OBJECTDIR}/i2c1puts.p1 ${OBJECTDIR}/i2c1read.p1 ${OBJECTDIR}/i2c1rstr.p1 ${OBJECTDIR}/i2c1stop.p1 ${OBJECTDIR}/i2c1strt.p1 ${OBJECTDIR}/i2c1writ.p1 ${OBJECTDIR}/i2c2ack.p1 ${OBJECTDIR}/i2c2clos.p1 ${OBJECTDIR}/i2c2dtrd.p1 ${OBJECTDIR}/i2c2eeap.p1 ${OBJECTDIR}/i2c2eebw.p1 ${OBJECTDIR}/i2c2eecr.p1 ${OBJECTDIR}/i2c2eepw.p1 ${OBJECTDIR}/i2c2eerr.p1 ${OBJECTDIR}/i2c2eesr.p1 ${OBJECTDIR}/i2c2gets.p1 ${OBJECTDIR}/i2c2idle.p1 ${OBJECTDIR}/i2c2nack.p1 ${OBJECTDIR}/i2c2open.p1 ${OBJECTDIR}/i2c2puts.p1 ${OBJECTDIR}/i2c2read.p1 ${OBJECTDIR}/i2c2rstr.p1 ${OBJECTDIR}/i2c2stop.p1 ${OBJECTDIR}/i2c2strt.p1 ${OBJECTDIR}/i2c2writ.p1 ${OBJECTDIR}/i2c_ack.p1 ${OBJECTDIR}/i2c_clos.p1 ${OBJECTDIR}/i2c_dtrd.p1 ${OBJECTDIR}/i2c_eeap.p1 ${OBJECTDIR}/i2c_eebw.p1 ${OBJECTDIR}/i2c_eecr.p1 ${OBJECTDIR}/i2c_eepw.p1 ${OBJECTDIR}/i2c_eerr.p1 ${OBJECTDIR}/i2c_eesr.p1 ${OBJECTDIR}/i2c_gets.p1 ${OBJECTDIR}/i2c_idle.p1 ${OBJECTDIR}/i2c_nack.p1 ${OBJECTDIR}/i2c_open.p1 ${OBJECTDIR}/i2c_puts.p1 ${OBJECTDIR}/i2c_read.p1 ${OBJECTDIR}/i2c_rstr.p1 ${OBJECTDIR}/i2c_stop.p1 ${OBJECTDIR}/i2c_strt.p1 ${OBJECTDIR}/i2c_writ.p1 ${OBJECTDIR}/t1close.p1 ${OBJECTDIR}/t1open.p1 ${OBJECTDIR}/t1read.p1 ${OBJECTDIR}/t1write.p1 ${OBJECTDIR}/pw1close.p1 ${OBJECTDIR}/pw1open.p1 ${OBJECTDIR}/pw1setdc.p1 ${OBJECTDIR}/pw1setoc.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/busyxlcd.p1.d ${OBJECTDIR}/main.p1.d ${OBJECTDIR}/openxlcd.p1.d ${OBJECTDIR}/putrxlcd.p1.d ${OBJECTDIR}/putsxlcd.p1.d ${OBJECTDIR}/readaddr.p1.d ${OBJECTDIR}/readdata.p1.d ${OBJECTDIR}/setcgram.p1.d ${OBJECTDIR}/setddram.p1.d ${OBJECTDIR}/wcmdxlcd.p1.d ${OBJECTDIR}/writdata.p1.d ${OBJECTDIR}/adcbusy.p1.d ${OBJECTDIR}/adcclose.p1.d ${OBJECTDIR}/adcconv.p1.d ${OBJECTDIR}/adcopen.p1.d ${OBJECTDIR}/adcread.p1.d ${OBJECTDIR}/adcselchconv.p1.d ${OBJECTDIR}/adcsetch.p1.d ${OBJECTDIR}/i2c1ack.p1.d ${OBJECTDIR}/i2c1clos.p1.d ${OBJECTDIR}/i2c1dtrd.p1.d ${OBJECTDIR}/i2c1eeap.p1.d ${OBJECTDIR}/i2c1eebw.p1.d ${OBJECTDIR}/i2c1eecr.p1.d ${OBJECTDIR}/i2c1eepw.p1.d ${OBJECTDIR}/i2c1eerr.p1.d ${OBJECTDIR}/i2c1eesr.p1.d ${OBJECTDIR}/i2c1gets.p1.d ${OBJECTDIR}/i2c1idle.p1.d ${OBJECTDIR}/i2c1nack.p1.d ${OBJECTDIR}/i2c1open.p1.d ${OBJECTDIR}/i2c1puts.p1.d ${OBJECTDIR}/i2c1read.p1.d ${OBJECTDIR}/i2c1rstr.p1.d ${OBJECTDIR}/i2c1stop.p1.d ${OBJECTDIR}/i2c1strt.p1.d ${OBJECTDIR}/i2c1writ.p1.d ${OBJECTDIR}/i2c2ack.p1.d ${OBJECTDIR}/i2c2clos.p1.d ${OBJECTDIR}/i2c2dtrd.p1.d ${OBJECTDIR}/i2c2eeap.p1.d ${OBJECTDIR}/i2c2eebw.p1.d ${OBJECTDIR}/i2c2eecr.p1.d ${OBJECTDIR}/i2c2eepw.p1.d ${OBJECTDIR}/i2c2eerr.p1.d ${OBJECTDIR}/i2c2eesr.p1.d ${OBJECTDIR}/i2c2gets.p1.d ${OBJECTDIR}/i2c2idle.p1.d ${OBJECTDIR}/i2c2nack.p1.d ${OBJECTDIR}/i2c2open.p1.d ${OBJECTDIR}/i2c2puts.p1.d ${OBJECTDIR}/i2c2read.p1.d ${OBJECTDIR}/i2c2rstr.p1.d ${OBJECTDIR}/i2c2stop.p1.d ${OBJECTDIR}/i2c2strt.p1.d ${OBJECTDIR}/i2c2writ.p1.d ${OBJECTDIR}/i2c_ack.p1.d ${OBJECTDIR}/i2c_clos.p1.d ${OBJECTDIR}/i2c_dtrd.p1.d ${OBJECTDIR}/i2c_eeap.p1.d ${OBJECTDIR}/i2c_eebw.p1.d ${OBJECTDIR}/i2c_eecr.p1.d ${OBJECTDIR}/i2c_eepw.p1.d ${OBJECTDIR}/i2c_eerr.p1.d ${OBJECTDIR}/i2c_eesr.p1.d ${OBJECTDIR}/i2c_gets.p1.d ${OBJECTDIR}/i2c_idle.p1.d ${OBJECTDIR}/i2c_nack.p1.d ${OBJECTDIR}/i2c_open.p1.d ${OBJECTDIR}/i2c_puts.p1.d ${OBJECTDIR}/i2c_read.p1.d ${OBJECTDIR}/i2c_rstr.p1.d ${OBJECTDIR}/i2c_stop.p1.d ${OBJECTDIR}/i2c_strt.p1.d ${OBJECTDIR}/i2c_writ.p1.d ${OBJECTDIR}/t1close.p1.d ${OBJECTDIR}/t1open.p1.d ${OBJECTDIR}/t1read.p1.d ${OBJECTDIR}/t1write.p1.d ${OBJECTDIR}/pw1close.p1.d ${OBJECTDIR}/pw1open.p1.d ${OBJECTDIR}/pw1setdc.p1.d ${OBJECTDIR}/pw1setoc.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/busyxlcd.p1 ${OBJECTDIR}/main.p1 ${OBJECTDIR}/openxlcd.p1 ${OBJECTDIR}/putrxlcd.p1 ${OBJECTDIR}/putsxlcd.p1 ${OBJECTDIR}/readaddr.p1 ${OBJECTDIR}/readdata.p1 ${OBJECTDIR}/setcgram.p1 ${OBJECTDIR}/setddram.p1 ${OBJECTDIR}/wcmdxlcd.p1 ${OBJECTDIR}/writdata.p1 ${OBJECTDIR}/adcbusy.p1 ${OBJECTDIR}/adcclose.p1 ${OBJECTDIR}/adcconv.p1 ${OBJECTDIR}/adcopen.p1 ${OBJECTDIR}/adcread.p1 ${OBJECTDIR}/adcselchconv.p1 ${OBJECTDIR}/adcsetch.p1 ${OBJECTDIR}/i2c1ack.p1 ${OBJECTDIR}/i2c1clos.p1 ${OBJECTDIR}/i2c1dtrd.p1 ${OBJECTDIR}/i2c1eeap.p1 ${OBJECTDIR}/i2c1eebw.p1 ${OBJECTDIR}/i2c1eecr.p1 ${OBJECTDIR}/i2c1eepw.p1 ${OBJECTDIR}/i2c1eerr.p1 ${OBJECTDIR}/i2c1eesr.p1 ${OBJECTDIR}/i2c1gets.p1 ${OBJECTDIR}/i2c1idle.p1 ${OBJECTDIR}/i2c1nack.p1 ${OBJECTDIR}/i2c1open.p1 ${OBJECTDIR}/i2c1puts.p1 ${OBJECTDIR}/i2c1read.p1 ${OBJECTDIR}/i2c1rstr.p1 ${OBJECTDIR}/i2c1stop.p1 ${OBJECTDIR}/i2c1strt.p1 ${OBJECTDIR}/i2c1writ.p1 ${OBJECTDIR}/i2c2ack.p1 ${OBJECTDIR}/i2c2clos.p1 ${OBJECTDIR}/i2c2dtrd.p1 ${OBJECTDIR}/i2c2eeap.p1 ${OBJECTDIR}/i2c2eebw.p1 ${OBJECTDIR}/i2c2eecr.p1 ${OBJECTDIR}/i2c2eepw.p1 ${OBJECTDIR}/i2c2eerr.p1 ${OBJECTDIR}/i2c2eesr.p1 ${OBJECTDIR}/i2c2gets.p1 ${OBJECTDIR}/i2c2idle.p1 ${OBJECTDIR}/i2c2nack.p1 ${OBJECTDIR}/i2c2open.p1 ${OBJECTDIR}/i2c2puts.p1 ${OBJECTDIR}/i2c2read.p1 ${OBJECTDIR}/i2c2rstr.p1 ${OBJECTDIR}/i2c2stop.p1 ${OBJECTDIR}/i2c2strt.p1 ${OBJECTDIR}/i2c2writ.p1 ${OBJECTDIR}/i2c_ack.p1 ${OBJECTDIR}/i2c_clos.p1 ${OBJECTDIR}/i2c_dtrd.p1 ${OBJECTDIR}/i2c_eeap.p1 ${OBJECTDIR}/i2c_eebw.p1 ${OBJECTDIR}/i2c_eecr.p1 ${OBJECTDIR}/i2c_eepw.p1 ${OBJECTDIR}/i2c_eerr.p1 ${OBJECTDIR}/i2c_eesr.p1 ${OBJECTDIR}/i2c_gets.p1 ${OBJECTDIR}/i2c_idle.p1 ${OBJECTDIR}/i2c_nack.p1 ${OBJECTDIR}/i2c_open.p1 ${OBJECTDIR}/i2c_puts.p1 ${OBJECTDIR}/i2c_read.p1 ${OBJECTDIR}/i2c_rstr.p1 ${OBJECTDIR}/i2c_stop.p1 ${OBJECTDIR}/i2c_strt.p1 ${OBJECTDIR}/i2c_writ.p1 ${OBJECTDIR}/t1close.p1 ${OBJECTDIR}/t1open.p1 ${OBJECTDIR}/t1read.p1 ${OBJECTDIR}/t1write.p1 ${OBJECTDIR}/pw1close.p1 ${OBJECTDIR}/pw1open.p1 ${OBJECTDIR}/pw1setdc.p1 ${OBJECTDIR}/pw1setoc.p1

# Source Files
SOURCEFILES=busyxlcd.c main.c openxlcd.c putrxlcd.c putsxlcd.c readaddr.c readdata.c setcgram.c setddram.c wcmdxlcd.c writdata.c adcbusy.c adcclose.c adcconv.c adcopen.c adcread.c adcselchconv.c adcsetch.c i2c1ack.c i2c1clos.c i2c1dtrd.c i2c1eeap.c i2c1eebw.c i2c1eecr.c i2c1eepw.c i2c1eerr.c i2c1eesr.c i2c1gets.c i2c1idle.c i2c1nack.c i2c1open.c i2c1puts.c i2c1read.c i2c1rstr.c i2c1stop.c i2c1strt.c i2c1writ.c i2c2ack.c i2c2clos.c i2c2dtrd.c i2c2eeap.c i2c2eebw.c i2c2eecr.c i2c2eepw.c i2c2eerr.c i2c2eesr.c i2c2gets.c i2c2idle.c i2c2nack.c i2c2open.c i2c2puts.c i2c2read.c i2c2rstr.c i2c2stop.c i2c2strt.c i2c2writ.c i2c_ack.c i2c_clos.c i2c_dtrd.c i2c_eeap.c i2c_eebw.c i2c_eecr.c i2c_eepw.c i2c_eerr.c i2c_eesr.c i2c_gets.c i2c_idle.c i2c_nack.c i2c_open.c i2c_puts.c i2c_read.c i2c_rstr.c i2c_stop.c i2c_strt.c i2c_writ.c t1close.c t1open.c t1read.c t1write.c pw1close.c pw1open.c pw1setdc.c pw1setoc.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/SystemnaheProgrammierung.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F4520
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/busyxlcd.p1: busyxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/busyxlcd.p1.d 
	@${RM} ${OBJECTDIR}/busyxlcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/busyxlcd.p1  busyxlcd.c 
	@-${MV} ${OBJECTDIR}/busyxlcd.d ${OBJECTDIR}/busyxlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/busyxlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/main.p1  main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/openxlcd.p1: openxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/openxlcd.p1.d 
	@${RM} ${OBJECTDIR}/openxlcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/openxlcd.p1  openxlcd.c 
	@-${MV} ${OBJECTDIR}/openxlcd.d ${OBJECTDIR}/openxlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/openxlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/putrxlcd.p1: putrxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/putrxlcd.p1.d 
	@${RM} ${OBJECTDIR}/putrxlcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/putrxlcd.p1  putrxlcd.c 
	@-${MV} ${OBJECTDIR}/putrxlcd.d ${OBJECTDIR}/putrxlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/putrxlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/putsxlcd.p1: putsxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/putsxlcd.p1.d 
	@${RM} ${OBJECTDIR}/putsxlcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/putsxlcd.p1  putsxlcd.c 
	@-${MV} ${OBJECTDIR}/putsxlcd.d ${OBJECTDIR}/putsxlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/putsxlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/readaddr.p1: readaddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/readaddr.p1.d 
	@${RM} ${OBJECTDIR}/readaddr.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/readaddr.p1  readaddr.c 
	@-${MV} ${OBJECTDIR}/readaddr.d ${OBJECTDIR}/readaddr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/readaddr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/readdata.p1: readdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/readdata.p1.d 
	@${RM} ${OBJECTDIR}/readdata.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/readdata.p1  readdata.c 
	@-${MV} ${OBJECTDIR}/readdata.d ${OBJECTDIR}/readdata.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/readdata.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/setcgram.p1: setcgram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/setcgram.p1.d 
	@${RM} ${OBJECTDIR}/setcgram.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/setcgram.p1  setcgram.c 
	@-${MV} ${OBJECTDIR}/setcgram.d ${OBJECTDIR}/setcgram.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/setcgram.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/setddram.p1: setddram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/setddram.p1.d 
	@${RM} ${OBJECTDIR}/setddram.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/setddram.p1  setddram.c 
	@-${MV} ${OBJECTDIR}/setddram.d ${OBJECTDIR}/setddram.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/setddram.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/wcmdxlcd.p1: wcmdxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/wcmdxlcd.p1.d 
	@${RM} ${OBJECTDIR}/wcmdxlcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/wcmdxlcd.p1  wcmdxlcd.c 
	@-${MV} ${OBJECTDIR}/wcmdxlcd.d ${OBJECTDIR}/wcmdxlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/wcmdxlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/writdata.p1: writdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/writdata.p1.d 
	@${RM} ${OBJECTDIR}/writdata.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/writdata.p1  writdata.c 
	@-${MV} ${OBJECTDIR}/writdata.d ${OBJECTDIR}/writdata.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/writdata.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/adcbusy.p1: adcbusy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/adcbusy.p1.d 
	@${RM} ${OBJECTDIR}/adcbusy.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/adcbusy.p1  adcbusy.c 
	@-${MV} ${OBJECTDIR}/adcbusy.d ${OBJECTDIR}/adcbusy.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/adcbusy.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/adcclose.p1: adcclose.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/adcclose.p1.d 
	@${RM} ${OBJECTDIR}/adcclose.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/adcclose.p1  adcclose.c 
	@-${MV} ${OBJECTDIR}/adcclose.d ${OBJECTDIR}/adcclose.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/adcclose.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/adcconv.p1: adcconv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/adcconv.p1.d 
	@${RM} ${OBJECTDIR}/adcconv.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/adcconv.p1  adcconv.c 
	@-${MV} ${OBJECTDIR}/adcconv.d ${OBJECTDIR}/adcconv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/adcconv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/adcopen.p1: adcopen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/adcopen.p1.d 
	@${RM} ${OBJECTDIR}/adcopen.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/adcopen.p1  adcopen.c 
	@-${MV} ${OBJECTDIR}/adcopen.d ${OBJECTDIR}/adcopen.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/adcopen.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/adcread.p1: adcread.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/adcread.p1.d 
	@${RM} ${OBJECTDIR}/adcread.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/adcread.p1  adcread.c 
	@-${MV} ${OBJECTDIR}/adcread.d ${OBJECTDIR}/adcread.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/adcread.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/adcselchconv.p1: adcselchconv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/adcselchconv.p1.d 
	@${RM} ${OBJECTDIR}/adcselchconv.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/adcselchconv.p1  adcselchconv.c 
	@-${MV} ${OBJECTDIR}/adcselchconv.d ${OBJECTDIR}/adcselchconv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/adcselchconv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/adcsetch.p1: adcsetch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/adcsetch.p1.d 
	@${RM} ${OBJECTDIR}/adcsetch.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/adcsetch.p1  adcsetch.c 
	@-${MV} ${OBJECTDIR}/adcsetch.d ${OBJECTDIR}/adcsetch.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/adcsetch.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c1ack.p1: i2c1ack.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c1ack.p1.d 
	@${RM} ${OBJECTDIR}/i2c1ack.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c1ack.p1  i2c1ack.c 
	@-${MV} ${OBJECTDIR}/i2c1ack.d ${OBJECTDIR}/i2c1ack.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c1ack.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c1clos.p1: i2c1clos.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c1clos.p1.d 
	@${RM} ${OBJECTDIR}/i2c1clos.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c1clos.p1  i2c1clos.c 
	@-${MV} ${OBJECTDIR}/i2c1clos.d ${OBJECTDIR}/i2c1clos.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c1clos.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c1dtrd.p1: i2c1dtrd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c1dtrd.p1.d 
	@${RM} ${OBJECTDIR}/i2c1dtrd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c1dtrd.p1  i2c1dtrd.c 
	@-${MV} ${OBJECTDIR}/i2c1dtrd.d ${OBJECTDIR}/i2c1dtrd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c1dtrd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c1eeap.p1: i2c1eeap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c1eeap.p1.d 
	@${RM} ${OBJECTDIR}/i2c1eeap.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c1eeap.p1  i2c1eeap.c 
	@-${MV} ${OBJECTDIR}/i2c1eeap.d ${OBJECTDIR}/i2c1eeap.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c1eeap.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c1eebw.p1: i2c1eebw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c1eebw.p1.d 
	@${RM} ${OBJECTDIR}/i2c1eebw.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c1eebw.p1  i2c1eebw.c 
	@-${MV} ${OBJECTDIR}/i2c1eebw.d ${OBJECTDIR}/i2c1eebw.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c1eebw.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c1eecr.p1: i2c1eecr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c1eecr.p1.d 
	@${RM} ${OBJECTDIR}/i2c1eecr.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c1eecr.p1  i2c1eecr.c 
	@-${MV} ${OBJECTDIR}/i2c1eecr.d ${OBJECTDIR}/i2c1eecr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c1eecr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c1eepw.p1: i2c1eepw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c1eepw.p1.d 
	@${RM} ${OBJECTDIR}/i2c1eepw.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c1eepw.p1  i2c1eepw.c 
	@-${MV} ${OBJECTDIR}/i2c1eepw.d ${OBJECTDIR}/i2c1eepw.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c1eepw.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c1eerr.p1: i2c1eerr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c1eerr.p1.d 
	@${RM} ${OBJECTDIR}/i2c1eerr.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c1eerr.p1  i2c1eerr.c 
	@-${MV} ${OBJECTDIR}/i2c1eerr.d ${OBJECTDIR}/i2c1eerr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c1eerr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c1eesr.p1: i2c1eesr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c1eesr.p1.d 
	@${RM} ${OBJECTDIR}/i2c1eesr.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c1eesr.p1  i2c1eesr.c 
	@-${MV} ${OBJECTDIR}/i2c1eesr.d ${OBJECTDIR}/i2c1eesr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c1eesr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c1gets.p1: i2c1gets.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c1gets.p1.d 
	@${RM} ${OBJECTDIR}/i2c1gets.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c1gets.p1  i2c1gets.c 
	@-${MV} ${OBJECTDIR}/i2c1gets.d ${OBJECTDIR}/i2c1gets.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c1gets.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c1idle.p1: i2c1idle.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c1idle.p1.d 
	@${RM} ${OBJECTDIR}/i2c1idle.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c1idle.p1  i2c1idle.c 
	@-${MV} ${OBJECTDIR}/i2c1idle.d ${OBJECTDIR}/i2c1idle.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c1idle.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c1nack.p1: i2c1nack.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c1nack.p1.d 
	@${RM} ${OBJECTDIR}/i2c1nack.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c1nack.p1  i2c1nack.c 
	@-${MV} ${OBJECTDIR}/i2c1nack.d ${OBJECTDIR}/i2c1nack.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c1nack.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c1open.p1: i2c1open.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c1open.p1.d 
	@${RM} ${OBJECTDIR}/i2c1open.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c1open.p1  i2c1open.c 
	@-${MV} ${OBJECTDIR}/i2c1open.d ${OBJECTDIR}/i2c1open.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c1open.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c1puts.p1: i2c1puts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c1puts.p1.d 
	@${RM} ${OBJECTDIR}/i2c1puts.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c1puts.p1  i2c1puts.c 
	@-${MV} ${OBJECTDIR}/i2c1puts.d ${OBJECTDIR}/i2c1puts.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c1puts.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c1read.p1: i2c1read.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c1read.p1.d 
	@${RM} ${OBJECTDIR}/i2c1read.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c1read.p1  i2c1read.c 
	@-${MV} ${OBJECTDIR}/i2c1read.d ${OBJECTDIR}/i2c1read.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c1read.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c1rstr.p1: i2c1rstr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c1rstr.p1.d 
	@${RM} ${OBJECTDIR}/i2c1rstr.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c1rstr.p1  i2c1rstr.c 
	@-${MV} ${OBJECTDIR}/i2c1rstr.d ${OBJECTDIR}/i2c1rstr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c1rstr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c1stop.p1: i2c1stop.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c1stop.p1.d 
	@${RM} ${OBJECTDIR}/i2c1stop.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c1stop.p1  i2c1stop.c 
	@-${MV} ${OBJECTDIR}/i2c1stop.d ${OBJECTDIR}/i2c1stop.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c1stop.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c1strt.p1: i2c1strt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c1strt.p1.d 
	@${RM} ${OBJECTDIR}/i2c1strt.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c1strt.p1  i2c1strt.c 
	@-${MV} ${OBJECTDIR}/i2c1strt.d ${OBJECTDIR}/i2c1strt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c1strt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c1writ.p1: i2c1writ.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c1writ.p1.d 
	@${RM} ${OBJECTDIR}/i2c1writ.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c1writ.p1  i2c1writ.c 
	@-${MV} ${OBJECTDIR}/i2c1writ.d ${OBJECTDIR}/i2c1writ.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c1writ.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c2ack.p1: i2c2ack.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c2ack.p1.d 
	@${RM} ${OBJECTDIR}/i2c2ack.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c2ack.p1  i2c2ack.c 
	@-${MV} ${OBJECTDIR}/i2c2ack.d ${OBJECTDIR}/i2c2ack.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c2ack.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c2clos.p1: i2c2clos.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c2clos.p1.d 
	@${RM} ${OBJECTDIR}/i2c2clos.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c2clos.p1  i2c2clos.c 
	@-${MV} ${OBJECTDIR}/i2c2clos.d ${OBJECTDIR}/i2c2clos.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c2clos.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c2dtrd.p1: i2c2dtrd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c2dtrd.p1.d 
	@${RM} ${OBJECTDIR}/i2c2dtrd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c2dtrd.p1  i2c2dtrd.c 
	@-${MV} ${OBJECTDIR}/i2c2dtrd.d ${OBJECTDIR}/i2c2dtrd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c2dtrd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c2eeap.p1: i2c2eeap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c2eeap.p1.d 
	@${RM} ${OBJECTDIR}/i2c2eeap.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c2eeap.p1  i2c2eeap.c 
	@-${MV} ${OBJECTDIR}/i2c2eeap.d ${OBJECTDIR}/i2c2eeap.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c2eeap.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c2eebw.p1: i2c2eebw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c2eebw.p1.d 
	@${RM} ${OBJECTDIR}/i2c2eebw.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c2eebw.p1  i2c2eebw.c 
	@-${MV} ${OBJECTDIR}/i2c2eebw.d ${OBJECTDIR}/i2c2eebw.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c2eebw.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c2eecr.p1: i2c2eecr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c2eecr.p1.d 
	@${RM} ${OBJECTDIR}/i2c2eecr.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c2eecr.p1  i2c2eecr.c 
	@-${MV} ${OBJECTDIR}/i2c2eecr.d ${OBJECTDIR}/i2c2eecr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c2eecr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c2eepw.p1: i2c2eepw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c2eepw.p1.d 
	@${RM} ${OBJECTDIR}/i2c2eepw.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c2eepw.p1  i2c2eepw.c 
	@-${MV} ${OBJECTDIR}/i2c2eepw.d ${OBJECTDIR}/i2c2eepw.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c2eepw.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c2eerr.p1: i2c2eerr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c2eerr.p1.d 
	@${RM} ${OBJECTDIR}/i2c2eerr.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c2eerr.p1  i2c2eerr.c 
	@-${MV} ${OBJECTDIR}/i2c2eerr.d ${OBJECTDIR}/i2c2eerr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c2eerr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c2eesr.p1: i2c2eesr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c2eesr.p1.d 
	@${RM} ${OBJECTDIR}/i2c2eesr.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c2eesr.p1  i2c2eesr.c 
	@-${MV} ${OBJECTDIR}/i2c2eesr.d ${OBJECTDIR}/i2c2eesr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c2eesr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c2gets.p1: i2c2gets.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c2gets.p1.d 
	@${RM} ${OBJECTDIR}/i2c2gets.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c2gets.p1  i2c2gets.c 
	@-${MV} ${OBJECTDIR}/i2c2gets.d ${OBJECTDIR}/i2c2gets.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c2gets.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c2idle.p1: i2c2idle.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c2idle.p1.d 
	@${RM} ${OBJECTDIR}/i2c2idle.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c2idle.p1  i2c2idle.c 
	@-${MV} ${OBJECTDIR}/i2c2idle.d ${OBJECTDIR}/i2c2idle.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c2idle.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c2nack.p1: i2c2nack.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c2nack.p1.d 
	@${RM} ${OBJECTDIR}/i2c2nack.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c2nack.p1  i2c2nack.c 
	@-${MV} ${OBJECTDIR}/i2c2nack.d ${OBJECTDIR}/i2c2nack.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c2nack.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c2open.p1: i2c2open.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c2open.p1.d 
	@${RM} ${OBJECTDIR}/i2c2open.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c2open.p1  i2c2open.c 
	@-${MV} ${OBJECTDIR}/i2c2open.d ${OBJECTDIR}/i2c2open.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c2open.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c2puts.p1: i2c2puts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c2puts.p1.d 
	@${RM} ${OBJECTDIR}/i2c2puts.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c2puts.p1  i2c2puts.c 
	@-${MV} ${OBJECTDIR}/i2c2puts.d ${OBJECTDIR}/i2c2puts.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c2puts.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c2read.p1: i2c2read.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c2read.p1.d 
	@${RM} ${OBJECTDIR}/i2c2read.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c2read.p1  i2c2read.c 
	@-${MV} ${OBJECTDIR}/i2c2read.d ${OBJECTDIR}/i2c2read.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c2read.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c2rstr.p1: i2c2rstr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c2rstr.p1.d 
	@${RM} ${OBJECTDIR}/i2c2rstr.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c2rstr.p1  i2c2rstr.c 
	@-${MV} ${OBJECTDIR}/i2c2rstr.d ${OBJECTDIR}/i2c2rstr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c2rstr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c2stop.p1: i2c2stop.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c2stop.p1.d 
	@${RM} ${OBJECTDIR}/i2c2stop.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c2stop.p1  i2c2stop.c 
	@-${MV} ${OBJECTDIR}/i2c2stop.d ${OBJECTDIR}/i2c2stop.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c2stop.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c2strt.p1: i2c2strt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c2strt.p1.d 
	@${RM} ${OBJECTDIR}/i2c2strt.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c2strt.p1  i2c2strt.c 
	@-${MV} ${OBJECTDIR}/i2c2strt.d ${OBJECTDIR}/i2c2strt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c2strt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c2writ.p1: i2c2writ.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c2writ.p1.d 
	@${RM} ${OBJECTDIR}/i2c2writ.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c2writ.p1  i2c2writ.c 
	@-${MV} ${OBJECTDIR}/i2c2writ.d ${OBJECTDIR}/i2c2writ.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c2writ.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_ack.p1: i2c_ack.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_ack.p1.d 
	@${RM} ${OBJECTDIR}/i2c_ack.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c_ack.p1  i2c_ack.c 
	@-${MV} ${OBJECTDIR}/i2c_ack.d ${OBJECTDIR}/i2c_ack.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_ack.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_clos.p1: i2c_clos.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_clos.p1.d 
	@${RM} ${OBJECTDIR}/i2c_clos.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c_clos.p1  i2c_clos.c 
	@-${MV} ${OBJECTDIR}/i2c_clos.d ${OBJECTDIR}/i2c_clos.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_clos.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_dtrd.p1: i2c_dtrd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_dtrd.p1.d 
	@${RM} ${OBJECTDIR}/i2c_dtrd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c_dtrd.p1  i2c_dtrd.c 
	@-${MV} ${OBJECTDIR}/i2c_dtrd.d ${OBJECTDIR}/i2c_dtrd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_dtrd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_eeap.p1: i2c_eeap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_eeap.p1.d 
	@${RM} ${OBJECTDIR}/i2c_eeap.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c_eeap.p1  i2c_eeap.c 
	@-${MV} ${OBJECTDIR}/i2c_eeap.d ${OBJECTDIR}/i2c_eeap.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_eeap.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_eebw.p1: i2c_eebw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_eebw.p1.d 
	@${RM} ${OBJECTDIR}/i2c_eebw.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c_eebw.p1  i2c_eebw.c 
	@-${MV} ${OBJECTDIR}/i2c_eebw.d ${OBJECTDIR}/i2c_eebw.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_eebw.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_eecr.p1: i2c_eecr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_eecr.p1.d 
	@${RM} ${OBJECTDIR}/i2c_eecr.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c_eecr.p1  i2c_eecr.c 
	@-${MV} ${OBJECTDIR}/i2c_eecr.d ${OBJECTDIR}/i2c_eecr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_eecr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_eepw.p1: i2c_eepw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_eepw.p1.d 
	@${RM} ${OBJECTDIR}/i2c_eepw.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c_eepw.p1  i2c_eepw.c 
	@-${MV} ${OBJECTDIR}/i2c_eepw.d ${OBJECTDIR}/i2c_eepw.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_eepw.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_eerr.p1: i2c_eerr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_eerr.p1.d 
	@${RM} ${OBJECTDIR}/i2c_eerr.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c_eerr.p1  i2c_eerr.c 
	@-${MV} ${OBJECTDIR}/i2c_eerr.d ${OBJECTDIR}/i2c_eerr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_eerr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_eesr.p1: i2c_eesr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_eesr.p1.d 
	@${RM} ${OBJECTDIR}/i2c_eesr.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c_eesr.p1  i2c_eesr.c 
	@-${MV} ${OBJECTDIR}/i2c_eesr.d ${OBJECTDIR}/i2c_eesr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_eesr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_gets.p1: i2c_gets.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_gets.p1.d 
	@${RM} ${OBJECTDIR}/i2c_gets.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c_gets.p1  i2c_gets.c 
	@-${MV} ${OBJECTDIR}/i2c_gets.d ${OBJECTDIR}/i2c_gets.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_gets.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_idle.p1: i2c_idle.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_idle.p1.d 
	@${RM} ${OBJECTDIR}/i2c_idle.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c_idle.p1  i2c_idle.c 
	@-${MV} ${OBJECTDIR}/i2c_idle.d ${OBJECTDIR}/i2c_idle.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_idle.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_nack.p1: i2c_nack.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_nack.p1.d 
	@${RM} ${OBJECTDIR}/i2c_nack.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c_nack.p1  i2c_nack.c 
	@-${MV} ${OBJECTDIR}/i2c_nack.d ${OBJECTDIR}/i2c_nack.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_nack.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_open.p1: i2c_open.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_open.p1.d 
	@${RM} ${OBJECTDIR}/i2c_open.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c_open.p1  i2c_open.c 
	@-${MV} ${OBJECTDIR}/i2c_open.d ${OBJECTDIR}/i2c_open.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_open.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_puts.p1: i2c_puts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_puts.p1.d 
	@${RM} ${OBJECTDIR}/i2c_puts.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c_puts.p1  i2c_puts.c 
	@-${MV} ${OBJECTDIR}/i2c_puts.d ${OBJECTDIR}/i2c_puts.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_puts.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_read.p1: i2c_read.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_read.p1.d 
	@${RM} ${OBJECTDIR}/i2c_read.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c_read.p1  i2c_read.c 
	@-${MV} ${OBJECTDIR}/i2c_read.d ${OBJECTDIR}/i2c_read.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_read.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_rstr.p1: i2c_rstr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_rstr.p1.d 
	@${RM} ${OBJECTDIR}/i2c_rstr.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c_rstr.p1  i2c_rstr.c 
	@-${MV} ${OBJECTDIR}/i2c_rstr.d ${OBJECTDIR}/i2c_rstr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_rstr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_stop.p1: i2c_stop.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_stop.p1.d 
	@${RM} ${OBJECTDIR}/i2c_stop.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c_stop.p1  i2c_stop.c 
	@-${MV} ${OBJECTDIR}/i2c_stop.d ${OBJECTDIR}/i2c_stop.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_stop.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_strt.p1: i2c_strt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_strt.p1.d 
	@${RM} ${OBJECTDIR}/i2c_strt.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c_strt.p1  i2c_strt.c 
	@-${MV} ${OBJECTDIR}/i2c_strt.d ${OBJECTDIR}/i2c_strt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_strt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_writ.p1: i2c_writ.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_writ.p1.d 
	@${RM} ${OBJECTDIR}/i2c_writ.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c_writ.p1  i2c_writ.c 
	@-${MV} ${OBJECTDIR}/i2c_writ.d ${OBJECTDIR}/i2c_writ.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_writ.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/t1close.p1: t1close.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/t1close.p1.d 
	@${RM} ${OBJECTDIR}/t1close.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/t1close.p1  t1close.c 
	@-${MV} ${OBJECTDIR}/t1close.d ${OBJECTDIR}/t1close.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/t1close.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/t1open.p1: t1open.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/t1open.p1.d 
	@${RM} ${OBJECTDIR}/t1open.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/t1open.p1  t1open.c 
	@-${MV} ${OBJECTDIR}/t1open.d ${OBJECTDIR}/t1open.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/t1open.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/t1read.p1: t1read.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/t1read.p1.d 
	@${RM} ${OBJECTDIR}/t1read.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/t1read.p1  t1read.c 
	@-${MV} ${OBJECTDIR}/t1read.d ${OBJECTDIR}/t1read.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/t1read.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/t1write.p1: t1write.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/t1write.p1.d 
	@${RM} ${OBJECTDIR}/t1write.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/t1write.p1  t1write.c 
	@-${MV} ${OBJECTDIR}/t1write.d ${OBJECTDIR}/t1write.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/t1write.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/pw1close.p1: pw1close.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pw1close.p1.d 
	@${RM} ${OBJECTDIR}/pw1close.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/pw1close.p1  pw1close.c 
	@-${MV} ${OBJECTDIR}/pw1close.d ${OBJECTDIR}/pw1close.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/pw1close.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/pw1open.p1: pw1open.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pw1open.p1.d 
	@${RM} ${OBJECTDIR}/pw1open.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/pw1open.p1  pw1open.c 
	@-${MV} ${OBJECTDIR}/pw1open.d ${OBJECTDIR}/pw1open.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/pw1open.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/pw1setdc.p1: pw1setdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pw1setdc.p1.d 
	@${RM} ${OBJECTDIR}/pw1setdc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/pw1setdc.p1  pw1setdc.c 
	@-${MV} ${OBJECTDIR}/pw1setdc.d ${OBJECTDIR}/pw1setdc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/pw1setdc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/pw1setoc.p1: pw1setoc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pw1setoc.p1.d 
	@${RM} ${OBJECTDIR}/pw1setoc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/pw1setoc.p1  pw1setoc.c 
	@-${MV} ${OBJECTDIR}/pw1setoc.d ${OBJECTDIR}/pw1setoc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/pw1setoc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/busyxlcd.p1: busyxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/busyxlcd.p1.d 
	@${RM} ${OBJECTDIR}/busyxlcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/busyxlcd.p1  busyxlcd.c 
	@-${MV} ${OBJECTDIR}/busyxlcd.d ${OBJECTDIR}/busyxlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/busyxlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/main.p1  main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/openxlcd.p1: openxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/openxlcd.p1.d 
	@${RM} ${OBJECTDIR}/openxlcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/openxlcd.p1  openxlcd.c 
	@-${MV} ${OBJECTDIR}/openxlcd.d ${OBJECTDIR}/openxlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/openxlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/putrxlcd.p1: putrxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/putrxlcd.p1.d 
	@${RM} ${OBJECTDIR}/putrxlcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/putrxlcd.p1  putrxlcd.c 
	@-${MV} ${OBJECTDIR}/putrxlcd.d ${OBJECTDIR}/putrxlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/putrxlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/putsxlcd.p1: putsxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/putsxlcd.p1.d 
	@${RM} ${OBJECTDIR}/putsxlcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/putsxlcd.p1  putsxlcd.c 
	@-${MV} ${OBJECTDIR}/putsxlcd.d ${OBJECTDIR}/putsxlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/putsxlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/readaddr.p1: readaddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/readaddr.p1.d 
	@${RM} ${OBJECTDIR}/readaddr.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/readaddr.p1  readaddr.c 
	@-${MV} ${OBJECTDIR}/readaddr.d ${OBJECTDIR}/readaddr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/readaddr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/readdata.p1: readdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/readdata.p1.d 
	@${RM} ${OBJECTDIR}/readdata.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/readdata.p1  readdata.c 
	@-${MV} ${OBJECTDIR}/readdata.d ${OBJECTDIR}/readdata.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/readdata.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/setcgram.p1: setcgram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/setcgram.p1.d 
	@${RM} ${OBJECTDIR}/setcgram.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/setcgram.p1  setcgram.c 
	@-${MV} ${OBJECTDIR}/setcgram.d ${OBJECTDIR}/setcgram.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/setcgram.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/setddram.p1: setddram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/setddram.p1.d 
	@${RM} ${OBJECTDIR}/setddram.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/setddram.p1  setddram.c 
	@-${MV} ${OBJECTDIR}/setddram.d ${OBJECTDIR}/setddram.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/setddram.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/wcmdxlcd.p1: wcmdxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/wcmdxlcd.p1.d 
	@${RM} ${OBJECTDIR}/wcmdxlcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/wcmdxlcd.p1  wcmdxlcd.c 
	@-${MV} ${OBJECTDIR}/wcmdxlcd.d ${OBJECTDIR}/wcmdxlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/wcmdxlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/writdata.p1: writdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/writdata.p1.d 
	@${RM} ${OBJECTDIR}/writdata.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/writdata.p1  writdata.c 
	@-${MV} ${OBJECTDIR}/writdata.d ${OBJECTDIR}/writdata.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/writdata.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/adcbusy.p1: adcbusy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/adcbusy.p1.d 
	@${RM} ${OBJECTDIR}/adcbusy.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/adcbusy.p1  adcbusy.c 
	@-${MV} ${OBJECTDIR}/adcbusy.d ${OBJECTDIR}/adcbusy.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/adcbusy.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/adcclose.p1: adcclose.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/adcclose.p1.d 
	@${RM} ${OBJECTDIR}/adcclose.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/adcclose.p1  adcclose.c 
	@-${MV} ${OBJECTDIR}/adcclose.d ${OBJECTDIR}/adcclose.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/adcclose.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/adcconv.p1: adcconv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/adcconv.p1.d 
	@${RM} ${OBJECTDIR}/adcconv.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/adcconv.p1  adcconv.c 
	@-${MV} ${OBJECTDIR}/adcconv.d ${OBJECTDIR}/adcconv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/adcconv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/adcopen.p1: adcopen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/adcopen.p1.d 
	@${RM} ${OBJECTDIR}/adcopen.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/adcopen.p1  adcopen.c 
	@-${MV} ${OBJECTDIR}/adcopen.d ${OBJECTDIR}/adcopen.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/adcopen.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/adcread.p1: adcread.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/adcread.p1.d 
	@${RM} ${OBJECTDIR}/adcread.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/adcread.p1  adcread.c 
	@-${MV} ${OBJECTDIR}/adcread.d ${OBJECTDIR}/adcread.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/adcread.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/adcselchconv.p1: adcselchconv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/adcselchconv.p1.d 
	@${RM} ${OBJECTDIR}/adcselchconv.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/adcselchconv.p1  adcselchconv.c 
	@-${MV} ${OBJECTDIR}/adcselchconv.d ${OBJECTDIR}/adcselchconv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/adcselchconv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/adcsetch.p1: adcsetch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/adcsetch.p1.d 
	@${RM} ${OBJECTDIR}/adcsetch.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/adcsetch.p1  adcsetch.c 
	@-${MV} ${OBJECTDIR}/adcsetch.d ${OBJECTDIR}/adcsetch.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/adcsetch.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c1ack.p1: i2c1ack.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c1ack.p1.d 
	@${RM} ${OBJECTDIR}/i2c1ack.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c1ack.p1  i2c1ack.c 
	@-${MV} ${OBJECTDIR}/i2c1ack.d ${OBJECTDIR}/i2c1ack.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c1ack.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c1clos.p1: i2c1clos.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c1clos.p1.d 
	@${RM} ${OBJECTDIR}/i2c1clos.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c1clos.p1  i2c1clos.c 
	@-${MV} ${OBJECTDIR}/i2c1clos.d ${OBJECTDIR}/i2c1clos.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c1clos.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c1dtrd.p1: i2c1dtrd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c1dtrd.p1.d 
	@${RM} ${OBJECTDIR}/i2c1dtrd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c1dtrd.p1  i2c1dtrd.c 
	@-${MV} ${OBJECTDIR}/i2c1dtrd.d ${OBJECTDIR}/i2c1dtrd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c1dtrd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c1eeap.p1: i2c1eeap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c1eeap.p1.d 
	@${RM} ${OBJECTDIR}/i2c1eeap.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c1eeap.p1  i2c1eeap.c 
	@-${MV} ${OBJECTDIR}/i2c1eeap.d ${OBJECTDIR}/i2c1eeap.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c1eeap.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c1eebw.p1: i2c1eebw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c1eebw.p1.d 
	@${RM} ${OBJECTDIR}/i2c1eebw.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c1eebw.p1  i2c1eebw.c 
	@-${MV} ${OBJECTDIR}/i2c1eebw.d ${OBJECTDIR}/i2c1eebw.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c1eebw.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c1eecr.p1: i2c1eecr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c1eecr.p1.d 
	@${RM} ${OBJECTDIR}/i2c1eecr.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c1eecr.p1  i2c1eecr.c 
	@-${MV} ${OBJECTDIR}/i2c1eecr.d ${OBJECTDIR}/i2c1eecr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c1eecr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c1eepw.p1: i2c1eepw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c1eepw.p1.d 
	@${RM} ${OBJECTDIR}/i2c1eepw.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c1eepw.p1  i2c1eepw.c 
	@-${MV} ${OBJECTDIR}/i2c1eepw.d ${OBJECTDIR}/i2c1eepw.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c1eepw.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c1eerr.p1: i2c1eerr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c1eerr.p1.d 
	@${RM} ${OBJECTDIR}/i2c1eerr.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c1eerr.p1  i2c1eerr.c 
	@-${MV} ${OBJECTDIR}/i2c1eerr.d ${OBJECTDIR}/i2c1eerr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c1eerr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c1eesr.p1: i2c1eesr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c1eesr.p1.d 
	@${RM} ${OBJECTDIR}/i2c1eesr.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c1eesr.p1  i2c1eesr.c 
	@-${MV} ${OBJECTDIR}/i2c1eesr.d ${OBJECTDIR}/i2c1eesr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c1eesr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c1gets.p1: i2c1gets.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c1gets.p1.d 
	@${RM} ${OBJECTDIR}/i2c1gets.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c1gets.p1  i2c1gets.c 
	@-${MV} ${OBJECTDIR}/i2c1gets.d ${OBJECTDIR}/i2c1gets.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c1gets.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c1idle.p1: i2c1idle.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c1idle.p1.d 
	@${RM} ${OBJECTDIR}/i2c1idle.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c1idle.p1  i2c1idle.c 
	@-${MV} ${OBJECTDIR}/i2c1idle.d ${OBJECTDIR}/i2c1idle.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c1idle.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c1nack.p1: i2c1nack.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c1nack.p1.d 
	@${RM} ${OBJECTDIR}/i2c1nack.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c1nack.p1  i2c1nack.c 
	@-${MV} ${OBJECTDIR}/i2c1nack.d ${OBJECTDIR}/i2c1nack.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c1nack.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c1open.p1: i2c1open.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c1open.p1.d 
	@${RM} ${OBJECTDIR}/i2c1open.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c1open.p1  i2c1open.c 
	@-${MV} ${OBJECTDIR}/i2c1open.d ${OBJECTDIR}/i2c1open.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c1open.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c1puts.p1: i2c1puts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c1puts.p1.d 
	@${RM} ${OBJECTDIR}/i2c1puts.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c1puts.p1  i2c1puts.c 
	@-${MV} ${OBJECTDIR}/i2c1puts.d ${OBJECTDIR}/i2c1puts.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c1puts.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c1read.p1: i2c1read.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c1read.p1.d 
	@${RM} ${OBJECTDIR}/i2c1read.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c1read.p1  i2c1read.c 
	@-${MV} ${OBJECTDIR}/i2c1read.d ${OBJECTDIR}/i2c1read.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c1read.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c1rstr.p1: i2c1rstr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c1rstr.p1.d 
	@${RM} ${OBJECTDIR}/i2c1rstr.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c1rstr.p1  i2c1rstr.c 
	@-${MV} ${OBJECTDIR}/i2c1rstr.d ${OBJECTDIR}/i2c1rstr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c1rstr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c1stop.p1: i2c1stop.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c1stop.p1.d 
	@${RM} ${OBJECTDIR}/i2c1stop.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c1stop.p1  i2c1stop.c 
	@-${MV} ${OBJECTDIR}/i2c1stop.d ${OBJECTDIR}/i2c1stop.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c1stop.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c1strt.p1: i2c1strt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c1strt.p1.d 
	@${RM} ${OBJECTDIR}/i2c1strt.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c1strt.p1  i2c1strt.c 
	@-${MV} ${OBJECTDIR}/i2c1strt.d ${OBJECTDIR}/i2c1strt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c1strt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c1writ.p1: i2c1writ.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c1writ.p1.d 
	@${RM} ${OBJECTDIR}/i2c1writ.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c1writ.p1  i2c1writ.c 
	@-${MV} ${OBJECTDIR}/i2c1writ.d ${OBJECTDIR}/i2c1writ.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c1writ.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c2ack.p1: i2c2ack.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c2ack.p1.d 
	@${RM} ${OBJECTDIR}/i2c2ack.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c2ack.p1  i2c2ack.c 
	@-${MV} ${OBJECTDIR}/i2c2ack.d ${OBJECTDIR}/i2c2ack.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c2ack.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c2clos.p1: i2c2clos.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c2clos.p1.d 
	@${RM} ${OBJECTDIR}/i2c2clos.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c2clos.p1  i2c2clos.c 
	@-${MV} ${OBJECTDIR}/i2c2clos.d ${OBJECTDIR}/i2c2clos.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c2clos.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c2dtrd.p1: i2c2dtrd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c2dtrd.p1.d 
	@${RM} ${OBJECTDIR}/i2c2dtrd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c2dtrd.p1  i2c2dtrd.c 
	@-${MV} ${OBJECTDIR}/i2c2dtrd.d ${OBJECTDIR}/i2c2dtrd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c2dtrd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c2eeap.p1: i2c2eeap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c2eeap.p1.d 
	@${RM} ${OBJECTDIR}/i2c2eeap.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c2eeap.p1  i2c2eeap.c 
	@-${MV} ${OBJECTDIR}/i2c2eeap.d ${OBJECTDIR}/i2c2eeap.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c2eeap.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c2eebw.p1: i2c2eebw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c2eebw.p1.d 
	@${RM} ${OBJECTDIR}/i2c2eebw.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c2eebw.p1  i2c2eebw.c 
	@-${MV} ${OBJECTDIR}/i2c2eebw.d ${OBJECTDIR}/i2c2eebw.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c2eebw.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c2eecr.p1: i2c2eecr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c2eecr.p1.d 
	@${RM} ${OBJECTDIR}/i2c2eecr.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c2eecr.p1  i2c2eecr.c 
	@-${MV} ${OBJECTDIR}/i2c2eecr.d ${OBJECTDIR}/i2c2eecr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c2eecr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c2eepw.p1: i2c2eepw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c2eepw.p1.d 
	@${RM} ${OBJECTDIR}/i2c2eepw.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c2eepw.p1  i2c2eepw.c 
	@-${MV} ${OBJECTDIR}/i2c2eepw.d ${OBJECTDIR}/i2c2eepw.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c2eepw.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c2eerr.p1: i2c2eerr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c2eerr.p1.d 
	@${RM} ${OBJECTDIR}/i2c2eerr.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c2eerr.p1  i2c2eerr.c 
	@-${MV} ${OBJECTDIR}/i2c2eerr.d ${OBJECTDIR}/i2c2eerr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c2eerr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c2eesr.p1: i2c2eesr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c2eesr.p1.d 
	@${RM} ${OBJECTDIR}/i2c2eesr.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c2eesr.p1  i2c2eesr.c 
	@-${MV} ${OBJECTDIR}/i2c2eesr.d ${OBJECTDIR}/i2c2eesr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c2eesr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c2gets.p1: i2c2gets.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c2gets.p1.d 
	@${RM} ${OBJECTDIR}/i2c2gets.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c2gets.p1  i2c2gets.c 
	@-${MV} ${OBJECTDIR}/i2c2gets.d ${OBJECTDIR}/i2c2gets.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c2gets.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c2idle.p1: i2c2idle.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c2idle.p1.d 
	@${RM} ${OBJECTDIR}/i2c2idle.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c2idle.p1  i2c2idle.c 
	@-${MV} ${OBJECTDIR}/i2c2idle.d ${OBJECTDIR}/i2c2idle.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c2idle.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c2nack.p1: i2c2nack.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c2nack.p1.d 
	@${RM} ${OBJECTDIR}/i2c2nack.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c2nack.p1  i2c2nack.c 
	@-${MV} ${OBJECTDIR}/i2c2nack.d ${OBJECTDIR}/i2c2nack.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c2nack.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c2open.p1: i2c2open.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c2open.p1.d 
	@${RM} ${OBJECTDIR}/i2c2open.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c2open.p1  i2c2open.c 
	@-${MV} ${OBJECTDIR}/i2c2open.d ${OBJECTDIR}/i2c2open.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c2open.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c2puts.p1: i2c2puts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c2puts.p1.d 
	@${RM} ${OBJECTDIR}/i2c2puts.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c2puts.p1  i2c2puts.c 
	@-${MV} ${OBJECTDIR}/i2c2puts.d ${OBJECTDIR}/i2c2puts.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c2puts.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c2read.p1: i2c2read.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c2read.p1.d 
	@${RM} ${OBJECTDIR}/i2c2read.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c2read.p1  i2c2read.c 
	@-${MV} ${OBJECTDIR}/i2c2read.d ${OBJECTDIR}/i2c2read.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c2read.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c2rstr.p1: i2c2rstr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c2rstr.p1.d 
	@${RM} ${OBJECTDIR}/i2c2rstr.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c2rstr.p1  i2c2rstr.c 
	@-${MV} ${OBJECTDIR}/i2c2rstr.d ${OBJECTDIR}/i2c2rstr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c2rstr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c2stop.p1: i2c2stop.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c2stop.p1.d 
	@${RM} ${OBJECTDIR}/i2c2stop.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c2stop.p1  i2c2stop.c 
	@-${MV} ${OBJECTDIR}/i2c2stop.d ${OBJECTDIR}/i2c2stop.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c2stop.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c2strt.p1: i2c2strt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c2strt.p1.d 
	@${RM} ${OBJECTDIR}/i2c2strt.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c2strt.p1  i2c2strt.c 
	@-${MV} ${OBJECTDIR}/i2c2strt.d ${OBJECTDIR}/i2c2strt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c2strt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c2writ.p1: i2c2writ.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c2writ.p1.d 
	@${RM} ${OBJECTDIR}/i2c2writ.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c2writ.p1  i2c2writ.c 
	@-${MV} ${OBJECTDIR}/i2c2writ.d ${OBJECTDIR}/i2c2writ.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c2writ.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_ack.p1: i2c_ack.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_ack.p1.d 
	@${RM} ${OBJECTDIR}/i2c_ack.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c_ack.p1  i2c_ack.c 
	@-${MV} ${OBJECTDIR}/i2c_ack.d ${OBJECTDIR}/i2c_ack.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_ack.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_clos.p1: i2c_clos.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_clos.p1.d 
	@${RM} ${OBJECTDIR}/i2c_clos.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c_clos.p1  i2c_clos.c 
	@-${MV} ${OBJECTDIR}/i2c_clos.d ${OBJECTDIR}/i2c_clos.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_clos.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_dtrd.p1: i2c_dtrd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_dtrd.p1.d 
	@${RM} ${OBJECTDIR}/i2c_dtrd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c_dtrd.p1  i2c_dtrd.c 
	@-${MV} ${OBJECTDIR}/i2c_dtrd.d ${OBJECTDIR}/i2c_dtrd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_dtrd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_eeap.p1: i2c_eeap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_eeap.p1.d 
	@${RM} ${OBJECTDIR}/i2c_eeap.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c_eeap.p1  i2c_eeap.c 
	@-${MV} ${OBJECTDIR}/i2c_eeap.d ${OBJECTDIR}/i2c_eeap.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_eeap.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_eebw.p1: i2c_eebw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_eebw.p1.d 
	@${RM} ${OBJECTDIR}/i2c_eebw.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c_eebw.p1  i2c_eebw.c 
	@-${MV} ${OBJECTDIR}/i2c_eebw.d ${OBJECTDIR}/i2c_eebw.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_eebw.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_eecr.p1: i2c_eecr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_eecr.p1.d 
	@${RM} ${OBJECTDIR}/i2c_eecr.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c_eecr.p1  i2c_eecr.c 
	@-${MV} ${OBJECTDIR}/i2c_eecr.d ${OBJECTDIR}/i2c_eecr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_eecr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_eepw.p1: i2c_eepw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_eepw.p1.d 
	@${RM} ${OBJECTDIR}/i2c_eepw.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c_eepw.p1  i2c_eepw.c 
	@-${MV} ${OBJECTDIR}/i2c_eepw.d ${OBJECTDIR}/i2c_eepw.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_eepw.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_eerr.p1: i2c_eerr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_eerr.p1.d 
	@${RM} ${OBJECTDIR}/i2c_eerr.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c_eerr.p1  i2c_eerr.c 
	@-${MV} ${OBJECTDIR}/i2c_eerr.d ${OBJECTDIR}/i2c_eerr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_eerr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_eesr.p1: i2c_eesr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_eesr.p1.d 
	@${RM} ${OBJECTDIR}/i2c_eesr.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c_eesr.p1  i2c_eesr.c 
	@-${MV} ${OBJECTDIR}/i2c_eesr.d ${OBJECTDIR}/i2c_eesr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_eesr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_gets.p1: i2c_gets.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_gets.p1.d 
	@${RM} ${OBJECTDIR}/i2c_gets.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c_gets.p1  i2c_gets.c 
	@-${MV} ${OBJECTDIR}/i2c_gets.d ${OBJECTDIR}/i2c_gets.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_gets.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_idle.p1: i2c_idle.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_idle.p1.d 
	@${RM} ${OBJECTDIR}/i2c_idle.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c_idle.p1  i2c_idle.c 
	@-${MV} ${OBJECTDIR}/i2c_idle.d ${OBJECTDIR}/i2c_idle.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_idle.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_nack.p1: i2c_nack.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_nack.p1.d 
	@${RM} ${OBJECTDIR}/i2c_nack.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c_nack.p1  i2c_nack.c 
	@-${MV} ${OBJECTDIR}/i2c_nack.d ${OBJECTDIR}/i2c_nack.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_nack.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_open.p1: i2c_open.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_open.p1.d 
	@${RM} ${OBJECTDIR}/i2c_open.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c_open.p1  i2c_open.c 
	@-${MV} ${OBJECTDIR}/i2c_open.d ${OBJECTDIR}/i2c_open.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_open.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_puts.p1: i2c_puts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_puts.p1.d 
	@${RM} ${OBJECTDIR}/i2c_puts.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c_puts.p1  i2c_puts.c 
	@-${MV} ${OBJECTDIR}/i2c_puts.d ${OBJECTDIR}/i2c_puts.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_puts.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_read.p1: i2c_read.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_read.p1.d 
	@${RM} ${OBJECTDIR}/i2c_read.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c_read.p1  i2c_read.c 
	@-${MV} ${OBJECTDIR}/i2c_read.d ${OBJECTDIR}/i2c_read.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_read.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_rstr.p1: i2c_rstr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_rstr.p1.d 
	@${RM} ${OBJECTDIR}/i2c_rstr.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c_rstr.p1  i2c_rstr.c 
	@-${MV} ${OBJECTDIR}/i2c_rstr.d ${OBJECTDIR}/i2c_rstr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_rstr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_stop.p1: i2c_stop.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_stop.p1.d 
	@${RM} ${OBJECTDIR}/i2c_stop.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c_stop.p1  i2c_stop.c 
	@-${MV} ${OBJECTDIR}/i2c_stop.d ${OBJECTDIR}/i2c_stop.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_stop.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_strt.p1: i2c_strt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_strt.p1.d 
	@${RM} ${OBJECTDIR}/i2c_strt.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c_strt.p1  i2c_strt.c 
	@-${MV} ${OBJECTDIR}/i2c_strt.d ${OBJECTDIR}/i2c_strt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_strt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/i2c_writ.p1: i2c_writ.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c_writ.p1.d 
	@${RM} ${OBJECTDIR}/i2c_writ.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/i2c_writ.p1  i2c_writ.c 
	@-${MV} ${OBJECTDIR}/i2c_writ.d ${OBJECTDIR}/i2c_writ.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/i2c_writ.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/t1close.p1: t1close.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/t1close.p1.d 
	@${RM} ${OBJECTDIR}/t1close.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/t1close.p1  t1close.c 
	@-${MV} ${OBJECTDIR}/t1close.d ${OBJECTDIR}/t1close.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/t1close.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/t1open.p1: t1open.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/t1open.p1.d 
	@${RM} ${OBJECTDIR}/t1open.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/t1open.p1  t1open.c 
	@-${MV} ${OBJECTDIR}/t1open.d ${OBJECTDIR}/t1open.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/t1open.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/t1read.p1: t1read.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/t1read.p1.d 
	@${RM} ${OBJECTDIR}/t1read.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/t1read.p1  t1read.c 
	@-${MV} ${OBJECTDIR}/t1read.d ${OBJECTDIR}/t1read.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/t1read.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/t1write.p1: t1write.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/t1write.p1.d 
	@${RM} ${OBJECTDIR}/t1write.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/t1write.p1  t1write.c 
	@-${MV} ${OBJECTDIR}/t1write.d ${OBJECTDIR}/t1write.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/t1write.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/pw1close.p1: pw1close.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pw1close.p1.d 
	@${RM} ${OBJECTDIR}/pw1close.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/pw1close.p1  pw1close.c 
	@-${MV} ${OBJECTDIR}/pw1close.d ${OBJECTDIR}/pw1close.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/pw1close.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/pw1open.p1: pw1open.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pw1open.p1.d 
	@${RM} ${OBJECTDIR}/pw1open.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/pw1open.p1  pw1open.c 
	@-${MV} ${OBJECTDIR}/pw1open.d ${OBJECTDIR}/pw1open.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/pw1open.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/pw1setdc.p1: pw1setdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pw1setdc.p1.d 
	@${RM} ${OBJECTDIR}/pw1setdc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/pw1setdc.p1  pw1setdc.c 
	@-${MV} ${OBJECTDIR}/pw1setdc.d ${OBJECTDIR}/pw1setdc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/pw1setdc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/pw1setoc.p1: pw1setoc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pw1setoc.p1.d 
	@${RM} ${OBJECTDIR}/pw1setoc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/pw1setoc.p1  pw1setoc.c 
	@-${MV} ${OBJECTDIR}/pw1setoc.d ${OBJECTDIR}/pw1setoc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/pw1setoc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/SystemnaheProgrammierung.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/SystemnaheProgrammierung.${IMAGE_TYPE}.map  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     --rom=default,-7dc0-7fff --ram=default,-5f4-5ff,-f9c-f9c,-fd4-fd4,-fdb-fdf,-fe3-fe7,-feb-fef,-ffd-fff  $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/SystemnaheProgrammierung.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/SystemnaheProgrammierung.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/SystemnaheProgrammierung.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/SystemnaheProgrammierung.${IMAGE_TYPE}.map  --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../../../opt/microchip/xc8/v1.44/include" -I"../../../../../../opt/microchip/xc8/v1.44/include/plib" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/SystemnaheProgrammierung.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
