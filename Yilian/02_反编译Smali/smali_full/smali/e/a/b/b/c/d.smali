.class public final Le/a/b/b/c/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Le/a/b/b/b/g;

.field public b:Le/a/b/b/b/d;

.field public c:[B

.field public d:I

.field public e:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Le/a/b/b/b/c;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/b/b/b/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b/b/c/d;->a:Le/a/b/b/b/g;

    const/4 p1, 0x0

    iput-object p1, p0, Le/a/b/b/c/d;->b:Le/a/b/b/b/d;

    iput-object p1, p0, Le/a/b/b/c/d;->c:[B

    const/4 v0, 0x0

    iput v0, p0, Le/a/b/b/c/d;->d:I

    iput-object p1, p0, Le/a/b/b/c/d;->e:Ljava/util/TreeMap;

    return-void
.end method

.method public static a(Le/a/b/b/b/c;IILjava/lang/String;Ljava/io/PrintWriter;Le/a/b/f/a;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ld/s/y;->e0(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Le/a/b/b/b/c;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p4, :cond_0

    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    check-cast p5, Le/a/b/f/c;

    invoke-virtual {p5, p2, p0}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    iget-object v0, p0, Le/a/b/b/c/d;->b:Le/a/b/b/b/d;

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/b/b/c/d;->a:Le/a/b/b/b/g;

    .line 1
    invoke-virtual {v0}, Le/a/b/b/b/g;->a()V

    iget-object v0, v0, Le/a/b/b/b/g;->d:Le/a/b/b/b/d;

    .line 2
    iput-object v0, p0, Le/a/b/b/c/d;->b:Le/a/b/b/b/d;

    :cond_0
    return-void
.end method
