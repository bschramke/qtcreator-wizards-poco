#include "MainWindow.hpp"
#include "ui_MainWindow.h"

#include <plugin/IPlugin.hpp>

#include <QPluginLoader>
#include <QDir>

#include <iostream>

MainWindow::MainWindow(QWidget *parent) :
  QMainWindow(parent),
  ui(new Ui::MainWindow)
{
  ui->setupUi(this);

  loadPlugins();
}

MainWindow::~MainWindow()
{
  delete ui;
}

void MainWindow::loadPlugins()
{
  QDir pluginsDir = QDir(qApp->applicationDirPath());
  pluginsDir.cd("plugins");

  std::cout << "Try to load plugins in folder " << pluginsDir.path().toStdString() << std::endl;

  foreach (QString fileName, pluginsDir.entryList(QDir::Files)) {
      std::cout << "Testing " << pluginsDir.absoluteFilePath(fileName).toStdString() << std::endl;
      QPluginLoader loader(pluginsDir.absoluteFilePath(fileName));
      QObject *plugin = loader.instance();
      if (plugin) {
          std::cout << "Loading " << fileName.toStdString() << std::endl;
          initializePlugin(plugin, fileName);
      }
      else {

          std::cout << loader.errorString().toStdString() << std::endl;
          std::cout << plugin << std::endl;
      }
  }
}

void MainWindow::initializePlugin(QObject *plugin, QString filename) {

    IPlugin *imageImporter = qobject_cast<IPlugin*>(plugin);
        if (imageImporter) {
            std::cout << "Plugin file " << filename.toStdString() << " is valid." << std::endl;
            // now the plugin can be initialized and used
        }
}

