.class public abstract Le/c/b/a/j$a;
.super Le/c/b/a/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/a/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/CharSequence;

.field public final d:Le/c/b/a/b;

.field public final e:Z

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Le/c/b/a/j;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Le/c/b/a/a;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Le/c/b/a/j$a;->f:I

    .line 1
    iget-object v0, p1, Le/c/b/a/j;->a:Le/c/b/a/b;

    .line 2
    iput-object v0, p0, Le/c/b/a/j$a;->d:Le/c/b/a/b;

    .line 3
    iget-boolean v0, p1, Le/c/b/a/j;->b:Z

    .line 4
    iput-boolean v0, p0, Le/c/b/a/j$a;->e:Z

    .line 5
    iget p1, p1, Le/c/b/a/j;->d:I

    .line 6
    iput p1, p0, Le/c/b/a/j$a;->g:I

    iput-object p2, p0, Le/c/b/a/j$a;->c:Ljava/lang/CharSequence;

    return-void
.end method
