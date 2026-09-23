.class public final synthetic Lv/j0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:Lg9/x;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lv/f;

.field public final synthetic d:Lv/p;

.field public final synthetic e:Lv/k;

.field public final synthetic f:F

.field public final synthetic g:Lf9/k;


# direct methods
.method public synthetic constructor <init>(Lg9/x;Ljava/lang/Object;Lv/f;Lv/p;Lv/k;FLf9/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv/j0;->a:Lg9/x;

    .line 5
    .line 6
    iput-object p2, p0, Lv/j0;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Lv/j0;->c:Lv/f;

    .line 9
    .line 10
    iput-object p4, p0, Lv/j0;->d:Lv/p;

    .line 11
    .line 12
    iput-object p5, p0, Lv/j0;->e:Lv/k;

    .line 13
    .line 14
    iput p6, p0, Lv/j0;->f:F

    .line 15
    .line 16
    iput-object p7, p0, Lv/j0;->g:Lf9/k;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    check-cast p1, Ljava/lang/Long;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    new-instance v0, Lv/i;

    .line 8
    .line 9
    iget-object p1, p0, Lv/j0;->c:Lv/f;

    .line 10
    .line 11
    move-wide v4, v1

    .line 12
    invoke-interface {p1}, Lv/f;->c()Lv/w0;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-interface {p1}, Lv/f;->g()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    new-instance v9, Lv/k0;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    iget-object v10, p0, Lv/j0;->e:Lv/k;

    .line 24
    .line 25
    invoke-direct {v9, v10, v1}, Lv/k0;-><init>(Lv/k;I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lv/j0;->b:Ljava/lang/Object;

    .line 29
    .line 30
    iget-object v3, p0, Lv/j0;->d:Lv/p;

    .line 31
    .line 32
    move-wide v7, v4

    .line 33
    invoke-direct/range {v0 .. v9}, Lv/i;-><init>(Ljava/lang/Object;Lv/w0;Lv/p;JLjava/lang/Object;JLf9/a;)V

    .line 34
    .line 35
    .line 36
    iget v3, p0, Lv/j0;->f:F

    .line 37
    .line 38
    iget-object v6, p0, Lv/j0;->g:Lf9/k;

    .line 39
    .line 40
    move-wide v1, v4

    .line 41
    move-object v5, v10

    .line 42
    move-object v4, p1

    .line 43
    invoke-static/range {v0 .. v6}, Lv/d;->h(Lv/i;JFLv/f;Lv/k;Lf9/k;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lv/j0;->a:Lg9/x;

    .line 47
    .line 48
    iput-object v0, p1, Lg9/x;->b:Ljava/lang/Object;

    .line 49
    .line 50
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 51
    .line 52
    return-object p1
.end method
