.class public final Lf1/s1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf1/b1;
.implements Lac/w;


# instance fields
.field public final synthetic a:Lf1/b1;

.field public final b:Lw8/h;


# direct methods
.method public constructor <init>(Lf1/b1;Lw8/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf1/s1;->a:Lf1/b1;

    .line 5
    .line 6
    iput-object p2, p0, Lf1/s1;->b:Lw8/h;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/s1;->a:Lf1/b1;

    .line 2
    .line 3
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final q()Lw8/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/s1;->b:Lw8/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/s1;->a:Lf1/b1;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
