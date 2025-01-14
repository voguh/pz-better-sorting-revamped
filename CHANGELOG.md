# Better Sorting Revamped

## 1.0.1

Update workshop description and fix some item display names.


### Refactored/Changed

- Updated workshop description;
- Changed workshop visibility to public;
- Changed `Base.LogStacks4` display name to `Log Stack - Four`;
- Changed `Base.LogStacks3` display name to `Log Stack - Three`;
- Changed `Base.LogStacks2` display name to `Log Stack - Two`;


---


## 1.0.0

This was de first stable release.


### Added

- Added category `CraftMech`;
- Added 'constants' file in shared to store all categories, just use `BS_CATEGORIES.<SOMETHING>`. E.g.: `BS_CATEGORIES.AMMO`;
- Support for [Myself's Firearms B41 Revamped](https://steamcommunity.com/sharedfiles/filedetails/?id=3243752606);
- Support for [KI5's that DAMN Library](https://steamcommunity.com/sharedfiles/filedetails/?id=3171167894);
- Support for [KI5's '63 Volkswagen 1300 Beetle](https://steamcommunity.com/sharedfiles/filedetails/?id=3005903549);
- Support for [KI5's '69 Chevrolet Camaro](https://steamcommunity.com/sharedfiles/filedetails/?id=2991201484);
- Support for [KI5's '70 Dodge Challenger](https://steamcommunity.com/sharedfiles/filedetails/?id=2873290424);
- Support for [KI5's '86 Ford Econoline E150](https://steamcommunity.com/sharedfiles/filedetails/?id=2870394916);
- Support for [KI5's '87 Ford B700/F700 Trucks](https://steamcommunity.com/sharedfiles/filedetails/?id=3110911330);
- Support for [KI5's '88 Chevrolet S10](https://steamcommunity.com/sharedfiles/filedetails/?id=2886832936);
- Support for [KI5's '92 AM General M998 + M101A3 Cargo trailer](https://steamcommunity.com/sharedfiles/filedetails/?id=2642541073);
- Support for [KI5's '99 Ford Crown Victoria Police Interceptor](https://steamcommunity.com/sharedfiles/filedetails/?id=2971246021);
- Support for [KI5's Trailers!](https://steamcommunity.com/sharedfiles/filedetails/?id=3330403100);


### Removed

- Mod Supports and translations from original Better Sorting (plans to re-implement in future);


### Refactored/Changed

- Removed built-in ItemTweaker to a self implementation of display category change;
- Changed `TweakItem(<item_full_type>, <propery>, <value>)` to `BetterSorting.CategorizeItem(<item_full_type>, <category>)`;
- Fixed category of `Radio.CDplayer` and `Base.EmptyConcreteBag`;
- Changed category of `Base.Paintbrush` to `BS_CATEGORIES.TOOL`;
- Changed category of `Base.PropaneTank` to `BS_CATEGORIES.CRAFT_METAL`;
- Changed category of `Base.Razor` to `BS_CATEGORIES.APPEAR`;
