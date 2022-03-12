for i in {0..1}
do echo [BENCHMARK $i]

  python Train.py -n "neural_networks/CV_net_Benchmark512.py" \
                  -t "data/dataset_training.csv" \
                  -v "data/dataset_validation.csv" \
                  -o "results" \
                  --update_val_metrics_for_epoch

  echo "wait some seconds"
  sleep 10   # wait 10 seconds
done
