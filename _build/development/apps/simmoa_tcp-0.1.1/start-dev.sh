#!/bin/sh
cd `dirname $0`
exec erl -pa $PWD/ebin $PWD/../simmoa/ebin  -boot start_sasl 
#-s simmoa_tcp