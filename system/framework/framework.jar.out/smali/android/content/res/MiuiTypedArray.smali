.class public Landroid/content/res/MiuiTypedArray;
.super Landroid/content/res/TypedArray;
.source "MiuiTypedArray.java"


# instance fields
.field private mIsMiuiResources:Z


# direct methods
.method constructor <init>(Landroid/content/res/Resources;[I[II)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "data"    # [I
    .param p3, "indices"    # [I
    .param p4, "len"    # I

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/TypedArray;-><init>(Landroid/content/res/Resources;[I[II)V

    .line 14
    invoke-virtual {p0}, Landroid/content/res/MiuiTypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    instance-of v0, v0, Landroid/content/res/MiuiResources;

    iput-boolean v0, p0, Landroid/content/res/MiuiTypedArray;->mIsMiuiResources:Z

    .line 15
    return-void
.end method

.method private loadStringValueAt(I)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 36
    iget-boolean v3, p0, Landroid/content/res/MiuiTypedArray;->mIsMiuiResources:Z

    if-nez v3, :cond_1

    move-object v0, v4

    .line 47
    :cond_0
    :goto_0
    return-object v0

    .line 39
    :cond_1
    iget-object v3, p0, Landroid/content/res/MiuiTypedArray;->mData:[I

    add-int/lit8 v5, p1, 0x0

    aget v2, v3, v5

    .line 40
    .local v2, "type":I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 41
    iget-object v3, p0, Landroid/content/res/MiuiTypedArray;->mData:[I

    add-int/lit8 v5, p1, 0x3

    aget v1, v3, v5

    .line 42
    .local v1, "id":I
    invoke-virtual {p0}, Landroid/content/res/MiuiTypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    check-cast v3, Landroid/content/res/MiuiResources;

    invoke-virtual {v3, v1}, Landroid/content/res/MiuiResources;->getThemeString(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 43
    .local v0, "cs":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .end local v0    # "cs":Ljava/lang/CharSequence;
    .end local v1    # "id":I
    :cond_2
    move-object v0, v4

    .line 47
    goto :goto_0
.end method


# virtual methods
.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 28
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1}, Landroid/content/res/MiuiTypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 29
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 32
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 19
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1}, Landroid/content/res/MiuiTypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 20
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 23
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .restart local v0    # "cs":Ljava/lang/CharSequence;
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method
