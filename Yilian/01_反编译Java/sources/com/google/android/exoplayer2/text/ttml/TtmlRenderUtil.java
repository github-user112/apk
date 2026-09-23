package com.google.android.exoplayer2.text.ttml;

/* loaded from: classes.dex */
public final class TtmlRenderUtil {
    public static final java.lang.String TAG = "TtmlRenderUtil";

    public static void applyStylesToSpan(android.text.Spannable spannable, int i, int i2, com.google.android.exoplayer2.text.ttml.TtmlStyle ttmlStyle, com.google.android.exoplayer2.text.ttml.TtmlNode ttmlNode, java.util.Map<java.lang.String, com.google.android.exoplayer2.text.ttml.TtmlStyle> map, int i3) {
        com.google.android.exoplayer2.text.ttml.TtmlNode ttmlNodeFindRubyTextNode;
        java.lang.Object rubySpan;
        com.google.android.exoplayer2.text.ttml.TtmlStyle ttmlStyleResolveStyle;
        java.lang.Object absoluteSizeSpan;
        int i4;
        if (ttmlStyle.getStyle() != -1) {
            spannable.setSpan(new android.text.style.StyleSpan(ttmlStyle.getStyle()), i, i2, 33);
        }
        if (ttmlStyle.isLinethrough()) {
            spannable.setSpan(new android.text.style.StrikethroughSpan(), i, i2, 33);
        }
        if (ttmlStyle.isUnderline()) {
            spannable.setSpan(new android.text.style.UnderlineSpan(), i, i2, 33);
        }
        if (ttmlStyle.hasFontColor()) {
            com.google.android.exoplayer2.text.span.SpanUtil.addOrReplaceSpan(spannable, new android.text.style.ForegroundColorSpan(ttmlStyle.getFontColor()), i, i2, 33);
        }
        if (ttmlStyle.hasBackgroundColor()) {
            com.google.android.exoplayer2.text.span.SpanUtil.addOrReplaceSpan(spannable, new android.text.style.BackgroundColorSpan(ttmlStyle.getBackgroundColor()), i, i2, 33);
        }
        if (ttmlStyle.getFontFamily() != null) {
            com.google.android.exoplayer2.text.span.SpanUtil.addOrReplaceSpan(spannable, new android.text.style.TypefaceSpan(ttmlStyle.getFontFamily()), i, i2, 33);
        }
        if (ttmlStyle.getTextEmphasis() != null) {
            com.google.android.exoplayer2.text.ttml.TextEmphasis textEmphasis = (com.google.android.exoplayer2.text.ttml.TextEmphasis) com.google.android.exoplayer2.util.Assertions.checkNotNull(ttmlStyle.getTextEmphasis());
            int i5 = textEmphasis.markShape;
            if (i5 == -1) {
                i5 = (i3 == 2 || i3 == 1) ? 3 : 1;
                i4 = 1;
            } else {
                i4 = textEmphasis.markFill;
            }
            int i6 = textEmphasis.position;
            if (i6 == -2) {
                i6 = 1;
            }
            com.google.android.exoplayer2.text.span.SpanUtil.addOrReplaceSpan(spannable, new com.google.android.exoplayer2.text.span.TextEmphasisSpan(i5, i4, i6), i, i2, 33);
        }
        int rubyType = ttmlStyle.getRubyType();
        if (rubyType == 2) {
            com.google.android.exoplayer2.text.ttml.TtmlNode ttmlNodeFindRubyContainerNode = findRubyContainerNode(ttmlNode, map);
            if (ttmlNodeFindRubyContainerNode != null && (ttmlNodeFindRubyTextNode = findRubyTextNode(ttmlNodeFindRubyContainerNode, map)) != null) {
                if (ttmlNodeFindRubyTextNode.getChildCount() != 1 || ttmlNodeFindRubyTextNode.getChild(0).text == null) {
                    com.google.android.exoplayer2.util.Log.i(TAG, "Skipping rubyText node without exactly one text child.");
                } else {
                    java.lang.String str = (java.lang.String) com.google.android.exoplayer2.util.Util.castNonNull(ttmlNodeFindRubyTextNode.getChild(0).text);
                    com.google.android.exoplayer2.text.ttml.TtmlStyle ttmlStyleResolveStyle2 = resolveStyle(ttmlNodeFindRubyTextNode.style, ttmlNodeFindRubyTextNode.getStyleIds(), map);
                    int rubyPosition = ttmlStyleResolveStyle2 != null ? ttmlStyleResolveStyle2.getRubyPosition() : -1;
                    if (rubyPosition == -1 && (ttmlStyleResolveStyle = resolveStyle(ttmlNodeFindRubyContainerNode.style, ttmlNodeFindRubyContainerNode.getStyleIds(), map)) != null) {
                        rubyPosition = ttmlStyleResolveStyle.getRubyPosition();
                    }
                    rubySpan = new com.google.android.exoplayer2.text.span.RubySpan(str, rubyPosition);
                    spannable.setSpan(rubySpan, i, i2, 33);
                }
            }
        } else if (rubyType == 3 || rubyType == 4) {
            rubySpan = new com.google.android.exoplayer2.text.ttml.DeleteTextSpan();
            spannable.setSpan(rubySpan, i, i2, 33);
        }
        if (ttmlStyle.getTextCombine()) {
            com.google.android.exoplayer2.text.span.SpanUtil.addOrReplaceSpan(spannable, new com.google.android.exoplayer2.text.span.HorizontalTextInVerticalContextSpan(), i, i2, 33);
        }
        int fontSizeUnit = ttmlStyle.getFontSizeUnit();
        if (fontSizeUnit == 1) {
            absoluteSizeSpan = new android.text.style.AbsoluteSizeSpan((int) ttmlStyle.getFontSize(), true);
        } else if (fontSizeUnit == 2) {
            absoluteSizeSpan = new android.text.style.RelativeSizeSpan(ttmlStyle.getFontSize());
        } else if (fontSizeUnit != 3) {
            return;
        } else {
            absoluteSizeSpan = new android.text.style.RelativeSizeSpan(ttmlStyle.getFontSize() / 100.0f);
        }
        com.google.android.exoplayer2.text.span.SpanUtil.addOrReplaceSpan(spannable, absoluteSizeSpan, i, i2, 33);
    }

