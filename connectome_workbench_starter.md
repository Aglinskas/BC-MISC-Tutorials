## Connectome Workbench started

![image](https://github.com/Aglinskas/BC-MISC-Tutorials/assets/15108226/5b1941ec-5899-410f-9c68-7ffce2e3ea80)


## Installing viewer
1. Download the app [https://www.humanconnectome.org/software/get-connectome-workbench](https://www.humanconnectome.org/software/get-connectome-workbench)
2. Download tutorial data https://balsa.wustl.edu/study/kN3m Atlases and stuff

Launch wb_view
Select the .spec file form tutorial dataset
Bottom menu is overlays
Top menu is atlases 

## Importing files

**Note! To overlay on surface, you need .dscalar.nii files (not .nii files)**

To convert t-maps from .nii to .dscalar.nii:

1. Install ciftify https://pypi.org/project/ciftify/
2. Make sure wb_command is in path (comes with workbench, should be in the same folder as wb_view)
2.1 Can use some thing like `export PATH=~/Documents/workbench/bin_macosx64:$PATH`

3. Run command to convert .nii to .dscalar.nii
Code `ciftify_vol_result HCP_S1200_GroupAvg --resample-nifti <input>.nii <output>.dscalar.nii`
Example `ciftify_vol_result HCP_S1200_GroupAvg --resample-nifti PS.nii PS.dscalar.nii`

**Note! If Converting from .nii to .dscalar.nii interpolates values.**

If you want to convert a ROI image, use:

`ciftify_vol_result --integer-labels HCP_S1200_GroupAvg --resample-nifti ROIS.nii ROIS.dscalar.nii`

Once you have .dscalar.nii images, you can import them to wb_viewer with File>Open File (or CMD+O)


## ROIs as outlines 

To make a ROI an outline

Click on settings next to the overlay
![1](https://github.com/Aglinskas/BC-MISC-Tutorials/assets/15108226/726d4819-4c68-4d49-bfad-69349ef951cc)

Select Source -> Outline only (select color = black, and you might need to also check "Show data inside tresholds")
![2](https://github.com/Aglinskas/BC-MISC-Tutorials/assets/15108226/ea6d4a63-265e-46f8-8d30-8f0cb67cdd8b)
![3](https://github.com/Aglinskas/BC-MISC-Tutorials/assets/15108226/110dafd5-20ca-4ea7-afd4-98f6387cc99a)

You should have an outline map!
![4](https://github.com/Aglinskas/BC-MISC-Tutorials/assets/15108226/bd4ffa0d-1f08-40e7-8d69-0db1849cef2f)

