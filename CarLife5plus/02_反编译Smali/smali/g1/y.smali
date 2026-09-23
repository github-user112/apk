.class public final Lg1/y;
.super Lg1/j0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final d:Lg1/y;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lg1/y;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x3

    .line 5
    invoke-direct {v0, v1, v1, v2}, Lg1/j0;-><init>(III)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lg1/y;->d:Lg1/y;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final c(Lg1/l0;Lf1/c;Lf1/k2;Ln1/i;Lg1/k0;)V
    .locals 0

    .line 1
    iget p1, p3, Lf1/k2;->t:I

    .line 2
    .line 3
    new-instance p2, La8/d;

    .line 4
    .line 5
    const/16 p5, 0xa

    .line 6
    .line 7
    invoke-direct {p2, p5, p4}, La8/d;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3, p1, p2}, Lf1/k2;->n(ILf9/n;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3}, Lf1/k2;->G()Z

    .line 14
    .line 15
    .line 16
    return-void
.end method
