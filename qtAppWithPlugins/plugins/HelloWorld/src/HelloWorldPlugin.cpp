#include "HelloWorldPlugin.hpp"

#include <QDebug>
#include <QtPlugin>
#include <QAction>
#include <QMenu>
#include <QMessageBox>
#include <QPushButton>

namespace HelloWorld {
namespace Internal {

HelloWorldPlugin::HelloWorldPlugin()
{
}

HelloWorldPlugin::~HelloWorldPlugin()
{
}

void HelloWorldPlugin::sayHelloWorld()
{
    // When passing 0 for the parent, the message box becomes an
    // application-global modal dialog box
    QMessageBox::information(
            0, tr("Hello World!"), tr("Hello World! Beautiful day today, isn't it?"));
}

void HelloWorldPlugin::doSomthingUsefull()
{
  sayHelloWorld();
}


} // namespace Internal
} // namespace HelloWorld

Q_EXPORT_PLUGIN2(HelloWorld, HelloWorld::Internal::HelloWorldPlugin)
