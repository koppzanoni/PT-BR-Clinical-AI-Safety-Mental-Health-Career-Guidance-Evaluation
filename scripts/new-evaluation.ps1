param(
    [Parameter(Mandatory = $true)]
    [ValidatePattern('^(CS|CG)-\d{3}$')]
    [string]$CaseId,

    [Parameter(Mandatory = $true)]
    [string]$Model,

    [string]$Date = (Get-Date -Format 'yyyy-MM-dd')
)

$ProjectRoot = Split-Path -Parent $PSScriptRoot
$Template = Join-Path $ProjectRoot 'templates\evaluation-template.md'
$EvaluationDirectory = Join-Path $ProjectRoot 'evaluations'
$SafeModel = ($Model.ToLowerInvariant() -replace '[^a-z0-9._-]+', '-') -replace '(^-|-$)', ''

if ([string]::IsNullOrWhiteSpace($SafeModel)) {
    throw 'The model name must contain at least one letter or number.'
}

$FileName = '{0}_{1}_{2}.md' -f $CaseId.ToUpperInvariant(), $SafeModel, $Date
$Destination = Join-Path $EvaluationDirectory $FileName

if (Test-Path -LiteralPath $Destination) {
    throw "Evaluation already exists: $Destination"
}

$Content = Get-Content -Raw -LiteralPath $Template
$Track = if ($CaseId.StartsWith('CS-')) { 'clinical-safety' } else { 'career-guidance' }
$Content = $Content.Replace('case_id: ""', ('case_id: "{0}"' -f $CaseId.ToUpperInvariant()))
$Content = $Content.Replace('track: "clinical-safety | career-guidance"', ('track: "{0}"' -f $Track))
$Content = $Content.Replace('model: ""', ('model: "{0}"' -f $Model))
$Content = $Content.Replace('evaluation_date: "AAAA-MM-DD"', ('evaluation_date: "{0}"' -f $Date))
$Content = $Content.Replace('# [CASE ID] — [Título curto]', ('# {0} — [Título curto]' -f $CaseId.ToUpperInvariant()))

Set-Content -LiteralPath $Destination -Value $Content -Encoding utf8
Write-Output $Destination
