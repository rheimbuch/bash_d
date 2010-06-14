# Adding an appropriate PATH variable for use with MacPorts.
if [[ -s /opt/local/sbin ]] ; then export PATH=/opt/local/sbin:$PATH ; fi
if [[ -s /opt/local/bin ]] ; then export PATH=/opt/local/bin:$PATH ; fi