    public static java.lang.String applyTextElementSpacePolicy(java.lang.String str) {
        return str.replaceAll("\r\n", "\n").replaceAll(" *\n *", "\n").replaceAll("\n", " ").replaceAll("[ \t\\x0B\f\r]+", " ");
    }

    public static void endParagraph(android.text.SpannableStringBuilder spannableStringBuilder) {
        int length = spannableStringBuilder.length() - 1;
        while (length >= 0 && spannableStringBuilder.charAt(length) == ' ') {
            length--;
        }
        if (length < 0 || spannableStringBuilder.charAt(length) == '\n') {
            return;
        }
        spannableStringBuilder.append('\n');
    }

    public static com.google.android.exoplayer2.text.ttml.TtmlNode findRubyContainerNode(com.google.android.exoplayer2.text.ttml.TtmlNode ttmlNode, java.util.Map<java.lang.String, com.google.android.exoplayer2.text.ttml.TtmlStyle> map) {
        while (ttmlNode != null) {
            com.google.android.exoplayer2.text.ttml.TtmlStyle ttmlStyleResolveStyle = resolveStyle(ttmlNode.style, ttmlNode.getStyleIds(), map);
            if (ttmlStyleResolveStyle != null && ttmlStyleResolveStyle.getRubyType() == 1) {
                return ttmlNode;
            }
            ttmlNode = ttmlNode.parent;
        }
        return null;
    }

    public static com.google.android.exoplayer2.text.ttml.TtmlNode findRubyTextNode(com.google.android.exoplayer2.text.ttml.TtmlNode ttmlNode, java.util.Map<java.lang.String, com.google.android.exoplayer2.text.ttml.TtmlStyle> map) {
        java.util.ArrayDeque arrayDeque = new java.util.ArrayDeque();
        arrayDeque.push(ttmlNode);
        while (!arrayDeque.isEmpty()) {
            com.google.android.exoplayer2.text.ttml.TtmlNode ttmlNode2 = (com.google.android.exoplayer2.text.ttml.TtmlNode) arrayDeque.pop();
            com.google.android.exoplayer2.text.ttml.TtmlStyle ttmlStyleResolveStyle = resolveStyle(ttmlNode2.style, ttmlNode2.getStyleIds(), map);
            if (ttmlStyleResolveStyle != null && ttmlStyleResolveStyle.getRubyType() == 3) {
                return ttmlNode2;
            }
            for (int childCount = ttmlNode2.getChildCount() - 1; childCount >= 0; childCount--) {
                arrayDeque.push(ttmlNode2.getChild(childCount));
            }
        }
        return null;
    }

    public static com.google.android.exoplayer2.text.ttml.TtmlStyle resolveStyle(com.google.android.exoplayer2.text.ttml.TtmlStyle ttmlStyle, java.lang.String[] strArr, java.util.Map<java.lang.String, com.google.android.exoplayer2.text.ttml.TtmlStyle> map) {
        int i = 0;
        if (ttmlStyle == null) {
            if (strArr == null) {
                return null;
            }
            if (strArr.length == 1) {
                return map.get(strArr[0]);
            }
            if (strArr.length > 1) {
                com.google.android.exoplayer2.text.ttml.TtmlStyle ttmlStyle2 = new com.google.android.exoplayer2.text.ttml.TtmlStyle();
                int length = strArr.length;
                while (i < length) {
                    ttmlStyle2.chain(map.get(strArr[i]));
                    i++;
                }
                return ttmlStyle2;
            }
        } else {
            if (strArr != null && strArr.length == 1) {
                return ttmlStyle.chain(map.get(strArr[0]));
            }
            if (strArr != null && strArr.length > 1) {
                int length2 = strArr.length;
                while (i < length2) {
                    ttmlStyle.chain(map.get(strArr[i]));
                    i++;
                }
            }
        }
        return ttmlStyle;
    }
}
