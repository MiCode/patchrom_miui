.class public Landroid/view/ContextThemeWrapper;
.super Landroid/content/ContextWrapper;
.source "ContextThemeWrapper.java"


# instance fields
.field private mBase:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOverrideConfiguration:Landroid/content/res/Configuration;

.field private mResources:Landroid/content/res/Resources;

.field private mTheme:Landroid/content/res/Resources$Theme;

.field private mThemeResource:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;
    .param p2, "themeres"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p1, p0, Landroid/view/ContextThemeWrapper;->mBase:Landroid/content/Context;

    .line 44
    iput p2, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    .line 45
    return-void
.end method

.method private initializeTheme()V
    .locals 4

    .prologue
    .line 136
    iget-object v2, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 137
    .local v0, "first":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    iput-object v2, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    .line 139
    iget-object v2, p0, Landroid/view/ContextThemeWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 140
    .local v1, "theme":Landroid/content/res/Resources$Theme;
    if-eqz v1, :cond_0

    .line 141
    iget-object v2, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 144
    .end local v1    # "theme":Landroid/content/res/Resources$Theme;
    :cond_0
    iget-object v2, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    iget v3, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    invoke-virtual {p0, v2, v3, v0}, Landroid/view/ContextThemeWrapper;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 145
    return-void

    .line 136
    .end local v0    # "first":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "overrideConfiguration"    # Landroid/content/res/Configuration;

    .prologue
    .line 63
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getResources() has already been called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_1

    .line 67
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Override configuration has already been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Landroid/view/ContextThemeWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    .line 70
    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "newBase"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 49
    iput-object p1, p0, Landroid/view/ContextThemeWrapper;->mBase:Landroid/content/Context;

    .line 50
    return-void
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .prologue
    .line 74
    iget-object v1, p0, Landroid/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Landroid/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    .line 83
    :goto_0
    return-object v1

    .line 77
    :cond_0
    iget-object v1, p0, Landroid/view/ContextThemeWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    if-nez v1, :cond_1

    .line 78
    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    .line 79
    iget-object v1, p0, Landroid/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    goto :goto_0

    .line 81
    :cond_1
    iget-object v1, p0, Landroid/view/ContextThemeWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v1}, Landroid/view/ContextThemeWrapper;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    .line 82
    .local v0, "resc":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    .line 83
    iget-object v1, p0, Landroid/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 111
    const-string v0, "layout_inflater"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mBase:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    .line 115
    :cond_0
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    .line 117
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    .line 107
    :goto_0
    return-object v0

    .line 103
    :cond_0
    iget v0, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v0, v1}, Landroid/content/res/Resources;->selectDefaultTheme(II)I

    move-result v0

    iput v0, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    .line 105
    invoke-direct {p0}, Landroid/view/ContextThemeWrapper;->initializeTheme()V

    .line 107
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    goto :goto_0
.end method

.method public getThemeResId()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    return v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    .line 132
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 133
    return-void
.end method

.method public setTheme(I)V
    .locals 0
    .param p1, "resid"    # I

    .prologue
    .line 88
    iput p1, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    .line 89
    invoke-direct {p0}, Landroid/view/ContextThemeWrapper;->initializeTheme()V

    .line 90
    return-void
.end method
