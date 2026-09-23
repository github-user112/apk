.class public final synthetic Ll0/o;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:Ll0/s0;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Ll0/s0;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll0/o;->a:Ll0/s0;

    .line 5
    .line 6
    iput-wide p2, p0, Ll0/o;->b:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, La2/g;

    .line 3
    .line 4
    iget-object p1, p0, Ll0/o;->a:Ll0/s0;

    .line 5
    .line 6
    iget-object v1, p1, Ll0/s0;->s:Lf1/k1;

    .line 7
    .line 8
    invoke-virtual {v1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    iget-object p1, p1, Ll0/s0;->t:Lf1/k1;

    .line 21
    .line 22
    invoke-virtual {p1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    :cond_0
    const-wide/16 v5, 0x0

    .line 35
    .line 36
    const/16 v7, 0x7e

    .line 37
    .line 38
    iget-wide v1, p0, Ll0/o;->b:J

    .line 39
    .line 40
    const-wide/16 v3, 0x0

    .line 41
    .line 42
    invoke-static/range {v0 .. v7}, La2/f;->x(La2/g;JJJI)V

    .line 43
    .line 44
    .line 45
    :cond_1
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 46
    .line 47
    return-object p1
.end method
