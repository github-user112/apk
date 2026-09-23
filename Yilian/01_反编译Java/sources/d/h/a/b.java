package d.h.a;

/* loaded from: classes.dex */
public class b extends android.widget.Filter {
    public d.h.a.b.a a;

    public interface a {
    }

    public b(d.h.a.b.a aVar) {
        this.a = aVar;
    }

    @Override // android.widget.Filter
    public java.lang.CharSequence convertResultToString(java.lang.Object obj) {
        return ((d.b.q.p0) this.a).c((android.database.Cursor) obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0037  */
    @Override // android.widget.Filter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.widget.Filter.FilterResults performFiltering(java.lang.CharSequence r5) {
        /*
            r4 = this;
            d.h.a.b$a r0 = r4.a
            d.b.q.p0 r0 = (d.b.q.p0) r0
            r1 = 0
            if (r0 == 0) goto L4e
            if (r5 != 0) goto Lc
            java.lang.String r5 = ""
            goto L10
        Lc:
            java.lang.String r5 = r5.toString()
        L10:
            androidx.appcompat.widget.SearchView r2 = r0.l
            int r2 = r2.getVisibility()
            if (r2 != 0) goto L37
            androidx.appcompat.widget.SearchView r2 = r0.l
            int r2 = r2.getWindowVisibility()
            if (r2 == 0) goto L21
            goto L37
        L21:
            android.app.SearchableInfo r2 = r0.m     // Catch: java.lang.RuntimeException -> L2f
            r3 = 50
            android.database.Cursor r5 = r0.h(r2, r5, r3)     // Catch: java.lang.RuntimeException -> L2f
            if (r5 == 0) goto L37
            r5.getCount()     // Catch: java.lang.RuntimeException -> L2f
            goto L38
        L2f:
            r5 = move-exception
            java.lang.String r0 = "SuggestionsAdapter"
            java.lang.String r2 = "Search suggestions query threw an exception."
            android.util.Log.w(r0, r2, r5)
        L37:
            r5 = r1
        L38:
            android.widget.Filter$FilterResults r0 = new android.widget.Filter$FilterResults
            r0.<init>()
            if (r5 == 0) goto L48
            int r1 = r5.getCount()
            r0.count = r1
            r0.values = r5
            goto L4d
        L48:
            r5 = 0
            r0.count = r5
            r0.values = r1
        L4d:
            return r0
        L4e:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: d.h.a.b.performFiltering(java.lang.CharSequence):android.widget.Filter$FilterResults");
    }

    @Override // android.widget.Filter
    public void publishResults(java.lang.CharSequence charSequence, android.widget.Filter.FilterResults filterResults) {
        d.h.a.b.a aVar = this.a;
        android.database.Cursor cursor = ((d.h.a.a) aVar).f2034c;
        java.lang.Object obj = filterResults.values;
        if (obj == null || obj == cursor) {
            return;
        }
        ((d.b.q.p0) aVar).b((android.database.Cursor) obj);
    }
}
