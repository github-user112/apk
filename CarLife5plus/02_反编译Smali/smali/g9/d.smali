.class public abstract Lg9/d;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lm9/b;
.implements Ljava/io/Serializable;


# instance fields
.field public transient a:Lm9/b;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Class;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg9/d;->b:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lg9/d;->c:Ljava/lang/Class;

    .line 7
    .line 8
    iput-object p3, p0, Lg9/d;->d:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lg9/d;->e:Ljava/lang/String;

    .line 11
    .line 12
    iput-boolean p5, p0, Lg9/d;->f:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public abstract a()Lm9/b;
.end method

.method public final d()Lm9/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lg9/d;->c:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    iget-boolean v1, p0, Lg9/d;->f:Z

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    sget-object v1, Lg9/y;->a:Lg9/z;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lg9/z;->c(Ljava/lang/Class;)Lm9/e;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_1
    sget-object v1, Lg9/y;->a:Lg9/z;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg9/d;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
