
ch=$1
value=$2
iwpriv wlan0 set_txpower ${ch} 0 ${value}
