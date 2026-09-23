.class public final Lhb/j;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lhb/l;
.implements Lhb/n;
.implements Lhb/m;


# static fields
.field public static final c:Lhb/j;

.field public static final d:Lhb/j;

.field public static final e:Lhb/j;

.field public static final f:Lhb/j;

.field public static final g:Lhb/j;


# instance fields
.field public final synthetic b:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lhb/j;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lhb/j;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lhb/j;->c:Lhb/j;

    .line 8
    .line 9
    new-instance v0, Lhb/j;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lhb/j;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lhb/j;->d:Lhb/j;

    .line 16
    .line 17
    new-instance v0, Lhb/j;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-direct {v0, v1}, Lhb/j;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lhb/j;->e:Lhb/j;

    .line 24
    .line 25
    new-instance v0, Lhb/j;

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    invoke-direct {v0, v1}, Lhb/j;-><init>(I)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lhb/j;->f:Lhb/j;

    .line 32
    .line 33
    new-instance v0, Lhb/j;

    .line 34
    .line 35
    const/4 v1, 0x4

    .line 36
    invoke-direct {v0, v1}, Lhb/j;-><init>(I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lhb/j;->g:Lhb/j;

    .line 40
    .line 41
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lhb/j;->b:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static e(Lpa/c0;)Lv9/x;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, -0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lhb/x;->a:[I

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    aget p0, v0, p0

    .line 12
    .line 13
    :goto_0
    const/4 v0, 0x1

    .line 14
    sget-object v1, Lv9/x;->b:Lv9/x;

    .line 15
    .line 16
    if-eq p0, v0, :cond_4

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    if-eq p0, v0, :cond_3

    .line 20
    .line 21
    const/4 v0, 0x3

    .line 22
    if-eq p0, v0, :cond_2

    .line 23
    .line 24
    const/4 v0, 0x4

    .line 25
    if-eq p0, v0, :cond_1

    .line 26
    .line 27
    return-object v1

    .line 28
    :cond_1
    sget-object p0, Lv9/x;->c:Lv9/x;

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_2
    sget-object p0, Lv9/x;->e:Lv9/x;

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_3
    sget-object p0, Lv9/x;->d:Lv9/x;

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_4
    return-object v1
.end method


# virtual methods
.method public a(Lpa/s0;Ljava/lang/String;Llb/a0;Llb/a0;)Llb/w;
    .locals 1

    .line 1
    const-string v0, "proto"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "flexibleId"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "lowerBound"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "upperBound"

    .line 17
    .line 18
    invoke-static {p4, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const-string p2, "This method should not be used."

    .line 24
    .line 25
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1
.end method

.method public b(Lv9/c;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 p1, 0x3

    .line 5
    new-array p1, p1, [Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x1

    .line 9
    const-string v2, "descriptor"

    .line 10
    .line 11
    aput-object v2, p1, v0

    .line 12
    .line 13
    const-string v0, "kotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter$1"

    .line 14
    .line 15
    aput-object v0, p1, v1

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    const-string v1, "reportCannotInferVisibility"

    .line 19
    .line 20
    aput-object v1, p1, v0

    .line 21
    .line 22
    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    .line 23
    .line 24
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0
.end method

.method public c(Lv9/e;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    return-void
.end method

.method public d()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget v0, p0, Lhb/j;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 7
    .line 8
    return-object v0

    .line 9
    :pswitch_0
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
