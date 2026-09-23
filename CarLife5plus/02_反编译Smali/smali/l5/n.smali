.class public final synthetic Ll5/n;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Lr1/p;

.field public final synthetic b:Ll5/l;

.field public final synthetic c:Z

.field public final synthetic d:Lf9/k;

.field public final synthetic e:Lf9/k;

.field public final synthetic f:Lf9/k;

.field public final synthetic g:Lf9/n;

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Lr1/p;Ll5/l;ZLf9/k;Lf9/k;Lf9/k;Lf9/n;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll5/n;->a:Lr1/p;

    .line 5
    .line 6
    iput-object p2, p0, Ll5/n;->b:Ll5/l;

    .line 7
    .line 8
    iput-boolean p3, p0, Ll5/n;->c:Z

    .line 9
    .line 10
    iput-object p4, p0, Ll5/n;->d:Lf9/k;

    .line 11
    .line 12
    iput-object p5, p0, Ll5/n;->e:Lf9/k;

    .line 13
    .line 14
    iput-object p6, p0, Ll5/n;->f:Lf9/k;

    .line 15
    .line 16
    iput-object p7, p0, Ll5/n;->g:Lf9/n;

    .line 17
    .line 18
    iput p8, p0, Ll5/n;->h:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    move-object v7, p1

    .line 2
    check-cast v7, Lf1/s;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const-string p1, "$modifier"

    .line 10
    .line 11
    iget-object v0, p0, Ll5/n;->a:Lr1/p;

    .line 12
    .line 13
    invoke-static {v0, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "$controller"

    .line 17
    .line 18
    iget-object v1, p0, Ll5/n;->b:Ll5/l;

    .line 19
    .line 20
    invoke-static {v1, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string p1, "$setup"

    .line 24
    .line 25
    iget-object v5, p0, Ll5/n;->f:Lf9/k;

    .line 26
    .line 27
    invoke-static {v5, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string p1, "$draw"

    .line 31
    .line 32
    iget-object v6, p0, Ll5/n;->g:Lf9/n;

    .line 33
    .line 34
    invoke-static {v6, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget p1, p0, Ll5/n;->h:I

    .line 38
    .line 39
    or-int/lit8 p1, p1, 0x1

    .line 40
    .line 41
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    iget-boolean v2, p0, Ll5/n;->c:Z

    .line 46
    .line 47
    iget-object v3, p0, Ll5/n;->d:Lf9/k;

    .line 48
    .line 49
    iget-object v4, p0, Ll5/n;->e:Lf9/k;

    .line 50
    .line 51
    invoke-static/range {v0 .. v8}, Li9/a;->a(Lr1/p;Ll5/l;ZLf9/k;Lf9/k;Lf9/k;Lf9/n;Lf1/s;I)V

    .line 52
    .line 53
    .line 54
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 55
    .line 56
    return-object p1
.end method
