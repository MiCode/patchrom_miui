.class public Lcom/android/settings/Display;
.super Landroid/app/Activity;
.source "Display.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCurConfig:Landroid/content/res/Configuration;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mFontSize:Landroid/widget/Spinner;

.field private mFontSizeChanged:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPreview:Landroid/widget/TextView;

.field private mTextSizeTyped:Landroid/util/TypedValue;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 114
    new-instance v0, Lcom/android/settings/Display$1;

    invoke-direct {v0, p0}, Lcom/android/settings/Display$1;-><init>(Lcom/android/settings/Display;)V

    iput-object v0, p0, Lcom/android/settings/Display;->mFontSizeChanged:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 137
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Display;->mCurConfig:Landroid/content/res/Configuration;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/Display;)Landroid/content/res/Configuration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/Display;->mCurConfig:Landroid/content/res/Configuration;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/Display;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/Display;->updateFontScale()V

    return-void
.end method

.method private updateFontScale()V
    .locals 4

    .prologue
    .line 99
    iget-object v1, p0, Lcom/android/settings/Display;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v2, p0, Lcom/android/settings/Display;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iget-object v3, p0, Lcom/android/settings/Display;->mCurConfig:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    mul-float/2addr v2, v3

    iput v2, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 102
    iget-object v1, p0, Lcom/android/settings/Display;->mTextSizeTyped:Landroid/util/TypedValue;

    iget-object v2, p0, Lcom/android/settings/Display;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    .line 103
    .local v0, size:F
    iget-object v1, p0, Lcom/android/settings/Display;->mPreview:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 104
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 108
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/Display;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/Display;->finish()V

    .line 112
    return-void

    .line 109
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v8, 0x2

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v6, 0x7f04003d

    invoke-virtual {p0, v6}, Lcom/android/settings/Display;->setContentView(I)V

    .line 42
    const v6, 0x7f090094

    invoke-virtual {p0, v6}, Lcom/android/settings/Display;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/android/settings/Display;->mFontSize:Landroid/widget/Spinner;

    .line 43
    iget-object v6, p0, Lcom/android/settings/Display;->mFontSize:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/android/settings/Display;->mFontSizeChanged:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 44
    const/4 v6, 0x3

    new-array v4, v6, [Ljava/lang/String;

    .line 45
    .local v4, states:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/Display;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 46
    .local v2, r:Landroid/content/res/Resources;
    const/4 v6, 0x0

    const v7, 0x7f0c0034

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 47
    const/4 v6, 0x1

    const v7, 0x7f0c0035

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 48
    const v6, 0x7f0c0036

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    .line 49
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v6, 0x1090008

    invoke-direct {v0, p0, v6, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 51
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v6, 0x1090009

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 53
    iget-object v6, p0, Lcom/android/settings/Display;->mFontSize:Landroid/widget/Spinner;

    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 55
    const v6, 0x7f090095

    invoke-virtual {p0, v6}, Lcom/android/settings/Display;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/Display;->mPreview:Landroid/widget/TextView;

    .line 56
    iget-object v6, p0, Lcom/android/settings/Display;->mPreview:Landroid/widget/TextView;

    const v7, 0x7f0c0037

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    const v6, 0x7f090096

    invoke-virtual {p0, v6}, Lcom/android/settings/Display;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 59
    .local v3, save:Landroid/widget/Button;
    const v6, 0x7f0c0038

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    iput-object v6, p0, Lcom/android/settings/Display;->mTextSizeTyped:Landroid/util/TypedValue;

    .line 63
    sget-object v6, Landroid/R$styleable;->TextView:[I

    invoke-virtual {p0, v6}, Lcom/android/settings/Display;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 65
    .local v5, styledAttributes:Landroid/content/res/TypedArray;
    iget-object v6, p0, Lcom/android/settings/Display;->mTextSizeTyped:Landroid/util/TypedValue;

    invoke-virtual {v5, v8, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/Display;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 69
    .local v1, metrics:Landroid/util/DisplayMetrics;
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v6, p0, Lcom/android/settings/Display;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 70
    iget-object v6, p0, Lcom/android/settings/Display;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v1, Landroid/util/DisplayMetrics;->density:F

    iput v7, v6, Landroid/util/DisplayMetrics;->density:F

    .line 71
    iget-object v6, p0, Lcom/android/settings/Display;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v7, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 72
    iget-object v6, p0, Lcom/android/settings/Display;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v7, v6, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 73
    iget-object v6, p0, Lcom/android/settings/Display;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 74
    iget-object v6, p0, Lcom/android/settings/Display;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v1, Landroid/util/DisplayMetrics;->xdpi:F

    iput v7, v6, Landroid/util/DisplayMetrics;->xdpi:F

    .line 75
    iget-object v6, p0, Lcom/android/settings/Display;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v1, Landroid/util/DisplayMetrics;->ydpi:F

    iput v7, v6, Landroid/util/DisplayMetrics;->ydpi:F

    .line 77
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/Display;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/android/settings/Display;->mCurConfig:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/settings/Display;->mFontSize:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 95
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/Display;->updateFontScale()V

    .line 96
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/settings/Display;->mCurConfig:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/android/settings/Display;->mFontSize:Landroid/widget/Spinner;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/android/settings/Display;->mFontSize:Landroid/widget/Spinner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 86
    :catch_0
    move-exception v0

    goto :goto_0
.end method
