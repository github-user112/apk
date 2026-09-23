.class public final synthetic Lk8/b;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lw0/r1;ZI)V
    .locals 0

    .line 1
    const/4 p3, 0x1

    iput p3, p0, Lk8/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk8/b;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Lk8/b;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLn1/c;I)V
    .locals 0

    .line 2
    const/4 p3, 0x0

    iput p3, p0, Lk8/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lk8/b;->b:Z

    iput-object p2, p0, Lk8/b;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lk8/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lk8/b;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lw0/r1;

    .line 9
    .line 10
    check-cast p1, Lf1/s;

    .line 11
    .line 12
    check-cast p2, Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const/4 p2, 0x1

    .line 18
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    iget-boolean v1, p0, Lk8/b;->b:Z

    .line 23
    .line 24
    invoke-static {v0, v1, p1, p2}, Ll0/p0;->g(Lw0/r1;ZLf1/s;I)V

    .line 25
    .line 26
    .line 27
    :goto_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 28
    .line 29
    return-object p1

    .line 30
    :pswitch_0
    iget-object v0, p0, Lk8/b;->c:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Ln1/c;

    .line 33
    .line 34
    check-cast p1, Lf1/s;

    .line 35
    .line 36
    check-cast p2, Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    const/16 p2, 0x181

    .line 42
    .line 43
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    iget-boolean v1, p0, Lk8/b;->b:Z

    .line 48
    .line 49
    invoke-static {v1, v0, p1, p2}, Lk8/c;->a(ZLn1/c;Lf1/s;I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
