#ifndef HelloPlugin_INCLUDED
#define HelloPlugin_INCLUDED

#include "Plugin.%CppHeaderSuffix%"

class HelloPlugin : public Plugin
{
public:
	virtual ~HelloPlugin();

	virtual void exec();
};

#endif // HelloPlugin_INCLUDED
