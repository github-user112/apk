.class public final Lf1/v0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf1/y2;


# instance fields
.field public final a:Lr8/o;


# direct methods
.method public constructor <init>(Lf9/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lr8/a;->d(Lf9/a;)Lr8/o;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lf1/v0;->a:Lr8/o;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Lf1/q1;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p1, p0, Lf1/v0;->a:Lr8/o;

    .line 2
    .line 3
    invoke-virtual {p1}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
