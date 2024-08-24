param(
	[string]$id,
	[string]$zonefile = $null
)

$rev_zones = Get-DNSServerZone | Where-object {$_.IsReverseLookupZone -eq "True"} | Select-Object -Property NetworkID

if ($null -ne $zonefile -and $zonefile -ne "") {
	if (-not ($rev_zones -contains $id)) {
		Add-DNSServerPrimaryZone -NetworkID $id -ZoneFile $zonefile
	}
} else {
	if (-not ($rev_zones -contains $id)) {
		Add-DNSServerPrimaryZone -NetworkID $id -ReplicationScope "Forest"
	}
}