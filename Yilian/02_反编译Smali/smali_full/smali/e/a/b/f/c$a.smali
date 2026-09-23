.class public Le/a/b/f/c$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b/f/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/b/f/c$a;->a:I

    iput p2, p0, Le/a/b/f/c$a;->b:I

    iput-object p3, p0, Le/a/b/f/c$a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/b/f/c$a;->a:I

    const p1, 0x7fffffff

    iput p1, p0, Le/a/b/f/c$a;->b:I

    iput-object p2, p0, Le/a/b/f/c$a;->c:Ljava/lang/String;

    return-void
.end method
