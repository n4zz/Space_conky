#!/bin/bash
#--------------------------------------------------------------------------------------------------
#     TESTs_SCRIPT_FOR_CONKY_by_N4zz
#--------------------------------------------------------------------------------------------------
# The script uses commands to test the following:
#
#   curl - Internet connection
#   systemctl is-active/enabled ufw - firewall status
#   systemctl is-active/enabled ssh - SSH status
#
# The results are sent to a text file (status.txt) and further processed in conky
# as follows [ 1 ] = active/enabled / [ 0 ] = inactive/disabled
#--------------------------------------------------------------------------------------------------

rm ~/.config/conky/space/status.txt
function connection_test()
{
    url=https://www.google.com
    status=$(curl -I -s "$url" | head -1 | cut -d" " -f2)
    if [ "$status" != "200" ]
    then
        echo "connect OFF-LINE"
    else
        echo "connect ON-LINE"
    fi
}

nettest=$(connection_test)
echo $nettest >> ~/.config/conky/space/status.txt
################################################################################

function firewall_active()
{
    ufw_active=$(systemctl is-active ufw)
    if [ "$ufw_active" != "active" ]
    then
        echo "firewall inactive"
    else
        echo "firewall active"
    fi
}
firewall_test_active=$(firewall_active)
echo $firewall_test_active >> ~/.config/conky/space/status.txt
#################################################################################

function firewall_enabled()
{
    ufw_enable=$(systemctl is-enabled ufw)
    if [ "$ufw_enable" != "enabled" ]
    then
        echo "firewall disable"
    else
        echo "firewall enable"
    fi
}
firewall_test_enable=$(firewall_enabled)
echo $firewall_test_enable >> ~/.config/conky/space/status.txt
################################################################################

function ssh_active()
{
    ssh_active=$(systemctl is-active ssh)
    if [ "$ssh_active" != "active" ]
    then
        echo "ssh inactive"
    else
        echo "ssh active"
    fi
}
ssh_test_active=$(ssh_active)
echo $ssh_test_active >> ~/.config/conky/space/status.txt
################################################################################

function ssh_enabled()
{
    ssh_enable=$(systemctl is-enabled sshd)
    if [ "$ssh_enable" != "enabled" ]
    then
        echo "ssh disable"
    else
        echo "ssh enable"
    fi
}
ssh_test_enable=$(ssh_enabled)
echo $ssh_test_enable >> ~/.config/conky/space/status.txt
################################################################################

