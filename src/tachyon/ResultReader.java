package tachyon;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.PriorityQueue;

public class ResultReader {
  public static String SUMMARY = "result.summary";
  public static String DURATIONS = "result.duration";
  public static String tab = "\t";
  public static String SUMMARY_HEADER = "# fileId, p1, p2, p3, d1, d2, d3, total, mem, remote, ufs";
  public static String DURATION_HEADER = "# blockId, duration1, duration2...";

  public String folder = null;

  public ResultReader(String path) {
    this.folder = path;
  }

  public void parseResults(String outpath) throws IOException {
    // Map<Long, ArrayList<Long>> durationAgg = new HashMap<>();
    PriorityQueue<Result> results = new PriorityQueue<>();
    for (int i = 1; i <= 3; i ++) {
      ResultFileReader reader = new ResultFileReader(folder + "/result." + i);
      results.addAll(reader.read());
    }

    BufferedWriter writerSummary = null, writerDuration = null;
    try {
      writerSummary = new BufferedWriter(new FileWriter(outpath));
      writerSummary.write(SUMMARY_HEADER);
      writerSummary.newLine();
      // writerDuration = new BufferedWriter(new FileWriter(folder + "/" + DURATIONS));
      // writerDuration.write(DURATION_HEADER);
      // writerDuration.newLine();

      while (!results.isEmpty()) {
        Result result = results.poll();
        StringBuilder sBuilder = new StringBuilder();
        sBuilder.append(result.fileId).append(tab);
        for (int i = 0; i < 3; i ++) {
          sBuilder.append(result.percent[i]).append(tab);
        }
        for (int i = 0; i < 3; i ++) {
          sBuilder.append(result.memSize[i]).append(tab);
        }
        sBuilder.append(result.total).append(tab);
        for (int i = 0; i < 3; i ++) {
          sBuilder.append(result.count[i]).append(tab);
        }
        writerSummary.write(sBuilder.toString());
        writerSummary.newLine();
      }

      // writerDuration.close();
      writerSummary.close();
    } catch (IOException e) {
      try {
        writerDuration.close();
        writerSummary.close();
      } catch (Exception exception) {
      }
      throw e;
    }
  }

}
