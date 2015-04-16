#ifndef PLUGIN_HELLOWORLD_HPP
#define PLUGIN_HELLOWORLD_HPP

#include <plugin/IPlugin.hpp>

namespace HelloWorld {
namespace Internal {

class HelloWorldPlugin
  : public QObject, public IPlugin
{
    Q_OBJECT
    Q_INTERFACES(IPlugin)

public:
    HelloWorldPlugin();
    ~HelloWorldPlugin();

    void doSomthingUsefull();

private slots:
    void sayHelloWorld();

};

} // namespace Internal
} // namespace HelloWorld

#endif // PLUGIN_HELLOWORLD_HPP
