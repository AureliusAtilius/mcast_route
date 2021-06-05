# Create persistent static route for camera multicast traffic


# Find network interface connected to the test network
$adapterName=(Get-NetIPAddress -AddressFamily IPv4 -IPAddress 10.232.200.*).InterfaceAlias
$adapterIP=(Get-NetIPAddress -InterfaceAlias $adapterName).IPAddress

# TODO: Create check to see if route already exists
$cam1= "239.128.1.100/32"
$adapterroutes=(Get-NetRoute -AddressFamily IPv4 -InterfaceAlias $adapterName )
if ($cam1 -notin $adapterroutes) {
    #TODO: Create persistent static route to mcast address
    New-NetRoute -AddressFamily IPv4 -DestinationPrefix "239.128.1.100/32" -InterfaceAlias $adapterName
}
