#!/bin/bash
# example 20181022.log sh ./eventKeyPickle.sh

function analysis_dist_gen {
  echo "buffer text" > buffer_file_main.txt
  echo "buffer text" > buffer_file_batch_in.txt
  echo "buffer text" > buffer_file_level_single_event_key.txt
  cat $1 | grep "event_key =" >> buffer_file_main.txt
  cat $1 | grep "event_key IN" >> buffer_file_main.txt
  cat ./buffer_file_main.txt | grep -E -o ">*event_key = '\w+'" | awk '{ print $3 }' > buffer_file_level_single_event_key.txt

  cat buffer_file_main.txt | grep -E -o ">*event_key IN \(.*\)" > buffer_file_batch_in.txt
  sed -i -e 's/IN (//g' ./buffer_file_batch_in.txt
  sed -i -e 's/,/,\'$'\n/g' ./buffer_file_batch_in.txt
  sed -i -e 's/)//g' ./buffer_file_batch_in.txt
  sed -i -e 's/^ //g' ./buffer_file_batch_in.txt
  sed -i -e 's/,//g' ./buffer_file_batch_in.txt
  rm buffer_file_main.txt
  cat buffer_file_level_single_event_key.txt >> analysis_dist.txt
  cat buffer_file_batch_in.txt >> analysis_dist.txt
}

cd /home/master/lantian/hive_analyse_log
filenames=$(ls 2018*.log)
for file in ${filenames};do
    echo Proessing: ${file}
    analysis_dist_gen ${file}
done

cat analysis_dist.txt | sort | uniq -c | sort -nr > analysis_results.log
