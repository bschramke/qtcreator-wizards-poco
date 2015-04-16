#ifndef %ProjectName:u%_IPLUGIN_%CppHeaderSuffix:u%
#define %ProjectName:u%_IPLUGIN_%CppHeaderSuffix:u%

#include "api_global.%CppHeaderSuffix%"

#include <QtPlugin>

class %ProjectName:u%_API IPlugin
{
public:
  virtual ~IPlugin(){};

  virtual void doSomthingUsefull() = 0;

};

Q_DECLARE_INTERFACE(IPlugin, "org.examples.%ProjectName%.IPlugin")

#endif // %ProjectName:u%_IPLUGIN_%CppHeaderSuffix:u%
