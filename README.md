# disable-RegisterSpoolerRemoteRpcEndPoint
Workaround for Windows Print Spooler Remote Code Execution Vulnerability(CVE-2021-34527). See:
https://msrc.microsoft.com/update-guide/vulnerability/CVE-2021-34527

## Update 2021-07-08: Microsoft released a patch
Microsoft already released a patch for this vulnerability, so keeping your system up to date should be enough.
However, you can still turn off this functionality if you want (maybe because you don't use it or maybe because you still don't feel safe).

## How to use it
Download an execute with admin privileges.

## What this script does
It creates a new register entry (or overrides the existing one) to disable remote connections to the print spooler.
To be more specific, it does the same as this policy change:
https://admx.help/?Category=Windows_10_2016&Policy=Microsoft.Policies.Printing.2::RegisterSpoolerRemoteRpcEndPoint

If you prefer to do it manually, you can follow the 2nd option of the "Workaround" from:
https://msrc.microsoft.com/update-guide/vulnerability/CVE-2021-34527

If you need a step by step guide, here's one:
  1. Open the "Run" window by pressing Win + R (Win = Windows Key)
  2. Type: gpedit.msc
  3. Press enter to load the Group Policy Editor
  4. Go to "Computer Configuration" -> "Administrative Templates" -> "Printers"
  5. Double click on "Allow Print Spooler to accept client connections" to open this directive
  6. Set the policy to "Disabled".
  7. Select OK to apply the changes.
  8. Restart the computer for the "Spool" service to see and take into account the changes

## Caveats
The print server will no longer accept remote connections (it can be undone).
