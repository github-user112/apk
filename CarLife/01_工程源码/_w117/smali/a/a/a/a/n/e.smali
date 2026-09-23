.class public final La/a/a/a/n/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lc/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, La/a/a/a/n/e$a;->b:La/a/a/a/n/e$a;

    invoke-static {v0}, La/d/a/b;->b(Lc/k/a/a;)Lc/a;

    move-result-object v0

    sput-object v0, La/a/a/a/n/e;->a:Lc/a;

    return-void
.end method

.method public static final a()I
    .locals 1

    sget-object v0, La/a/a/a/n/e;->a:Lc/a;

    invoke-interface {v0}, Lc/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method
