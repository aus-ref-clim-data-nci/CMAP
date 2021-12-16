# CMAP

## Overview

The CPC Merged Analysis of Precipitation (CMAP) includes monthly and pentad global gridded precipitation means.
It has a standard version and one enhanced with NCEP Reanalysis.
CMAP covers from 1979 to near the present on a global grid at 2.5 degree latitude x 2.5 degree longitude resolution.
For more information you can check the original data soruce on the
[NOAA Physical Sceince Laboratory (PSL) website](https://psl.noaa.gov/data/gridded/data.cmap.html)
and the [UCAR climate data guide](https://climatedataguide.ucar.edu/climate-data/cmap-cpc-merged-analysis-precipitation)
for a review of the dataset.
The [original data](https://www.cpc.ncep.noaa.gov/products/global_precip/html/wpage.cmap.html)
is created by NOAA Climate Prediction Center (CPC) and it is in ascii format; we download a netcdf version from PSL.
For this reason the PSL data is updated irregularly, following updates at CPC.

## Data location

We've downloaded the CMAP dataset to:
```
/g/data/ia39/CMAP/replica/data  
```

There are two sub-folders:

`enh` for enhanced monthly data:
- `precip.mon.ltm.nc`: enhanced long term monthly mean, derived from years 1981 to 2010
- `precip.mon.mean.nc`: enhanced monthly mean from 1979/01 to 2021/03
- `precip.pentad.mean.nc`: enhanced pentad mean from 1979/01 to 2016/12/27

`std` for standard monthly data:
- `precip.mon.ltm.nc`: standard long term monthly mean, derived from years 1981 to 2010
- `precip.mon.mean.nc`: standard monthly mean from 1979/01 to 2021/03
- `precip.pentad.mean.nc`: standard pentad mean from 1979/01 to 2016/12/27

Our last update was on the 26/04/2021. The previously downloaded version is kept for reference in the previous_version sub-folders.

## License

Unknown.

## Data citation

Unknown.

## References

Xie P and Arkin PA (1997):
Global precipitation: A 17-year monthly analysis based on gauge observations, satellite estimates, and numerical model outputs.
*Bulletin of the American Meteorological Society*, 78, 2539-2558.
[https://doi.org/10.1175/1520-0477(1997)078<2539:GPAYMA>2.0.CO;2](https://doi.org/10.1175/1520-0477(1997)078<2539:GPAYMA>2.0.CO;2)

Huffman GJ, Adler RF, Arkin P, Chang A, Ferraro R, Gruber A, Janowiak J, McNab A, Rudolf B, and Schneider U (1997).
The Global Precipitation Climatology Project (GPCP) combined data set.
*Bulletin of the American Meteorological Society*, 78, 5-20.
[https://doi.org/10.1175/1520-0477(1997)078<0005:TGPCPG>2.0.CO;2](https://doi.org/10.1175/1520-0477(1997)078<0005:TGPCPG>2.0.CO;2)

## Acknowledgement

If you acquire CMAP Precipitation data products from PSL,
we ask that you acknowledge us in your use of the data.
This may be done by including text such as the following 
in any documents or publications using these data:

"CMAP Precipitation data provided by the NOAA/OAR/ESRL PSL, Boulder, Colorado, USA,
from their Web site at <location>" 
  
## Author note

We would also appreciate receiving a copy of the relevant publications.
This will help PSL to justify keeping the CMAP Precipitation data set freely available online in the future.
Thank you!
