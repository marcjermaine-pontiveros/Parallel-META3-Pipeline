# Tutorial of Parallel-META 3: How to Process your Microbiome Data

![Parallel-Meta3](C:\Users\user\OneDrive - University of the Philippines\Markdown Documents\Parallel-META3 Tutorial\images\parallel-meta3.png)



Tutorial modified from: [Official PM3 Tutorial](http://bioinfo.single-cell.cn/Released_Software/parallel-meta/sampledata/TutorialPM3.pdf)

![img](C:\Users\user\OneDrive - University of the Philippines\Markdown Documents\Parallel-META3 Tutorial\images\PM3-pipeline)

### 0. Preliminaries: Install R

If you have R installed in your system, you may skip this step.

```
sudo apt update
```

```
sudo apt install r-base
```

If prompted to confirm installation, press `y` to continue.

Start R’s interactive shell as root.

```
sudo -i R
```

You should receive output similar to the following:

```
R version 3.6.3 (2020-02-29) -- "Holding the Windsock"
Copyright (C) 2020 The R Foundation for Statistical Computing
Platform: x86_64-pc-linux-gnu (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

>
```

This confirms that we’ve successfully installed R and entered its interactive shell.

### 1. How to install Parallel-META

Parallel-META 3 is open source, and the executive binary packages for Linux X86-65 Mac OS X are also provided. For normal users we strongly recommend the executive binary packages with automatic installer to make the installation easier.

Parallel-META 3 requires cran R environment to be installed on your computer in advance, which can be freely downloaded from https://www.r-project.org/

**1.1 Download the right package for your operating system** from http://bioinfo.single-cell.cn/parallel-meta.html. Both source and binary distributions are available.

**1.2 Automatic installation**

From 3.5 Parallel-META 3 provides an automatic installer for easy installation. Here we will install the Parallel-META3 to ```/opt/tools/```.

```shell
wget http://bioinfo.single-cell.cn/Released_Software/parallel-meta/3.5.3/parallel-meta-3.5.3-src.tar.gz
tar -xzvf parallel-meta-3.5.3-src.tar.gz

mkdir /opt/tools/parallel-meta
mv parallel-meta /opt/tools/
cd /opt/tools/parallel-meta
source install.sh
```

### 2. Tutorial and Demo Dataset

Here we provide a tutorial with 20 human oral microbial community samples sequenced by 454 FLX in two different healthy conditions ("B" for healthy baseline, "I" for narutal gingivitis) produced by Huang, et al., 2014. See the tutorial and "README" in the dataset package for details.

[Sample Dataset](http://bioinfo.single-cell.cn/Released_Software/parallel-meta/sampledata/20.sop.tar.gz) and [Sample Output (by 3.5.3)](http://bioinfo.single-cell.cn/Released_Software/parallel-meta/sampledata/20.out.Dec26.tar.gz)

#### The Dataset



**2.1 Running the Parallel-META 3 Pipeline**

```shell
PM-pipeline -i seqs.list -m meta.txt -o out_1
```



### **Publications**

1. Jing., et al., Parallel-META 3: Comprehensive taxonomical and functional analysis platform for efficient comparison of microbial communities, Scientific Reports, 2017.

2. Su X., Pan W., et al.,Parallel-META 2.0: Enhanced Metagenomic Data Analysis with Functional Annotation, High Performance Computing and Advanced Visualization, PLoS ONE, 2014.

3. Su X., et al. Parallel-META: Efficient Metagenomic Data Analysis Based on High-Performance Computation, BMC Systems Biology, 2012.

