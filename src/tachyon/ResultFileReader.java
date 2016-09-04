package tachyon;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;

public class ResultFileReader {
  public String filepath = "";
  public int fid = -1;
  public ArrayList<Result> results = null;

  public ResultFileReader(String path) {
    this.filepath = path;
    this.fid = path.charAt(path.length() - 1) - '1' + 1;
  }

  public ArrayList<Result> read() throws IOException {
    BufferedReader reader = null;
    results = new ArrayList<>();
    Result result = null;
    try {
      reader = new BufferedReader(new FileReader(filepath));
      String line = null, elememts[] = null;
      while ((line = reader.readLine()) != null) {
        if (line.startsWith("###START")) {
          int id = Integer.parseInt(line.substring(9, line.length() - 3).trim());
          result = new Result(id, fid);
        } else if (line.startsWith("#memory")) {
          for (int i = 0; i < 3; i ++) {
            line = reader.readLine();
            elememts = line.trim().split("\\s+");
            result.percent[i] = Integer.parseInt(elememts[1]);
            result.memSize[i] = Long.parseLong(elememts[2]);
          }
        } else if (line.startsWith("#counts")) { // total unique readMem readRemote readUfs
          reader.readLine();
        } else if (line.startsWith("#details")) { // fileId,blockId,sizeBytes,openTimeMs,closeTimeMs,duration,readSource(1:local,2:remote,3:ufs)
          long blockId, duration;
          int source;
          while ((line = reader.readLine()) != null) {
            if (line.startsWith("###END")) {
              results.add(result);
              break;
            }
            elememts = line.trim().split("\\s+");
            blockId = Long.parseLong(elememts[1]);
            duration = Long.parseLong(elememts[5]);
            source = Integer.parseInt(elememts[6]) - 1;
            if (!result.duration.containsKey(blockId)) {
              result.total ++;
              addBlock(result, blockId, duration, source);
            } else if (result.duration.get(blockId) < duration) {
              result.count[result.source.get(blockId)] --;
              addBlock(result, blockId, duration, source);
            }
          }
        }
      }
      reader.close();
      return results;
    } catch (IOException exception) {
      if (reader != null) {
        try {
          reader.close();
        } catch (IOException e) {
        }
      }
      throw exception;
    }
  }

  private void addBlock(Result result, long blockId, long duration, int source) {
    result.duration.put(blockId, duration);
    result.source.put(blockId, source);
    result.count[source] ++;
  }

}
