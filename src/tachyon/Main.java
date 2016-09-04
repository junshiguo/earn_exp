package tachyon;

import java.io.File;
import java.io.IOException;
import java.util.Map;

public class Main {

  public static void main(String[] args) {
    String basein = "/home/guojunshi/vm/result/logs/";
    String baseout = "/home/guojunshi/vm/result/results/";
    String[] in = {"output-even", "output-741", "output-windowsize", "output--/output-3-1",
        "output--/output-3-2"};
    String[] out = {"scan444", "scan741", "window_size", "3-1", "3-2"};

    for (int i = 0; i < in.length; i ++) {
      String outpath = baseout + out[i];
      File folder = new File(basein + in[i]);
      String subfolders[] = folder.list();
      for (String exp : subfolders) {
        try {
          parse(basein + in[i] + "/" + exp, baseout + out[i] + "/" + exp + ".summary");
        } catch (IOException e) {
          e.printStackTrace();
        }
      }
    }
  }

  public static void parse(String inpath, String outpath) throws IOException {
    ResultReader reader = new ResultReader(inpath);
    reader.parseResults(outpath);
  }

}
