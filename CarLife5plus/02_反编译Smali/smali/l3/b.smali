.class public final Ll3/b;
.super Landroid/text/style/CharacterStyle;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# instance fields
.field public final a:Ly1/j0;

.field public final b:F

.field public final c:Lf1/k1;

.field public final d:Lf1/f0;


# direct methods
.method public constructor <init>(Ly1/j0;F)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll3/b;->a:Ly1/j0;

    .line 5
    .line 6
    iput p2, p0, Ll3/b;->b:F

    .line 7
    .line 8
    new-instance p1, Lx1/e;

    .line 9
    .line 10
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    invoke-direct {p1, v0, v1}, Lx1/e;-><init>(J)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Ll3/b;->c:Lf1/k1;

    .line 23
    .line 24
    new-instance p1, La5/e;

    .line 25
    .line 26
    const/16 p2, 0xd

    .line 27
    .line 28
    invoke-direct {p1, p2, p0}, La5/e;-><init>(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lf1/b;->o(Lf9/a;)Lf1/f0;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Ll3/b;->d:Lf1/f0;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 1
    iget v0, p0, Ll3/b;->b:F

    .line 2
    .line 3
    invoke-static {p1, v0}, Lj3/k;->b(Landroid/text/TextPaint;F)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ll3/b;->d:Lf1/f0;

    .line 7
    .line 8
    invoke-virtual {v0}, Lf1/f0;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/graphics/Shader;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 15
    .line 16
    .line 17
    return-void
.end method
