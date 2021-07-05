:: Workaround for Windows Print Spooler Remote Code Execution Vulnerability(CVE-2021-34527). See:
:: https://msrc.microsoft.com/update-guide/vulnerability/CVE-2021-34527
:: By default, when the policy is unconfigured or enabled, the spooler will always accept client connections. When the policy is disabled, the spooler will not accept client connections nor allow users to share printers. Enabled value: 1. Disabled value: 2. See:
:: https://admx.help/?Category=Windows_10_2016&Policy=Microsoft.Policies.Printing.2::RegisterSpoolerRemoteRpcEndPoint

:: Disables verbose commands.
@echo off

:: Sets the title of the window
title Disable Allow Print Spooler to accept client connections

:: Adds a new entry in the HKEY_LOCAL_MACHINE register to disable the remote client connections to the spooler.
reg add "HKLM\Software\Policies\Microsoft\Windows NT\Printers" /v RegisterSpoolerRemoteRpcEndPoint /t REG_DWORD /d 2 /f

:: The spooler must be restarted for changes to this policy to take effect. Sticking with a full system restart to make sure that the spooler and all other related services are restarted in order to load the new configuration.
echo Some settings need a restart to be applied.
echo Close this window to restart manually later.
echo Press any key to schedule a restart now.
pause > nul
shutdown /R /T 5 /C "Scheduled restart to apply changes (restart in 5 seconds)"