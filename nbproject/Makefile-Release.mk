#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux-x86
CND_CONF=Release
CND_DISTDIR=dist

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=build/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/main.o \
	${OBJECTDIR}/SocketInterface.o \
	${OBJECTDIR}/xmlParser.o \
	${OBJECTDIR}/CommandInterface.o \
	${OBJECTDIR}/Initialize.o \
	${OBJECTDIR}/Interface.o \
	${OBJECTDIR}/Inotify.o \
	${OBJECTDIR}/FileSynchronize.o \
	${OBJECTDIR}/QueueFilter.o \
	${OBJECTDIR}/QueueRetry.o \
	${OBJECTDIR}/CdnRefreshInterface.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
# LDLIBSOPTIONS=-Llib -L/usr/local/lib -static -lboost_thread -lboost_regex -lboost_date_time -lpthread
LDLIBSOPTIONS=-Llib -L/lib64 -L/usr/lib64 -L/usr/local/lib -lboost_thread -lboost_regex -lboost_system -lboost_date_time -lpthread 

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-Release.mk dist/Release/GNU-Linux-x86/sersync2

dist/Release/GNU-Linux-x86/sersync2: ${OBJECTFILES}
	${MKDIR} -p dist/Release/GNU-Linux-x86
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/sersync2 -s ${OBJECTFILES} ${LDLIBSOPTIONS} 

${OBJECTDIR}/main.o: main.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -O2 -Iinclude -I/usr/local/include -MMD -MP -MF $@.d -o ${OBJECTDIR}/main.o main.cpp

${OBJECTDIR}/SocketInterface.o: SocketInterface.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -O2 -Iinclude -I/usr/local/include -MMD -MP -MF $@.d -o ${OBJECTDIR}/SocketInterface.o SocketInterface.cpp

${OBJECTDIR}/xmlParser.o: xmlParser.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -O2 -Iinclude -I/usr/local/include -MMD -MP -MF $@.d -o ${OBJECTDIR}/xmlParser.o xmlParser.cpp

${OBJECTDIR}/CommandInterface.o: CommandInterface.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -O2 -Iinclude -I/usr/local/include -MMD -MP -MF $@.d -o ${OBJECTDIR}/CommandInterface.o CommandInterface.cpp

${OBJECTDIR}/Initialize.o: Initialize.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -O2 -Iinclude -I/usr/local/include -MMD -MP -MF $@.d -o ${OBJECTDIR}/Initialize.o Initialize.cpp

${OBJECTDIR}/Interface.o: Interface.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -O2 -Iinclude -I/usr/local/include -MMD -MP -MF $@.d -o ${OBJECTDIR}/Interface.o Interface.cpp

${OBJECTDIR}/Inotify.o: Inotify.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -O2 -Iinclude -I/usr/local/include -MMD -MP -MF $@.d -o ${OBJECTDIR}/Inotify.o Inotify.cpp

${OBJECTDIR}/FileSynchronize.o: FileSynchronize.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -O2 -Iinclude -I/usr/local/include -MMD -MP -MF $@.d -o ${OBJECTDIR}/FileSynchronize.o FileSynchronize.cpp

${OBJECTDIR}/QueueFilter.o: QueueFilter.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -O2 -Iinclude -I/usr/local/include -MMD -MP -MF $@.d -o ${OBJECTDIR}/QueueFilter.o QueueFilter.cpp

${OBJECTDIR}/QueueRetry.o: QueueRetry.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -O2 -Iinclude -I/usr/local/include -MMD -MP -MF $@.d -o ${OBJECTDIR}/QueueRetry.o QueueRetry.cpp

${OBJECTDIR}/CdnRefreshInterface.o: CdnRefreshInterface.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -O2 -Iinclude -I/usr/local/include -MMD -MP -MF $@.d -o ${OBJECTDIR}/CdnRefreshInterface.o CdnRefreshInterface.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/Release
	${RM} dist/Release/GNU-Linux-x86/sersync2

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
