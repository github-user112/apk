import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.Result;
import com.google.zxing.client.j2se.BufferedImageLuminanceSource;
import com.google.zxing.common.HybridBinarizer;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.File;
import java.util.EnumMap;
import java.util.Map;

/**
 * 把截图里的所有二维码读出来（不只是第一个）。
 *
 * 为什么要滑窗：一张车机截图里并排放着好几个二维码，MultiFormatReader 直接喂整图
 * 只能读到最有把握的那个。这里用一个自适应滑窗，把图切成若干重叠块分别试，
 * 再去重输出，才能一次把屏幕上所有二维码都拿到。
 *
 * 用法: java -cp "core.jar;javase.jar;." QrDecode <图片路径>
 */
public final class QrDecode {

    public static void main(String[] args) throws Exception {
        if (args.length < 1) {
            System.out.println("usage: QrDecode <png>");
            System.exit(2);
        }
        BufferedImage img = ImageIO.read(new File(args[0]));
        if (img == null) {
            System.out.println("!! 读不到图片: " + args[0]);
            System.exit(1);
        }
        System.out.println("image " + img.getWidth() + "x" + img.getHeight());

        Map<DecodeHintType, Object> hints = new EnumMap<DecodeHintType, Object>(DecodeHintType.class);
        hints.put(DecodeHintType.TRY_HARDER, Boolean.TRUE);
        hints.put(DecodeHintType.CHARACTER_SET, "UTF-8");

        // 先整图试一次，但不提前退出 —— 屏幕上常常并排好几个二维码，
        // 整图只会解出最有把握的那个，剩下得靠滑窗补。
        String whole = tryDecode(img, hints);
        java.util.Set<String> seen = new java.util.LinkedHashSet<String>();
        if (whole != null) {
            seen.add(whole);
            System.out.println("FULL  -> " + whole);
        }

        // 滑窗。窗口边长从整图 1/3 逐步放大到整图，步长 1/3 窗口（重叠 2/3）
        int W = img.getWidth();
        int H = img.getHeight();
        int hits = 0;
        for (int div = 3; div >= 1; div--) {
            int win = Math.max(W, H) / div;
            int step = Math.max(1, win / 3);
            for (int y = 0; y + win <= H + step; y += step) {
                for (int x = 0; x + win <= W + step; x += step) {
                    int w = Math.min(win, W - x);
                    int h = Math.min(win, H - y);
                    if (w < 40 || h < 40) {
                        continue;
                    }
                    BufferedImage sub = img.getSubimage(Math.max(0, Math.min(x, W - w)),
                                                        Math.max(0, Math.min(y, H - h)), w, h);
                    String s = tryDecode(sub, hints);
                    if (s != null) {
                        hits++;
                        if (seen.add(s)) {
                            System.out.println("WIN   -> " + s);
                        }
                    }
                }
            }
        }
        System.out.println("(滑窗尝试命中次数 " + hits + ", 去重后 " + seen.size() + " 个)");
        if (seen.isEmpty()) {
            System.out.println("!! 没解出任何二维码");
            System.exit(1);
        }
    }

    private static String tryDecode(BufferedImage img, Map<DecodeHintType, Object> hints) {
        try {
            BinaryBitmap bmp = new BinaryBitmap(
                    new HybridBinarizer(new BufferedImageLuminanceSource(img)));
            Result r = new MultiFormatReader().decode(bmp, hints);
            return r.getText();
        } catch (Throwable t) {
            return null;
        }
    }
}
