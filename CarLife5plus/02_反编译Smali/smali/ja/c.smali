.class public final Lja/c;
.super Ljava/lang/Object;

# interfaces
.implements Lf9/a;


# instance fields
.field public final a:La2/b;

.field public final b:Lv9/q0;

.field public final c:Lja/a;

.field public final d:Llb/k0;

.field public final e:Lba/r;


# direct methods
.method public constructor <init>(La2/b;Lv9/q0;Lja/a;Llb/k0;Lba/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lja/c;->a:La2/b;

    .line 5
    .line 6
    iput-object p2, p0, Lja/c;->b:Lv9/q0;

    .line 7
    .line 8
    iput-object p3, p0, Lja/c;->c:Lja/a;

    .line 9
    .line 10
    iput-object p4, p0, Lja/c;->d:Llb/k0;

    .line 11
    .line 12
    iput-object p5, p0, Lja/c;->e:Lba/r;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 14

    .line 1
    iget-object v0, p0, Lja/c;->a:La2/b;

    .line 2
    .line 3
    iget-object v0, v0, La2/b;->d:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/support/v4/media/session/t;

    .line 6
    .line 7
    iget-object v1, p0, Lja/c;->d:Llb/k0;

    .line 8
    .line 9
    invoke-interface {v1}, Llb/k0;->k()Lv9/h;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v1}, Lv9/h;->n()Llb/a0;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :goto_0
    move-object v6, v1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    goto :goto_0

    .line 23
    :goto_1
    const/4 v5, 0x0

    .line 24
    const/16 v7, 0x1f

    .line 25
    .line 26
    iget-object v2, p0, Lja/c;->c:Lja/a;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-static/range {v2 .. v7}, Lja/a;->a(Lja/a;Lja/b;ZLjava/util/Set;Llb/a0;I)Lja/a;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    iget-object v1, p0, Lja/c;->e:Lba/r;

    .line 35
    .line 36
    invoke-virtual {v1}, Lba/r;->d()Z

    .line 37
    .line 38
    .line 39
    move-result v10

    .line 40
    const/4 v12, 0x0

    .line 41
    const/16 v13, 0x3b

    .line 42
    .line 43
    const/4 v9, 0x0

    .line 44
    const/4 v11, 0x0

    .line 45
    invoke-static/range {v8 .. v13}, Lja/a;->a(Lja/a;Lja/b;ZLjava/util/Set;Llb/a0;I)Lja/a;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v2, p0, Lja/c;->b:Lv9/q0;

    .line 50
    .line 51
    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/session/t;->b1(Lv9/q0;Lja/a;)Llb/w;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method
