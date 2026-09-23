.class public final Loa/d;
.super Loa/c;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lna/m;


# direct methods
.method public synthetic constructor <init>(Lna/m;I)V
    .locals 0

    .line 1
    iput p2, p0, Loa/d;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Loa/d;->c:Lna/m;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Loa/c;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final d([Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Loa/d;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Loa/d;->c:Lna/m;

    .line 9
    .line 10
    check-cast v0, Loa/e;

    .line 11
    .line 12
    iget-object v0, v0, Loa/e;->b:Loa/g;

    .line 13
    .line 14
    iput-object p1, v0, Loa/g;->h:[Ljava/lang/String;

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string v0, "Argument for @NotNull parameter \'result\' of kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinSerializedIrArgumentVisitor$1.visitEnd must not be null"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :pswitch_0
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Loa/d;->c:Lna/m;

    .line 28
    .line 29
    check-cast v0, Loa/e;

    .line 30
    .line 31
    iget-object v0, v0, Loa/e;->b:Loa/g;

    .line 32
    .line 33
    iput-object p1, v0, Loa/g;->e:[Ljava/lang/String;

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    const-string v0, "Argument for @NotNull parameter \'result\' of kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor$2.visitEnd must not be null"

    .line 39
    .line 40
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :pswitch_1
    if-eqz p1, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Loa/d;->c:Lna/m;

    .line 47
    .line 48
    check-cast v0, Loa/e;

    .line 49
    .line 50
    iget-object v0, v0, Loa/e;->b:Loa/g;

    .line 51
    .line 52
    iput-object p1, v0, Loa/g;->d:[Ljava/lang/String;

    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    const-string v0, "Argument for @NotNull parameter \'result\' of kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor$1.visitEnd must not be null"

    .line 58
    .line 59
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
