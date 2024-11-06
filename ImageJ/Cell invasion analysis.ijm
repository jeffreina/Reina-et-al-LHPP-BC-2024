#This macro is to count invading cells on transwell assays were segmentation is not needed

fileName = getTitle()
setOption("BlackBackground", true);
run("Convert to Mask");
run("Convert to Mask");
run("Analyze Particles...", "size=300-Infinity circularity=0.05-1.00 display clear summarize overlay add composite");
saveAs("Results", "/Users/jeffreyreina/Documents/Salk/Cell invasion/nov 7th trial 2 MDA-MB 231/Results/Results" +fileName+".csv");
roiManager("Save", "/Users/jeffreyreina/Documents/Salk/Cell invasion/nov 7th trial 2 MDA-MB 231/Results/RoiSet" +fileName+".zip");
saveAs("Results", "/Users/jeffreyreina/Documents/Salk/Cell invasion/nov 7th trial 2 MDA-MB 231/Results/Summary" +fileName+".csv");
close();