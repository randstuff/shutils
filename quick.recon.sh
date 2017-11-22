#!/bin/bash 

dig +noall +answer A $1 
dig +noall +answer MX $1 
dig +noall +answer NS $1 
dig +noall +answer -x $1 

 
