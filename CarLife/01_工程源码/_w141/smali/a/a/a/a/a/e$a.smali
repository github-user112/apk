.class public final La/a/a/a/a/e$a;
.super Lc/k/b/d;
.source ""

# interfaces
.implements Lc/k/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/a/a/a/e;-><init>(Landroid/content/Context;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/k/b/d;",
        "Lc/k/a/a<",
        "Landroid/content/SharedPreferences;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:La/a/a/a/a/e;


# direct methods
.method public constructor <init>(La/a/a/a/a/e;)V
    .locals 0

    iput-object p1, p0, La/a/a/a/a/e$a;->b:La/a/a/a/a/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lc/k/b/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, La/a/a/a/a/e$a;->b:La/a/a/a/a/e;

    .line 2
    iget-object v0, v0, La/a/a/a/a/e;->b:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "CarLifeSDK"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
