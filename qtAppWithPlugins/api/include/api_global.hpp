#ifndef API_GLOBAL_HPP
#define API_GLOBAL_HPP

#include <QtCore/qglobal.h>

#if defined(%ProjectName:u%_API_LIBRARY)
#  define %ProjectName:u%_API Q_DECL_EXPORT
#else
#  define %ProjectName:u%_API Q_DECL_IMPORT
#endif

#endif // API_GLOBAL_HPP
