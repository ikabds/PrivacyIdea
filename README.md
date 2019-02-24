# PrivacyIdea dockerized application #  
Nice fork of LinOTP, has build-in authorization (whereas LinOTP should be placed behind web-server to authenticate)
Go to http://localhost to start  
Need to create admin via pi-manage console tool

## Build image: ##  
docker build -t privacyidea --build-arg "HTTP_PROXY=http://proxy:port" .  