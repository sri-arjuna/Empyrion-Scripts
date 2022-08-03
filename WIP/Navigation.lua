-- -------------------------------------------------------
-- Description:		
-- Requires:
-- * Mod: 			https://github.com/GitHub-TC/EmpyrionGalaxyNavigator
-- * Mod:			https://github.com/GitHub-TC/EmpyrionScripting
-- * Script LCD:	Script:Navigation
-- * Output LCD:	Navigation
-- -------------------------------------------------------
{{#external 'Navigation'}}
Navigation:
Route for: {{Name}} [{{Id}}]
CurrentLocation: {{CurrentLocation}}
NextLocation: {{NextLocation}}
Target: {{Target}} [{{Alias}}]
{{#each Route}}
NavPoint: {{@index}}
- Name: {{Name}}
- NavPointInfo: {{NavPointInfo}}
- Distance: {{./Distance}}
- Coordinates: {{Coordinates}}
{{/each}}
{{else}}
EmpyrionGalaxyNavigator external not found
{{/external}}