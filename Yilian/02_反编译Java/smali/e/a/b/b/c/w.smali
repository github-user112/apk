.class public abstract Le/a/b/b/c/w;
.super Le/a/b/b/c/x;
.source ""


# instance fields
.field public final b:Le/a/b/d/c/w;


# direct methods
.method public constructor <init>(Le/a/b/d/c/w;)V
    .locals 1

    invoke-direct {p0}, Le/a/b/b/c/x;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Le/a/b/b/c/w;->b:Le/a/b/d/c/w;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "type == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Le/a/b/b/c/m;)V
    .locals 1

    .line 1
    iget-object p1, p1, Le/a/b/b/c/m;->g:Le/a/b/b/c/q0;

    .line 2
    iget-object v0, p0, Le/a/b/b/c/w;->b:Le/a/b/d/c/w;

    invoke-virtual {p1, v0}, Le/a/b/b/c/q0;->o(Le/a/b/d/c/w;)Le/a/b/b/c/p0;

    return-void
.end method
