#!/bin/bash
golismero -d brute_dns -d dns_malware -d shodan -d zone_transfer -d nmap -d nikto -d spiderfoot -d openvas -d theharvester "$@"
