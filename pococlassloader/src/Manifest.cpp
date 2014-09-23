#include "Plugin.%CppHeaderSuffix%"

#include "HelloPlugin.%CppHeaderSuffix%"
#include "CurrentTimePlugin.%CppHeaderSuffix%"

#include <Poco/ClassLibrary.h>

POCO_BEGIN_MANIFEST(Plugin)
	POCO_EXPORT_CLASS(HelloPlugin)
	POCO_EXPORT_CLASS(CurrentTimePlugin)
POCO_END_MANIFEST

