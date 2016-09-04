package tachyon;

import java.util.HashMap;
import java.util.Map;

public class Result implements Comparable<Result> {
  public int id;
  public int fileId;
  public int[] percent;
  public long[] memSize;
  public int count[], total;
  public Map<Long, Long> duration;
  public Map<Long, Integer> source;

  public Result(int id, int fid) {
    this.id = id;
    this.fileId = fid;
    this.duration = new HashMap<>();
    this.source = new HashMap<>();
    this.percent = new int[3];
    this.memSize = new long[3];
    this.count = new int[3];
    this.total = 0;
  }

  @Override
  public int compareTo(Result arg0) {
    if (this.id > arg0.id) {
      return 1;
    } else if (this.id < arg0.id) {
      return -1;
    } else {
      return this.fileId - arg0.fileId;
    }
  }

}

