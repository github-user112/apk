package f.a.i.j.e;

/* loaded from: classes.dex */
public class c {
    public static java.lang.String a;

    public static java.lang.String a(java.lang.String str) throws java.io.IOException {
        java.util.regex.Matcher matcher;
        java.io.BufferedReader bufferedReader = new java.io.BufferedReader(new java.io.FileReader("/proc/cpuinfo"));
        java.util.regex.Pattern patternCompile = java.util.regex.Pattern.compile(str + "\\s*:\\s*(.*)");
        do {
            try {
                java.lang.String line = bufferedReader.readLine();
                if (line == null) {
                    bufferedReader.close();
                    return null;
                }
                matcher = patternCompile.matcher(line);
            } finally {
                bufferedReader.close();
            }
        } while (!matcher.matches());
        return matcher.group(1);
    }
}
