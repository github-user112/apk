.class public final La/a/a/a/a/a/f/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:La/a/a/a/a/g;

.field public b:La/a/a/a/a/d;

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La/a/a/a/a/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/a/a/f/a;->a:La/a/a/a/a/g;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, La/a/a/a/a/a/f/a;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/a/a/f/a;->a:La/a/a/a/a/g;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    const-string v1, "data"

    .line 1
    invoke-static {p1, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    const-string v3, "decode(data, Base64.NO_WRAP)"

    invoke-static {p1, v3}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, La/a/a/a/a/g;->c:Ljava/lang/String;

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iget-object v0, v0, La/a/a/a/a/g;->b:Ljava/security/Key;

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->update([B)[B

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object p1

    const-string v0, "cipher.doFinal()"

    invoke-static {p1, v0}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    .line 3
    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, La/a/a/a/a/d;

    invoke-direct {v0, p1}, La/a/a/a/a/d;-><init>([B)V

    .line 4
    iput-object v0, p0, La/a/a/a/a/a/f/a;->b:La/a/a/a/a/d;

    iget-object p1, p0, La/a/a/a/a/a/f/a;->c:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "you must pass a non null RSAEncryptor in constructor"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
