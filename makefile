To Generate KrakenD.json file 

docker run --rm -v "$PWD:/etc/krakend/" -e "FC_ENABLE=1" -e "FC_OUT=krakend.json" -e "FC_SETTINGS=settings" -e "FC_PARTIALS=partials" devopsfaith/krakend check -c krakend.tmpl

To Run the server

docker run --rm  --name krakend -p 8080:8080 -v $(pwd)/krakend.json:/etc/krakend/krakend.json devopsfaith/krakend run --config /etc/krakend/krakend.json
