# Better Sorting Revamped

This mod is a fork of [ChobitsCrazy's Better Sorting](http://github.com/ChobitsCrazy/BetterSorting) with some changes to the item categories that make sense to me.



## Categories changed

| Item                  | Old category | New category | Obs                                                                                                      |
|-----------------------|--------------|--------------|----------------------------------------------------------------------------------------------------------|
| Base.EmptyConcreteBag | ---          | Container    | This item doesn't exists in tweaks                                                                       |
| Radio.CDplayer        | ---          | Elec         | This item was incorrect placed as `Base.CDplayer` in tweaks                                              |
| Base.Paintbrush       | Paint        | Tool         | Make more sense Paint Brush in `Tool` because is a tool used to paint                                    |
| Base.PropaneTank      | Craft        | CraftMetal   | Make more sense Propane Tank in `Crafting - Metalworking` because is a item used to refill Propane Torch |
| Base.Razor            | Junk         | Appear       | This item is used to remove beard                                                                        |
| Base.Belt             | ClothAcc     | Junk         | `Junk` is a better category since this item is useless and has been removed                              |



## Categories created

| Category | Description                                                                                                                      |
|----------|----------------------------------------------------------------------------------------------------------------------------------|
| CraftMec | This category isn't used in vanila items but I've created to categorize damnlib craft mechanics items like tire rubber, rim, etc |



## ChobitsCrazy's Better Sorting Compatibility

This mod includes a compatibility patch for ChobitsCrazy's Better Sorting. **Do not enable ChobitsCrazy's Better Sorting Compatibility** and this mod at the same time. To make Better Sorting-compatible mods work, simply activate the compatibility mod.



## Item Tweaker API

### Why this mod doesn't use Item Tweaker API?

Item Tweaker API doesn't really needed, I decided to rework automatic categorization function and tweaking function.
Also Item Tweaker API was discontinued after 9 years.



## License

This project is under [GNU GENERAL PUBLIC LICENSE, Version 3](./LICENSE).
