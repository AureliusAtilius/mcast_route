# Create persistent static route for camera multicast traffic


# Find network interface connected to the test network
$adapterName=(Get-NetIPAddress -AddressFamily IPv4 -IPAddress 10.232.200.*).InterfaceAlias
$adapterIP=(Get-NetIPAddress -InterfaceAlias $adapterName).IPAddress

# Define camera destination multicast group IP addresses.
$cam1= "239.128.1.100/32"
$cam2= "239.128.1.105/32"
$cam3= "239.128.1.110/32"
$cam4= "239.128.1.115/32"
$cam5= "239.128.1.120/32"
$cam6= "239.128.1.125/32"
$cam7= "239.128.1.130/32"


# Create check to see if route already exists

$adapterroutes=(Get-NetRoute -AddressFamily IPv4 -InterfaceAlias $adapterName )
if ($cam1 -notin $adapterroutes) {
    # Create persistent static route to mcast address
    New-NetRoute -AddressFamily IPv4 -DestinationPrefix $cam1 -InterfaceAlias $adapterName
}
if ($cam2 -notin $adapterroutes) {
    # Create persistent static route to mcast address
    New-NetRoute -AddressFamily IPv4 -DestinationPrefix $cam2 -InterfaceAlias $adapterName
}
if ($cam3 -notin $adapterroutes) {
    # Create persistent static route to mcast address
    New-NetRoute -AddressFamily IPv4 -DestinationPrefix $cam3 -InterfaceAlias $adapterName
}
if ($cam4 -notin $adapterroutes) {
    # Create persistent static route to mcast address
    New-NetRoute -AddressFamily IPv4 -DestinationPrefix $cam4 -InterfaceAlias $adapterName
}
if ($cam5 -notin $adapterroutes) {
    # Create persistent static route to mcast address
    New-NetRoute -AddressFamily IPv4 -DestinationPrefix $cam5 -InterfaceAlias $adapterName
}
if ($cam6 -notin $adapterroutes) {
    # Create persistent static route to mcast address
    New-NetRoute -AddressFamily IPv4 -DestinationPrefix $cam6 -InterfaceAlias $adapterName
}
if ($cam7 -notin $adapterroutes) {
    # Create persistent static route to mcast address
    New-NetRoute -AddressFamily IPv4 -DestinationPrefix $cam7 -InterfaceAlias $adapterName
}