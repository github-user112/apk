.class public final La/a/a/a/a/g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/a/a/g$a;
    }
.end annotation


# static fields
.field public static final a:La/a/a/a/a/g$a;


# instance fields
.field public final b:Ljava/security/Key;

.field public final c:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, La/a/a/a/a/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La/a/a/a/a/g$a;-><init>(Lc/k/b/b;)V

    sput-object v0, La/a/a/a/a/g;->a:La/a/a/a/a/g$a;

    return-void
.end method

.method public constructor <init>(Ljava/security/Key;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformation"

    invoke-static {p2, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/a/g;->b:Ljava/security/Key;

    iput-object p2, p0, La/a/a/a/a/g;->c:Ljava/lang/String;

    return-void
.end method
