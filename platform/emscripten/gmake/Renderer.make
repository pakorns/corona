# GNU Make project makefile autogenerated by Premake
ifndef config
  config=Debug
endif

ifndef verbose
  SILENT = @
endif

CC = gcc
CXX = g++
AR = ar

ifndef RESCOMP
  ifdef WINDRES
    RESCOMP = $(WINDRES)
  else
    RESCOMP = windres
  endif
endif

ifeq ($(config),Debug)
  OBJDIR     = obj/Debug/Renderer
  # TARGETDIR  = ../../../Build/gmake/bin/Debug
  TARGETDIR  = obj/Debug
  TARGET     = $(TARGETDIR)/libRenderer.a
  DEFINES   += -DRtt_DEBUG -DLUA_USE_APICHECK -DRtt_EMSCRIPTEN_ENV
  INCLUDES  += -I../../../librtt -I../system/include
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -g
  ALL_CXXFLAGS  += $(CXXFLAGS) $(ALL_CFLAGS) -fno-exceptions -fno-rtti
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS)
  LDDEPS    +=
  LIBS      += $(LDDEPS)
  LINKCMD    = $(AR) -rcs $(TARGET) $(OBJECTS)
  #LINKCMD    = $(CC) -o $(TARGET) $(OBJECTS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),Release)
  OBJDIR     = obj/Release/Renderer
  # TARGETDIR  = ../../../Build/gmake/bin/Release
  TARGETDIR  = obj/Release
  TARGET     = $(TARGETDIR)/libRenderer.a
  DEFINES   += -DNDEBUG -DRtt_EMSCRIPTEN_ENV
  INCLUDES  += -I../../../librtt -I../system/include
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -O2
  ALL_CXXFLAGS  += $(CXXFLAGS) $(ALL_CFLAGS) -fno-exceptions -fno-rtti
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -Wl,-x
  LDDEPS    +=
  LIBS      += $(LDDEPS)
  LINKCMD    = $(AR) -rcs $(TARGET) $(OBJECTS)
  #LINKCMD    = $(CC) -o $(TARGET) $(OBJECTS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

OBJECTS := \
	$(OBJDIR)/Rtt_CommandBuffer.o \
	$(OBJDIR)/Rtt_CPUResource.o \
	$(OBJDIR)/Rtt_FrameBufferObject.o \
	$(OBJDIR)/Rtt_Matrix_Renderer.o \
	$(OBJDIR)/Rtt_GeometryPool.o \
	$(OBJDIR)/Rtt_GL.o \
	$(OBJDIR)/Rtt_GLCommandBuffer.o \
	$(OBJDIR)/Rtt_GLFrameBufferObject.o \
	$(OBJDIR)/Rtt_GLGeometry.o \
	$(OBJDIR)/Rtt_GLProgram.o \
	$(OBJDIR)/Rtt_GLRenderer.o \
	$(OBJDIR)/Rtt_GLTexture.o \
	$(OBJDIR)/Rtt_GPUResource.o \
	$(OBJDIR)/Rtt_HighPrecisionTime.o \
	$(OBJDIR)/Rtt_Geometry_Renderer.o \
	$(OBJDIR)/Rtt_Program.o \
	$(OBJDIR)/Rtt_ProgramFactory.o \
	$(OBJDIR)/Rtt_RenderData.o \
	$(OBJDIR)/Rtt_Renderer.o \
	$(OBJDIR)/Rtt_RenderTypes.o \
	$(OBJDIR)/Rtt_Texture.o \
	$(OBJDIR)/Rtt_TextureBitmap.o \
	$(OBJDIR)/Rtt_TextureVolatile.o \
	$(OBJDIR)/Rtt_Uniform.o \
	$(OBJDIR)/Rtt_VideoTexture.o \

RESOURCES := \

SHELLTYPE := msdos
ifeq (,$(ComSpec)$(COMSPEC))
  SHELLTYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(SHELL)))
  SHELLTYPE := posix
endif

.PHONY: clean prebuild prelink

all: $(TARGETDIR) $(OBJDIR) prebuild prelink $(TARGET)
	@:

$(TARGET): $(GCH) $(OBJECTS) $(LDDEPS) $(RESOURCES)
	@echo Linking Renderer
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning Renderer
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild:
	$(PREBUILDCMDS)

prelink:
	$(PRELINKCMDS)

ifneq (,$(PCH))
$(GCH): $(PCH)
	@echo $(notdir $<)
	$(SILENT) $(CXX) -x c++-header $(ALL_CXXFLAGS) -MMD -MP $(DEFINES) $(INCLUDES) -o "$@" -MF "$(@:%.gch=%.d)" -c "$<"
endif

$(OBJDIR)/Rtt_CommandBuffer.o: ../../../librtt/Renderer/Rtt_CommandBuffer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/Rtt_CPUResource.o: ../../../librtt/Renderer/Rtt_CPUResource.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/Rtt_FrameBufferObject.o: ../../../librtt/Renderer/Rtt_FrameBufferObject.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/Rtt_Matrix_Renderer.o: ../../../librtt/Renderer/Rtt_Matrix_Renderer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/Rtt_GeometryPool.o: ../../../librtt/Renderer/Rtt_GeometryPool.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/Rtt_GL.o: ../../../librtt/Renderer/Rtt_GL.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/Rtt_GLCommandBuffer.o: ../../../librtt/Renderer/Rtt_GLCommandBuffer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/Rtt_GLFrameBufferObject.o: ../../../librtt/Renderer/Rtt_GLFrameBufferObject.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/Rtt_GLGeometry.o: ../../../librtt/Renderer/Rtt_GLGeometry.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/Rtt_GLProgram.o: ../../../librtt/Renderer/Rtt_GLProgram.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/Rtt_GLRenderer.o: ../../../librtt/Renderer/Rtt_GLRenderer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/Rtt_GLTexture.o: ../../../librtt/Renderer/Rtt_GLTexture.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/Rtt_GPUResource.o: ../../../librtt/Renderer/Rtt_GPUResource.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/Rtt_HighPrecisionTime.o: ../../../librtt/Renderer/Rtt_HighPrecisionTime.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/Rtt_Geometry_Renderer.o: ../../../librtt/Renderer/Rtt_Geometry_Renderer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/Rtt_Program.o: ../../../librtt/Renderer/Rtt_Program.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/Rtt_ProgramFactory.o: ../../../librtt/Renderer/Rtt_ProgramFactory.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/Rtt_RenderData.o: ../../../librtt/Renderer/Rtt_RenderData.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/Rtt_Renderer.o: ../../../librtt/Renderer/Rtt_Renderer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/Rtt_RenderTypes.o: ../../../librtt/Renderer/Rtt_RenderTypes.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/Rtt_Texture.o: ../../../librtt/Renderer/Rtt_Texture.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/Rtt_TextureBitmap.o: ../../../librtt/Renderer/Rtt_TextureBitmap.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/Rtt_TextureVolatile.o: ../../../librtt/Renderer/Rtt_TextureVolatile.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/Rtt_Uniform.o: ../../../librtt/Renderer/Rtt_Uniform.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/Rtt_VideoTexture.o: ../../../librtt/Renderer/Rtt_VideoTexture.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(OBJDIR)/$(notdir $(PCH)).d
endif
