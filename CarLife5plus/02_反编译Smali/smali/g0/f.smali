.class public final Lg0/f;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lh0/p;


# instance fields
.field public final a:Lf9/n;

.field public final b:Lf9/k;

.field public final c:Ln1/c;


# direct methods
.method public constructor <init>(Lf9/n;Lf9/k;Ln1/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg0/f;->a:Lf9/n;

    .line 5
    .line 6
    iput-object p2, p0, Lg0/f;->b:Lf9/k;

    .line 7
    .line 8
    iput-object p3, p0, Lg0/f;->c:Ln1/c;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getKey()Lf9/k;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final getType()Lf9/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lg0/f;->b:Lf9/k;

    .line 2
    .line 3
    return-object v0
.end method
