LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

GST_MAJORMINOR:= 0.10

LOCAL_SRC_FILES:= \
	gnl.c			\
	gnlobject.c		\
	gnlcomposition.c	\
	gnloperation.c		\
	gnlsource.c		\
	gnlfilesource.c


LOCAL_SHARED_LIBRARIES := 	\
	libgstreamer-0.10	\
	libglib-2.0		\
	libgthread-2.0		\
	libgmodule-2.0		\
	libgobject-2.0

LOCAL_MODULE:= libgnl

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)   \
	external/gstreamer	   \
	external/gstreamer/android/arch/$(TARGET_ARCH)	  \
	external/gstreamer/gst	\
	external/gstreamer/gst/android	\
	external/gstreamer/libs \
	external/glib   \
	external/glib/android   \
	external/glib/glib   \
	external/glib/gmodule   \
	external/glib/gobject  \
	external/glib/gthread


LOCAL_CFLAGS := \
	-DHAVE_CONFIG_H			

include $(BUILD_PLUGIN_LIBRARY)
