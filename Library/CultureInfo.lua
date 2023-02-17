-- Description:		Allows for Language, time and numbering settings
--					Content will be filled automaticly once the LCD name has been accepted (common issue when labing LCD and boxes)
--					This is a "per structure" setting.
--
--					It greatly helps to keep scripts that work with item-names for display short
--					and easy useable for anyone using/prefering another language than your own (default english)
-- Requires:
-- * Script LCD:	CultureInfo
-- ---------------------------------------
-- The following content is only for reference, and should NOT be copied, as it HAS to be filled automaticly into the proper named LCD
-- ---------------------------------------
{
  "LanguageTag": "de-CH",
  "i18nDefault": "English",
  "UTCplusTimezone": 1
}
-- -------------------------
-- 1. The Language Tag basicly defines how numbers are displayed, for example 1000 becomes 1'000.
-- 2. The i18nDefault will automaticly translate (given Empyrion supports the language) to its given language.
--		Write your language in your language:
--			Language // How to write
--			English = English
--			German = Deutsch
--			French = Français
-- 3. UTCplusTimezone defines the offset of your timezone.
--       Basicly, enter the number which reflects the difference between the time shown in the upper left next to the build number.