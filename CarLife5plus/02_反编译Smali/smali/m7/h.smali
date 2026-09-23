.class public final synthetic Lm7/h;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf1/b1;

.field public final synthetic c:Lf1/b1;

.field public final synthetic d:Lf1/b1;


# direct methods
.method public synthetic constructor <init>(ILf1/b1;Lf1/b1;Lf1/b1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lm7/h;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lm7/h;->b:Lf1/b1;

    .line 7
    .line 8
    iput-object p3, p0, Lm7/h;->c:Lf1/b1;

    .line 9
    .line 10
    iput-object p4, p0, Lm7/h;->d:Lf1/b1;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lm7/k;->b:Ll8/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Ll8/p;->i()[Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v0, v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    .line 12
    iget-object v1, p0, Lm7/h;->b:Lf1/b1;

    .line 13
    .line 14
    invoke-interface {v1, v0}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 19
    .line 20
    iget-object v1, p0, Lm7/h;->c:Lf1/b1;

    .line 21
    .line 22
    invoke-interface {v1, v0}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget v0, p0, Lm7/h;->a:I

    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lm7/h;->d:Lf1/b1;

    .line 32
    .line 33
    invoke-interface {v1, v0}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 37
    .line 38
    return-object v0
.end method
