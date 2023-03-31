import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import glob
path = "./*.csv"
for file in glob.glob(path):
  SampleID = pd.read_csv(f'{file}', header=None, sep='\t')
  SampleID = pd.DataFrame(SampleID)
  SampleID[0] = SampleID[0].astype(str)
  SampleID[5] = SampleID[4]/SampleID[3]
  sum1 = len(SampleID[SampleID[5] < 2])
  sum2 = len(SampleID[SampleID[5] >= 2])
  sum3 = sum1 + sum2
  diploidSNPs = sum1*100/sum3
  median_v6 = SampleID[5].median()
  mean_v6 = SampleID[5].mean()
  print(f'{file} {diploidSNPs} with mean={mean_v6} and median={median_v6}')
  
  f, axs = plt.subplots(2, 2, figsize=(8, 4), gridspec_kw=dict(width_ratios=[3, 5]))
  
  plt.subplot(2,2,1)
  sns.boxplot(SampleID[5],width=0.3)
  plt.axhline(y=2, linestyle='--', color='red')

  plt.subplot(2,2,2)
  grouped = SampleID.groupby([0])
  df2 = pd.DataFrame({col:vals[5] for col,vals in grouped})
  meds = df2.median()
  meds.sort_values(inplace=True)
  df2 = df2[meds.index]
  sns.boxplot(data=df2)
  plt.xticks(rotation=45)
 
  

  plt.subplot(2,2,3)
  sns.scatterplot(x=1, y=5, data=SampleID, color='black',s=6)
  plt.axhline(y=2, linestyle='--', color='red')
  
  
  x = [1,2,3,4]
  plt.subplot(2,2,4)
  sns.kdeplot(SampleID[5], color='black') 
  plt.xticks(x)
  plt.axvline(x=1, linestyle='dotted', color='red')
  plt.axvline(x=2, linestyle='dotted', color='red')
  plt.axvline(x=3, linestyle='dotted', color='red')
  plt.axvline(x=4, linestyle='dotted', color='red')

  f.tight_layout()
  plt.savefig(f'{file}.pdf')
  plt.clf()
