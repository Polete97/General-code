import pandas as pd
import numpy
data = pd.read_csv('~/Nextcloud/Documents/Pol/Quimica_elena/Genetic_TRY2.csv', encoding='unicode_escape', sep=';', on_bad_lines='skip')
data['TraitID'] = data['TraitID'].astype('Int64')
data['1Cpg'] = data['1Cpg'].str.replace(',', '.').astype('Int64')
Traits = data['TraitID'].unique()
Traits = Traits[~numpy.isnan(Traits)]

for trait in Traits:
    globals()["mask"+str(trait)] = data['TraitID'] == trait
    globals()[f"Trait{trait}"] = pd.DataFrame(data[globals()["mask"+str(trait)]])
    species = len(globals()[f"Trait{trait}"]["AccSpeciesName"].unique())
    max_genome = globals()[f"Trait{trait}"]["1Cpg"].max()
    min_genome = globals()[f"Trait{trait}"]["1Cpg"].min()
    print(f"For trait {trait} we have {species} species with max genome size of {max_genome} and minimum genome size of {min_genome}")
    globals()[f"Trait{trait}"].to_csv(f'~/Nextcloud/Documents/Pol/Quimica_elena/Trait{trait}.csv', index=False)
