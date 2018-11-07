@{
  ModuleToProcess = ''
  ModuleVersion = '1.0.4'
  GUID = '01aa873e-e21a-4f2f-a103-24904b2bfd5e'
  Author = 'Taylor Gibb'
  CompanyName = 'Developer Hut'
  Copyright = 'Taylor Gibb'
  Description = 'PowerShell module that houses a bunch of useful algorithms.'
  PowerShellVersion = '5.0'
  PowerShellHostName = ''
  PowerShellHostVersion = ''
  DotNetFrameworkVersion = '4.0'
  CLRVersion = '4.0'
  ProcessorArchitecture = ''
  RequiredModules = @()
  RequiredAssemblies = @()
  ScriptsToProcess = @()
  TypesToProcess = @()
  FormatsToProcess = @()
  NestedModules = @(".\scripts\luhn\LuhnValidation.ps1", '.\scripts\levenshtein\Test-LevenshteinDistance.ps1')
  FunctionsToExport = @('Test-LuhnValidation', 'Get-LuhnValidationNumber', 'Test-LevenshteinDistance')
  CmdletsToExport = ''
  VariablesToExport = ''
  AliasesToExport = ''
  ModuleList = @()
  FileList = @()
  PrivateData = ''
  HelpInfoURI = 'www.taylorgibb.com'
}
