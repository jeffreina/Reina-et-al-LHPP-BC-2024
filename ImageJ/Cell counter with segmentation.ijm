#This macro is to count invading cells on transwell assays were segmentation is needed (e.g. when the number of cells is high or there are big clusters of cells)


fileName = getTitle()
setOption("BlackBackground", true);
run("Convert to Mask");
run("Convert to Mask");
run("Erode");
run("Erode");
run("Watershed");
run("Analyze Particles...", "size=300-Infinity circularity=0.05-1.00 display summarize overlay add composite");
saveAs("Results", "/Users/jeffreyreina/Documents/Salk/Cell invasion/nov4th MBA-MD-231/Results/Results" +fileName+".csv");
roiManager("Save", "/Users/jeffreyreina/Documents/Salk/Cell invasion/nov4th MBA-MD-231/Results/RoiSet" +fileName+".zip");
saveAs("Results", "/Users/jeffreyreina/Documents/Salk/Cell invasion/nov4th MBA-MD-231/Results/Summary" +fileName+".csv");
run("Close");
close();