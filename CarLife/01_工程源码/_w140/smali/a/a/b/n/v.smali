.class public La/a/b/n/v;
.super La/a/b/n/g;
.source ""


# static fields
.field public static Z:La/a/b/n/v;


# instance fields
.field public a0:Landroid/widget/ImageButton;

.field public b0:Landroid/widget/TextView;

.field public c0:La/a/b/s/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, La/a/b/n/g;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La/a/b/n/v;->c0:La/a/b/s/c;

    return-void
.end method


# virtual methods
.method public O(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    invoke-super {p0, p1, p2, p3}, La/a/b/n/g;->O(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const/4 p1, 0x1

    new-array p2, p1, [Ljava/lang/Object;

    const-string p3, "onCreateView"

    const/4 v0, 0x0

    aput-object p3, p2, v0

    const-string p3, "SettingsFragment"

    invoke-static {p3, p2}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p2, La/a/b/n/g;->V:Lcom/baidu/carlifevehicle/CarlifeActivity;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c002f

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, La/a/b/n/g;->Y:Landroid/view/View;

    const p3, 0x7f09007c

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, La/a/b/n/v;->a0:Landroid/widget/ImageButton;

    new-instance p3, La/a/b/n/v$j;

    invoke-direct {p3, p0}, La/a/b/n/v$j;-><init>(La/a/b/n/v;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, La/a/b/n/g;->Y:Landroid/view/View;

    const p3, 0x7f090128

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, La/a/b/n/v;->b0:Landroid/widget/TextView;

    const p3, 0x7f0e0067

    invoke-virtual {p0, p3}, Lb/h/b/m;->z(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, La/a/b/n/g;->Y:Landroid/view/View;

    const p3, 0x7f090126

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object p3

    sget v1, La/a/a/a/l/b;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1
    iget-object p3, p3, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "AUDIO_TRACK_STREAM_TYPE"

    invoke-interface {p3, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    :goto_0
    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance p3, La/a/b/n/v$k;

    invoke-direct {p3, p0, v1}, La/a/b/n/v$k;-><init>(La/a/b/n/v;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lb/h/b/m;->f()Landroid/content/Context;

    move-result-object p2

    const-string p3, "usb"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/usb/UsbManager;

    iget-object p3, p0, La/a/b/n/g;->Y:Landroid/view/View;

    const v1, 0x7f09004f

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object v1

    .line 3
    iget-object v1, v1, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    const-string v2, ""

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    const-string v3, "USBSBHLPID"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    :goto_1
    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object v3

    .line 5
    iget-object v3, v3, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    if-nez v3, :cond_2

    move-object v3, v2

    goto :goto_2

    :cond_2
    const-string v4, "USBSBHLVID"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6
    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "\u5ffd\u7565\u63d2\u5165\u7684\u8bbe\u5907"

    goto :goto_3

    :cond_3
    const-string v2, "\u53d6\u6d88\u5ffd\u7565"

    :goto_3
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/text/style/UnderlineSpan;

    invoke-direct {v5}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v6, 0x11

    invoke-virtual {v4, v5, v0, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, La/a/b/n/v$l;

    invoke-direct {v2, p0, v1, v3, p2}, La/a/b/n/v$l;-><init>(La/a/b/n/v;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/usb/UsbManager;)V

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, La/a/b/n/g;->Y:Landroid/view/View;

    const p3, 0x7f0900f2

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iget-object p3, p0, La/a/b/n/g;->Y:Landroid/view/View;

    const v1, 0x7f0900f0

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RadioButton;

    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object v1

    sget-boolean v2, La/a/a/a/l/b;->j:Z

    .line 7
    iget-object v1, v1, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    const-string v3, "STARTING"

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :goto_4
    if-eqz v1, :cond_5

    .line 8
    invoke-virtual {p2, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-virtual {p3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_6

    :cond_5
    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object v1

    sget-boolean v2, La/a/a/a/l/b;->j:Z

    .line 9
    iget-object v1, v1, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto :goto_5

    :cond_6
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :goto_5
    if-eqz v1, :cond_7

    .line 10
    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-virtual {p3, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_7
    :goto_6
    new-instance v1, La/a/b/n/v$m;

    invoke-direct {v1, p0}, La/a/b/n/v$m;-><init>(La/a/b/n/v;)V

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, La/a/b/n/v$n;

    invoke-direct {p2, p0}, La/a/b/n/v$n;-><init>(La/a/b/n/v;)V

    invoke-virtual {p3, p2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, La/a/b/n/g;->Y:Landroid/view/View;

    const p3, 0x7f0900cd

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iget-object p3, p0, La/a/b/n/g;->Y:Landroid/view/View;

    const v1, 0x7f0900cc

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RadioButton;

    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object v1

    sget-boolean v2, La/a/a/a/l/b;->k:Z

    .line 11
    iget-object v1, v1, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    const-string v3, "PULL_UP_VEHICLE"

    if-nez v1, :cond_8

    const/4 v1, 0x0

    goto :goto_7

    :cond_8
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :goto_7
    if-eqz v1, :cond_9

    .line 12
    invoke-virtual {p2, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-virtual {p3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_9

    :cond_9
    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object v1

    sget-boolean v2, La/a/a/a/l/b;->k:Z

    .line 13
    iget-object v1, v1, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_8

    :cond_a
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :goto_8
    if-eqz v1, :cond_b

    .line 14
    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-virtual {p3, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_b
    :goto_9
    new-instance v1, La/a/b/n/v$o;

    invoke-direct {v1, p0}, La/a/b/n/v$o;-><init>(La/a/b/n/v;)V

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, La/a/b/n/v$p;

    invoke-direct {p2, p0}, La/a/b/n/v$p;-><init>(La/a/b/n/v;)V

    invoke-virtual {p3, p2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, La/a/b/n/g;->Y:Landroid/view/View;

    const p3, 0x7f0900b3

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object p3

    sget v1, La/a/a/a/l/b;->c:I

    .line 15
    iget-object p3, p3, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    if-nez p3, :cond_c

    goto :goto_a

    :cond_c
    const-string v2, "STREAM_MUSIC"

    invoke-interface {p3, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 16
    :goto_a
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance p3, La/a/b/n/v$q;

    invoke-direct {p3, p0, v1}, La/a/b/n/v$q;-><init>(La/a/b/n/v;I)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p2, p0, La/a/b/n/g;->Y:Landroid/view/View;

    const p3, 0x7f0900b0

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    const/4 p3, 0x3

    new-array v1, p3, [Ljava/lang/String;

    const-string v2, "\u8f66\u8f7d\u9ea6\u514b\u98ce"

    aput-object v2, v1, v0

    const-string v2, "\u624b\u673a\u9ea6\u514b\u98ce"

    aput-object v2, v1, p1

    const-string v2, "\u4e0d\u652f\u6301"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Landroid/widget/ArrayAdapter;

    sget-object v4, La/a/b/n/g;->W:Landroid/content/Context;

    const v5, 0x7f0c0023

    invoke-direct {v2, v4, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v1, 0x7f0c0022

    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {p2, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object v2

    sget v4, La/a/a/a/l/b;->d:I

    .line 17
    iget-object v2, v2, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    if-nez v2, :cond_d

    goto :goto_b

    :cond_d
    const-string v7, "VOICE_MIC"

    invoke-interface {v2, v7, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 18
    :goto_b
    invoke-virtual {p2, v4, p1}, Landroid/widget/Spinner;->setSelection(IZ)V

    new-instance v2, La/a/b/n/v$r;

    invoke-direct {v2, p0}, La/a/b/n/v$r;-><init>(La/a/b/n/v;)V

    invoke-virtual {p2, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object p2, p0, La/a/b/n/g;->Y:Landroid/view/View;

    const v2, 0x7f090122

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "\u5bfc\u822a\u680f\u9690\u85cf1"

    aput-object v4, v2, v0

    const-string v4, "\u5bfc\u822a\u680f\u663e\u793a1"

    aput-object v4, v2, p1

    const-string v4, "\u5bfc\u822a\u680f\u9690\u85cf2"

    aput-object v4, v2, v3

    const-string v4, "\u5bfc\u822a\u680f\u663e\u793a2"

    aput-object v4, v2, p3

    const-string v4, "\u6c89\u6d78\u5f0f\u5168\u5c4f"

    const/4 v7, 0x4

    aput-object v4, v2, v7

    const/4 v4, 0x5

    const-string v8, "\u9690\u85cf\u72b6\u6001\u680f"

    aput-object v8, v2, v4

    const/4 v4, 0x6

    const-string v8, "\u9690\u85cf\u5bfc\u822a\u680f"

    aput-object v8, v2, v4

    const/4 v4, 0x7

    const-string v8, "\u8f7b\u89e6\u6062\u590d"

    aput-object v8, v2, v4

    const/16 v4, 0x8

    const-string v8, "\u7cfb\u7edf\u9ed8\u8ba4"

    aput-object v8, v2, v4

    const/16 v4, 0x9

    const-string v8, "\u957f\u57ce\u54c8\u66fc\u8f66\u673a\u5168\u5c4f"

    aput-object v8, v2, v4

    const/16 v4, 0xa

    const-string v8, "\u663e\u793a\u72b6\u6001\u680f\u548c\u5bfc\u822a\u680f"

    aput-object v8, v2, v4

    new-instance v4, Landroid/widget/ArrayAdapter;

    sget-object v8, La/a/b/n/g;->W:Landroid/content/Context;

    invoke-direct {v4, v8, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {p2, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object v2

    sget v4, La/a/a/a/l/b;->e:I

    .line 19
    iget-object v2, v2, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    if-nez v2, :cond_e

    goto :goto_c

    :cond_e
    const-string v8, "TOOLBAR_SET"

    invoke-interface {v2, v8, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 20
    :goto_c
    invoke-virtual {p2, v4, p1}, Landroid/widget/Spinner;->setSelection(IZ)V

    new-instance v2, La/a/b/n/v$a;

    invoke-direct {v2, p0}, La/a/b/n/v$a;-><init>(La/a/b/n/v;)V

    invoke-virtual {p2, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object p2, p0, La/a/b/n/g;->Y:Landroid/view/View;

    const v2, 0x7f09012f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    new-array v2, v3, [Ljava/lang/String;

    const-string v4, "GPU\u6e32\u67d3"

    aput-object v4, v2, v0

    const-string v4, "CPU\u6e32\u67d3"

    aput-object v4, v2, p1

    new-instance v4, Landroid/widget/ArrayAdapter;

    sget-object v8, La/a/b/n/g;->W:Landroid/content/Context;

    invoke-direct {v4, v8, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {p2, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-array v2, p1, [I

    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object v4

    sget v8, La/a/a/a/l/b;->f:I

    .line 21
    iget-object v4, v4, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    if-nez v4, :cond_f

    goto :goto_d

    :cond_f
    const-string v9, "VIDEO_SURFACE_MS"

    invoke-interface {v4, v9, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    :goto_d
    aput v8, v2, v0

    .line 22
    aget v4, v2, v0

    invoke-virtual {p2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    new-instance v4, La/a/b/n/v$b;

    invoke-direct {v4, p0, v2}, La/a/b/n/v$b;-><init>(La/a/b/n/v;[I)V

    invoke-virtual {p2, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object p2, p0, La/a/b/n/g;->Y:Landroid/view/View;

    const v2, 0x7f0900c2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v8, Landroid/text/style/UnderlineSpan;

    invoke-direct {v8}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v4, v8, v0, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, La/a/b/n/v$c;

    invoke-direct {v2, p0}, La/a/b/n/v$c;-><init>(La/a/b/n/v;)V

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, La/a/b/n/g;->Y:Landroid/view/View;

    const v2, 0x7f090048

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    new-array v2, v7, [Ljava/lang/String;

    const-string v4, "\u8fd4\u56de\u684c\u9762"

    aput-object v4, v2, v0

    const-string v4, "\u9000\u51fa\u5e94\u7528"

    aput-object v4, v2, p1

    const-string v4, "\u6295\u5c4f\u540e\u8fd4\u56de\u6295\u5c4f\u4e3b\u9875"

    aput-object v4, v2, v3

    const-string v4, "\u4e0d\u8bbe\u7f6e"

    aput-object v4, v2, p3

    new-instance p3, Landroid/widget/ArrayAdapter;

    sget-object v4, La/a/b/n/g;->W:Landroid/content/Context;

    invoke-direct {p3, v4, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p3, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object p3

    sget v2, La/a/a/a/l/b;->u:I

    .line 23
    iget-object p3, p3, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    if-nez p3, :cond_10

    goto :goto_e

    :cond_10
    const-string v4, "BACKBUTTONSET"

    invoke-interface {p3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 24
    :goto_e
    invoke-virtual {p2, v2, p1}, Landroid/widget/Spinner;->setSelection(IZ)V

    new-instance p3, La/a/b/n/v$d;

    invoke-direct {p3, p0}, La/a/b/n/v$d;-><init>(La/a/b/n/v;)V

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object p2, p0, La/a/b/n/g;->Y:Landroid/view/View;

    const p3, 0x7f09013a

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    new-array p3, v3, [Ljava/lang/String;

    const-string v2, "\u4e92\u8054\u901a\u9053"

    aput-object v2, p3, v0

    const-string v2, "\u84dd\u7259\u901a\u9053"

    aput-object v2, p3, p1

    new-instance v2, Landroid/widget/ArrayAdapter;

    sget-object v3, La/a/b/n/g;->W:Landroid/content/Context;

    invoke-direct {v2, v3, v5, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {p2, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object p3

    sget v1, La/a/a/a/l/b;->v:I

    .line 25
    iget-object p3, p3, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    if-nez p3, :cond_11

    goto :goto_f

    :cond_11
    const-string v2, "AUDIO_TRANSMISSION_MODE"

    invoke-interface {p3, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 26
    :goto_f
    invoke-virtual {p2, v1, p1}, Landroid/widget/Spinner;->setSelection(IZ)V

    new-instance p3, La/a/b/n/v$e;

    invoke-direct {p3, p0}, La/a/b/n/v$e;-><init>(La/a/b/n/v;)V

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object p2, p0, La/a/b/n/g;->Y:Landroid/view/View;

    const p3, 0x7f0900ac

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iget-object p3, p0, La/a/b/n/g;->Y:Landroid/view/View;

    const v1, 0x7f0900ad

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RadioButton;

    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object v1

    sget v2, La/a/a/a/l/b;->w:I

    .line 27
    iget-object v1, v1, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    const-string v3, "MEDIAAPI_BB"

    if-nez v1, :cond_12

    goto :goto_10

    :cond_12
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    :goto_10
    if-nez v2, :cond_13

    .line 28
    invoke-virtual {p2, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-virtual {p3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_12

    :cond_13
    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object v1

    sget v2, La/a/a/a/l/b;->w:I

    .line 29
    iget-object v1, v1, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    if-nez v1, :cond_14

    goto :goto_11

    :cond_14
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    :goto_11
    if-ne v2, p1, :cond_15

    .line 30
    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-virtual {p3, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_15
    :goto_12
    new-instance p1, La/a/b/n/v$f;

    invoke-direct {p1, p0}, La/a/b/n/v$f;-><init>(La/a/b/n/v;)V

    invoke-virtual {p2, p1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, La/a/b/n/v$g;

    invoke-direct {p1, p0}, La/a/b/n/v$g;-><init>(La/a/b/n/v;)V

    invoke-virtual {p3, p1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, La/a/b/n/g;->Y:Landroid/view/View;

    const p2, 0x7f09012d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object p2

    sget-wide v0, La/a/a/a/l/b;->x:J

    .line 31
    iget-object p2, p2, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    if-nez p2, :cond_16

    goto :goto_13

    :cond_16
    const-string p3, "USB_AUTO_CLICK"

    invoke-interface {p2, p3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 32
    :goto_13
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance p2, La/a/b/n/v$h;

    invoke-direct {p2, p0}, La/a/b/n/v$h;-><init>(La/a/b/n/v;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, La/a/b/n/g;->Y:Landroid/view/View;

    const p2, 0x7f0900f1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object p2

    sget p3, La/a/a/a/l/b;->y:I

    .line 33
    iget-object p2, p2, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    if-nez p2, :cond_17

    goto :goto_14

    :cond_17
    const-string v0, "STARTING_TIMEOUT"

    invoke-interface {p2, v0, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p3

    .line 34
    :goto_14
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance p2, La/a/b/n/v$i;

    invoke-direct {p2, p0}, La/a/b/n/v$i;-><init>(La/a/b/n/v;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, La/a/b/n/g;->Y:Landroid/view/View;

    return-object p1
.end method

.method public Q()V
    .locals 3

    invoke-super {p0}, La/a/b/n/g;->Q()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onDestroyView"

    aput-object v2, v0, v1

    const-string v1, "SettingsFragment"

    invoke-static {v1, v0}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
