.class public final Ld3/b;
.super Lm9/e0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final i:Ljava/lang/CharSequence;

.field public final j:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld3/b;->i:Ljava/lang/CharSequence;

    .line 5
    .line 6
    iput-object p2, p0, Ld3/b;->j:Landroid/text/TextPaint;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final t0(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Ld3/b;->i:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Ld3/b;->j:Landroid/text/TextPaint;

    .line 8
    .line 9
    invoke-static {v1, p1, v2, v0}, Lc/w;->t(IILandroid/text/TextPaint;Ljava/lang/CharSequence;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final u0(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Ld3/b;->i:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Ld3/b;->j:Landroid/text/TextPaint;

    .line 8
    .line 9
    invoke-static {v1, p1, v2, v0}, Lc/w;->b(IILandroid/text/TextPaint;Ljava/lang/CharSequence;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method
