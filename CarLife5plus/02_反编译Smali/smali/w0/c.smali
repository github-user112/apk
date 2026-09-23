.class public final synthetic Lw0/c;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lr1/p;Lf9/a;ZI)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lw0/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/c;->d:Ljava/lang/Object;

    iput-object p2, p0, Lw0/c;->e:Ljava/lang/Object;

    iput-boolean p3, p0, Lw0/c;->b:Z

    iput p4, p0, Lw0/c;->c:I

    return-void
.end method

.method public synthetic constructor <init>(ZLm3/j;Lw0/r1;I)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lw0/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lw0/c;->b:Z

    iput-object p2, p0, Lw0/c;->d:Ljava/lang/Object;

    iput-object p3, p0, Lw0/c;->e:Ljava/lang/Object;

    iput p4, p0, Lw0/c;->c:I

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lw0/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lw0/c;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lm3/j;

    .line 9
    .line 10
    iget-object v1, p0, Lw0/c;->e:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lw0/r1;

    .line 13
    .line 14
    check-cast p1, Lf1/s;

    .line 15
    .line 16
    check-cast p2, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget p2, p0, Lw0/c;->c:I

    .line 22
    .line 23
    or-int/lit8 p2, p2, 0x1

    .line 24
    .line 25
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    iget-boolean v2, p0, Lw0/c;->b:Z

    .line 30
    .line 31
    invoke-static {v2, v0, v1, p1, p2}, Lw0/y0;->g(ZLm3/j;Lw0/r1;Lf1/s;I)V

    .line 32
    .line 33
    .line 34
    :goto_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 35
    .line 36
    return-object p1

    .line 37
    :pswitch_0
    iget-object v0, p0, Lw0/c;->d:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, Lr1/p;

    .line 40
    .line 41
    iget-object v1, p0, Lw0/c;->e:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v1, Lf9/a;

    .line 44
    .line 45
    check-cast p1, Lf1/s;

    .line 46
    .line 47
    check-cast p2, Ljava/lang/Integer;

    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    iget p2, p0, Lw0/c;->c:I

    .line 53
    .line 54
    or-int/lit8 p2, p2, 0x1

    .line 55
    .line 56
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    iget-boolean v2, p0, Lw0/c;->b:Z

    .line 61
    .line 62
    invoke-static {v0, v1, v2, p1, p2}, Lw0/y0;->e(Lr1/p;Lf9/a;ZLf1/s;I)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
