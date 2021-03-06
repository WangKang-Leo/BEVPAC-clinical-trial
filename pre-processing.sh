module load bioinfo-tools
module load Nextflow
export NXF_HOME=/home/kangwang/nextflow/

####示例#####
nextflow run nf-core/rnaseq -profile UPPMAX


touch samplesheet.csv
vim samplesheet.csv
group,replicate,fastq_1,fastq_2,strandedness
NA,1,/proj/sens2019581/delivery04273/INBOX/P18362/P18362_131/02-FASTQ/210122_A00187_0419_AHNKKTDSXY/P18362_131_S31_L002_R1_001.fastq.gz,/proj/sens2019581/delivery04273/INBOX/P18362/P18362_131/02-FASTQ/210122_A00187_0419_AHNKKTDSXY/P18362_131_S31_L002_R2_001.fastq.gz,unstranded
NA,1,/proj/sens2019581/delivery04273/INBOX/P18362/P18362_109/02-FASTQ/210122_A00187_0419_AHNKKTDSXY/P18362_109_S20_L002_R1_001.fastq.gz,/proj/sens2019581/delivery04273/INBOX/P18362/P18362_109/02-FASTQ/210122_A00187_0419_AHNKKTDSXY/P18362_109_S20_L002_R2_001.fastq.gz,unstranded
按住shift zz 保存退出
nextflow run nf-core/rnaseq --input samplesheet.csv --genome GRCh37
nextflow run nf-core/rnaseq \
      --input samplesheet.csv \
      --genome GRCh37
#下载Grh37：http://daehwankimlab.github.io/hisat2/download/

touch genomefastas.csv
vim genomefastas.csv
