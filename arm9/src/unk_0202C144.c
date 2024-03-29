#include "global.h"
#include "pokedex.h"
#include "poketch.h"
#include "unk_02029FB0.h"
#include "unk_0202C144.h"

#pragma thumb on

void FUN_0202C144(struct SaveBlock2 * sav2, struct Pokemon * mon)
{
    u32 is_egg = GetMonData(mon, MON_DATA_IS_EGG, NULL);
    if (!is_egg)
    {
        struct Pokedex * pokedex = Sav2_Pokedex_get(sav2);
        struct GameStats * unk = Sav2_GameStats_get(sav2);
        u32 species = GetMonData(mon, MON_DATA_SPECIES, NULL);
        GameStats_IncSpeciesCaught(unk, pokedex, (u16) species);
        Pokedex_SetMonCaughtFlag(pokedex, mon);

        struct SavePoketch * poketch = Sav2_Poketch_get(sav2);
        Sav2_Poketch_PokemonHistoryAddMon(poketch, &mon->box);
    }
}
