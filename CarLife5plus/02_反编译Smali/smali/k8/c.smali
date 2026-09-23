.class public abstract Lk8/c;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lc1/w;


# direct methods
.method static constructor <clinit>()V
    .locals 67

    .line 1
    sget-wide v1, Lk8/a;->a:J

    .line 2
    .line 3
    sget-wide v11, Lk8/a;->b:J

    .line 4
    .line 5
    sget-wide v19, Lk8/a;->c:J

    .line 6
    .line 7
    const/16 v65, -0x222

    .line 8
    .line 9
    const/16 v66, 0xf

    .line 10
    .line 11
    const-wide/16 v3, 0x0

    .line 12
    .line 13
    const-wide/16 v5, 0x0

    .line 14
    .line 15
    const-wide/16 v7, 0x0

    .line 16
    .line 17
    const-wide/16 v9, 0x0

    .line 18
    .line 19
    const-wide/16 v13, 0x0

    .line 20
    .line 21
    const-wide/16 v15, 0x0

    .line 22
    .line 23
    const-wide/16 v17, 0x0

    .line 24
    .line 25
    const-wide/16 v21, 0x0

    .line 26
    .line 27
    const-wide/16 v23, 0x0

    .line 28
    .line 29
    const-wide/16 v25, 0x0

    .line 30
    .line 31
    const-wide/16 v27, 0x0

    .line 32
    .line 33
    const-wide/16 v29, 0x0

    .line 34
    .line 35
    const-wide/16 v31, 0x0

    .line 36
    .line 37
    const-wide/16 v33, 0x0

    .line 38
    .line 39
    const-wide/16 v35, 0x0

    .line 40
    .line 41
    const-wide/16 v37, 0x0

    .line 42
    .line 43
    const-wide/16 v39, 0x0

    .line 44
    .line 45
    const-wide/16 v41, 0x0

    .line 46
    .line 47
    const-wide/16 v43, 0x0

    .line 48
    .line 49
    const-wide/16 v45, 0x0

    .line 50
    .line 51
    const-wide/16 v47, 0x0

    .line 52
    .line 53
    const-wide/16 v49, 0x0

    .line 54
    .line 55
    const-wide/16 v51, 0x0

    .line 56
    .line 57
    const-wide/16 v53, 0x0

    .line 58
    .line 59
    const-wide/16 v55, 0x0

    .line 60
    .line 61
    const-wide/16 v57, 0x0

    .line 62
    .line 63
    const-wide/16 v59, 0x0

    .line 64
    .line 65
    const-wide/16 v61, 0x0

    .line 66
    .line 67
    const-wide/16 v63, 0x0

    .line 68
    .line 69
    invoke-static/range {v1 .. v66}, Lc1/y;->b(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJII)Lc1/w;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sput-object v0, Lk8/c;->a:Lc1/w;

    .line 74
    .line 75
    sget-wide v1, Lk8/a;->d:J

    .line 76
    .line 77
    sget-wide v11, Lk8/a;->e:J

    .line 78
    .line 79
    sget-wide v19, Lk8/a;->f:J

    .line 80
    .line 81
    invoke-static/range {v1 .. v66}, Lc1/y;->d(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJII)Lc1/w;

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public static final a(ZLn1/c;Lf1/s;I)V
    .locals 19

    .line 1
    move-object/from16 v4, p2

    .line 2
    .line 3
    move/from16 v6, p3

    .line 4
    .line 5
    const v0, -0x37550720    # -350151.0f

    .line 6
    .line 7
    .line 8
    invoke-virtual {v4, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 9
    .line 10
    .line 11
    or-int/lit8 v0, v6, 0x36

    .line 12
    .line 13
    and-int/lit16 v0, v0, 0x93

    .line 14
    .line 15
    const/16 v1, 0x92

    .line 16
    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v4}, Lf1/s;->z()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v4}, Lf1/s;->Q()V

    .line 27
    .line 28
    .line 29
    move/from16 v0, p0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const v0, 0x49d06319

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v0}, Lf1/s;->W(I)V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-virtual {v4, v0}, Lf1/s;->p(Z)V

    .line 40
    .line 41
    .line 42
    new-instance v2, Lc1/y2;

    .line 43
    .line 44
    new-instance v7, Lb3/o0;

    .line 45
    .line 46
    const-wide/16 v16, 0x0

    .line 47
    .line 48
    const v18, 0xffffdf

    .line 49
    .line 50
    .line 51
    const-wide/16 v8, 0x0

    .line 52
    .line 53
    const-wide/16 v10, 0x0

    .line 54
    .line 55
    const/4 v12, 0x0

    .line 56
    const-wide/16 v13, 0x0

    .line 57
    .line 58
    const/4 v15, 0x0

    .line 59
    invoke-direct/range {v7 .. v18}, Lb3/o0;-><init>(JJLf3/k;JIJI)V

    .line 60
    .line 61
    .line 62
    const/16 v0, 0x7dff

    .line 63
    .line 64
    invoke-direct {v2, v7, v0}, Lc1/y2;-><init>(Lb3/o0;I)V

    .line 65
    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    const/16 v5, 0xc00

    .line 69
    .line 70
    sget-object v0, Lk8/c;->a:Lc1/w;

    .line 71
    .line 72
    move-object/from16 v3, p1

    .line 73
    .line 74
    invoke-static/range {v0 .. v5}, Lc1/n0;->a(Lc1/w;Lc1/k1;Lc1/y2;Ln1/c;Lf1/s;I)V

    .line 75
    .line 76
    .line 77
    const/4 v0, 0x1

    .line 78
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lf1/s;->r()Lf1/w1;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    if-eqz v1, :cond_2

    .line 83
    .line 84
    new-instance v2, Lk8/b;

    .line 85
    .line 86
    move-object/from16 v3, p1

    .line 87
    .line 88
    invoke-direct {v2, v0, v3, v6}, Lk8/b;-><init>(ZLn1/c;I)V

    .line 89
    .line 90
    .line 91
    iput-object v2, v1, Lf1/w1;->d:Lf9/n;

    .line 92
    .line 93
    :cond_2
    return-void
.end method
