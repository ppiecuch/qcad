
#include <QtPlugin>

#include "RCustomWidgets.h"

#define INIT_PLUGIN_INSTANCE(PLUGIN) \
    do { \
        Static##PLUGIN##PluginInstance instance; \
        Q_UNUSED(instance); \
    } while (0)

Q_IMPORT_PLUGIN(RCustomWidgets)


void initCustomWidgetsInstances()
{
	INIT_PLUGIN_INSTANCE(RCustomWidgets);
}
