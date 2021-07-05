# disable-RegisterSpoolerRemoteRpcEndPoint
Workaround for Windows Print Spooler Remote Code Execution Vulnerability(CVE-2021-34527). See:
https://msrc.microsoft.com/update-guide/vulnerability/CVE-2021-34527

## How to use it
Download an execute with admin privileges.

## What this script does
It creates a new register entry (or overrides the existing one) to disable remote connections to the print spooler.
To be more specific, it does the same as this policy change:
https://admx.help/?Category=Windows_10_2016&Policy=Microsoft.Policies.Printing.2::RegisterSpoolerRemoteRpcEndPoint

If you prefer to do it manually, you can follow the 2nd option of the "Workaround" steps from:
https://msrc.microsoft.com/update-guide/vulnerability/CVE-2021-34527

## Caveats
The print server will no longer accept remote connections (it can be undone).
