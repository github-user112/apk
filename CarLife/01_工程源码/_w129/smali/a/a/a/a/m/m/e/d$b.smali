.class public final La/a/a/a/m/m/e/d$b;
.super Lc/k/b/d;
.source ""

# interfaces
.implements Lc/k/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/a/a/m/m/e/d;-><init>(La/a/a/a/c;La/a/a/a/a/j/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/k/b/d;",
        "Lc/k/a/a<",
        "La/a/a/a/m/m/e/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:La/a/a/a/m/m/e/d$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, La/a/a/a/m/m/e/d$b;

    invoke-direct {v0}, La/a/a/a/m/m/e/d$b;-><init>()V

    sput-object v0, La/a/a/a/m/m/e/d$b;->b:La/a/a/a/m/m/e/d$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc/k/b/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, La/a/a/a/m/m/e/b;

    invoke-direct {v0}, La/a/a/a/m/m/e/b;-><init>()V

    return-object v0
.end method
