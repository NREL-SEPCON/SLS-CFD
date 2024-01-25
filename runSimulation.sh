#!/bin/bash
foamCleanTutorials
foamCleanPolyMesh
mv 0 0_org
surfaceFeatures
blockMesh
mv 0_org 0

snappyHexMesh -parallel -noFunctionObjects -overwrite 	| tee log.snappyHexMesh
checkMesh -parallel -latestTime | tee log.checkMeshParallel

renumberMesh -overwrite -noFunctionObjects -parallel | tee log.decomposepar
pimpleFoam -parallel | tee log.pimpleFoam