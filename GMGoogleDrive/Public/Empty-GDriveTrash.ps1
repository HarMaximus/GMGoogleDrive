<#
.SYNOPSIS
    Empty Gdrive Trash
.DESCRIPTION
    Empty Gdrive Trash
.PARAMETER AccessToken
    Access Token for request
.EXAMPLE
    # rename file
    Empty-GDriveTrash -AccessToken $access_token
.OUTPUTS
    If successful, this method returns an empty response body.
.NOTES
    Author: Harmandeep Saggu
.LINK
    https://developers.google.com/drive/api/v3/reference/files/emptyTrash
#>
function Empty-GDriveTrash {
[CmdletBinding()]
param(
    [Parameter(Mandatory)]
    [string]$AccessToken
)
    $Headers = @{
        "Authorization" = "Bearer $AccessToken"
        "Content-type"  = "application/json"
    }

    Invoke-RestMethod -Uri $GDriveTrashUri -Method Delete -Headers $Headers @GDriveProxySettings
}

