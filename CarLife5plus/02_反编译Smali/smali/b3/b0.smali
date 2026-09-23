.class public final Lb3/b0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lo1/j;


# instance fields
.field public final synthetic a:Lf9/n;

.field public final synthetic b:Lf9/k;


# direct methods
.method public constructor <init>(Lf9/n;Lf9/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb3/b0;->a:Lf9/n;

    .line 5
    .line 6
    iput-object p2, p0, Lb3/b0;->b:Lf9/k;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/b0;->b:Lf9/k;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final e(Lo1/a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/b0;->a:Lf9/n;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
