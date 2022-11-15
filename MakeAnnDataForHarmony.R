library(Seurat)
library(SeuratDisk)

setwd("/data/salomonis2/LabFiles/Kairavee/Meredith-Rhesus-Kidney/Harmony_Analysis/Combined_Rhesus/")

rhesus_623 = readRDS("/data/schuh-lab/Rhesus_Schuh_2022/SoupX_Seurat_Processed/Humanized/623.human.rds")
rhesus_627 = readRDS("/data/schuh-lab/Rhesus_Schuh_2022/SoupX_Seurat_Processed/Humanized/627.human.rds")
rhesus_515B_cortexB = readRDS("/data/schuh-lab/Rhesus_Schuh_2022/SoupX_Seurat_Processed/Humanized/515B_cortexB.human.rds")
rhesus_515A_cortexB = readRDS("/data/schuh-lab/Rhesus_Schuh_2022/SoupX_Seurat_Processed/Humanized/515A_cortexA.human.rds")
rhesus_628 = readRDS("/data/schuh-lab/Rhesus_Schuh_2022/SoupX_Seurat_Processed/Humanized/628.human.rds")
rhesus_600 = readRDS("/data/schuh-lab/Rhesus_Schuh_2022/SoupX_Seurat_Processed/Humanized/600.human.rds")
rhesus_506 = readRDS("/data/schuh-lab/Rhesus_Schuh_2022/SoupX_Seurat_Processed/Humanized/506_cortex.human.rds")
rhesus_529 = readRDS("/data/schuh-lab/Rhesus_Schuh_2022/SoupX_Seurat_Processed/Humanized/529_130.human.rds")
rhesus_632_prefilter = readRDS("/data/schuh-lab/Rhesus_Schuh_2022/SoupX_Seurat_Processed/Humanized/632_prefilter.human.rds")

IntList <- list(rhesus_623,rhesus_627, rhesus_515B_cortexB, rhesus_515A_cortexB, rhesus_628, rhesus_600, rhesus_506, rhesus_529, rhesus_632_prefilter)

Rhesus.anchors <- FindIntegrationAnchors(object.list = IntList, dims = 1:50 , anchor.features =2000)
Rhesus.combined <- IntegrateData(anchorset = Rhesus.anchors, dims = 1:50)

DefaultAssay(Rhesus.combined) <- "integrated"
Rhesus.combined <- ScaleData(Rhesus.combined, verbose = FALSE)

SaveH5Seurat(Rhesus.combined, filename = "SeuratIntegratedObject_Rhesus_Integrated.h5Seurat")
Convert("SeuratIntegratedObject_Rhesus_Integrated.h5Seurat", dest = "h5ad")

saveRDS(Rhesus.combined,"SeuratIntegratedObject_Rhesus_Integrated.rds")

DefaultAssay(Rhesus.combined) <- "RNA"

SaveH5Seurat(Rhesus.combined, filename = "SeuratIntegratedObject_Rhesus_RNA.h5Seurat")
Convert("SeuratIntegratedObject_Rhesus_RNA.h5Seurat", dest = "h5ad")

saveRDS(Rhesus.combined,"SeuratIntegratedObject_Rhesus_RNA.rds")
