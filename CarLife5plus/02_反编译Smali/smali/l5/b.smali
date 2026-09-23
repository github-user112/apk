.class public final synthetic Ll5/b;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:Ld7/q;


# direct methods
.method public synthetic constructor <init>(FLd7/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Ll5/b;->a:F

    .line 5
    .line 6
    iput-object p2, p0, Ll5/b;->b:Ld7/q;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ly1/o;

    .line 2
    .line 3
    check-cast p2, Ln3/l;

    .line 4
    .line 5
    const-string v0, "$this$Slider"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-wide v0, p2, Ln3/l;->a:J

    .line 11
    .line 12
    iget p2, p0, Ll5/b;->a:F

    .line 13
    .line 14
    iget-object v2, p0, Ll5/b;->b:Ld7/q;

    .line 15
    .line 16
    invoke-static {p1, v0, v1, p2, v2}, Ll5/j;->b(Ly1/o;JFLd7/q;)V

    .line 17
    .line 18
    .line 19
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 20
    .line 21
    return-object p1
.end method
