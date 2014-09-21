#include "HandlerFactory.%CppHeaderSuffix%"

#include "CurrentTimeHandler.%CppHeaderSuffix%"

HandlerFactory::HandlerFactory () 
{
}

Poco::Net::HTTPRequestHandler * HandlerFactory::createRequestHandler (const Poco::Net::HTTPServerRequest &request)
{
	return new CurrentTimeHandler();
} 
