.class public final Ln4/g;
.super Li2/c;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final e:Ln4/f;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ln4/f;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ln4/f;-><init>(Landroid/widget/TextView;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ln4/g;->e:Ln4/f;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final J(Z)V
    .locals 1

    .line 1
    invoke-static {}, Ll4/j;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Ln4/g;->e:Ln4/f;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ln4/f;->J(Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final L(Z)V
    .locals 2

    .line 1
    invoke-static {}, Ll4/j;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Ln4/g;->e:Ln4/f;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-boolean p1, v1, Ln4/f;->g:Z

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v1, p1}, Ln4/f;->L(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final w([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 1

    .line 1
    invoke-static {}, Ll4/j;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    iget-object v0, p0, Ln4/g;->e:Ln4/f;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ln4/f;->w([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method
