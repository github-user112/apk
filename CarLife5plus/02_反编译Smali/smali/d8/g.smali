.class public final synthetic Ld8/g;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ld8/j;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Ld8/j;Ljava/util/List;ZII)V
    .locals 0

    .line 1
    iput p5, p0, Ld8/g;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ld8/g;->b:Ld8/j;

    .line 4
    .line 5
    iput-object p2, p0, Ld8/g;->c:Ljava/util/List;

    .line 6
    .line 7
    iput-boolean p3, p0, Ld8/g;->d:Z

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Ld8/g;->a:I

    .line 2
    .line 3
    check-cast p1, Lf1/s;

    .line 4
    .line 5
    check-cast p2, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    const/16 p2, 0x237

    .line 14
    .line 15
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    iget-object v0, p0, Ld8/g;->b:Ld8/j;

    .line 20
    .line 21
    iget-object v1, p0, Ld8/g;->c:Ljava/util/List;

    .line 22
    .line 23
    iget-boolean v2, p0, Ld8/g;->d:Z

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2, p1, p2}, Ld8/j;->a(Ljava/util/List;ZLf1/s;I)V

    .line 26
    .line 27
    .line 28
    :goto_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 29
    .line 30
    return-object p1

    .line 31
    :pswitch_0
    const/16 p2, 0x207

    .line 32
    .line 33
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    iget-object v0, p0, Ld8/g;->b:Ld8/j;

    .line 38
    .line 39
    iget-object v1, p0, Ld8/g;->c:Ljava/util/List;

    .line 40
    .line 41
    iget-boolean v2, p0, Ld8/g;->d:Z

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2, p1, p2}, Ld8/j;->e(Ljava/util/List;ZLf1/s;I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_1
    const/16 p2, 0x207

    .line 48
    .line 49
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    iget-object v0, p0, Ld8/g;->b:Ld8/j;

    .line 54
    .line 55
    iget-object v1, p0, Ld8/g;->c:Ljava/util/List;

    .line 56
    .line 57
    iget-boolean v2, p0, Ld8/g;->d:Z

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2, p1, p2}, Ld8/j;->c(Ljava/util/List;ZLf1/s;I)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
