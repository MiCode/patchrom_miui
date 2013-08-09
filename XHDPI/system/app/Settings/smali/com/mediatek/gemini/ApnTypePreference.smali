.class public Lcom/mediatek/gemini/ApnTypePreference;
.super Landroid/preference/DialogPreference;
.source "ApnTypePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field private mApnTypeArray:[Ljava/lang/String;

.field private mApnTypeNum:I

.field private mCheckState:[Z

.field mExt:Lcom/android/settings/ext/IApnEditorExt;

.field private mListView:Landroid/widget/ListView;

.field private mTypeString:Ljava/lang/String;

.field private mUiCheckState:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/gemini/ApnTypePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-static {p1}, Lcom/mediatek/gemini/SimUtils;->getApnEditorPlugin(Landroid/content/Context;)Lcom/android/settings/ext/IApnEditorExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gemini/ApnTypePreference;->mExt:Lcom/android/settings/ext/IApnEditorExt;

    .line 38
    iget-object v0, p0, Lcom/mediatek/gemini/ApnTypePreference;->mExt:Lcom/android/settings/ext/IApnEditorExt;

    invoke-virtual {p0}, Lcom/mediatek/gemini/ApnTypePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08008c

    const v3, 0x7f08008b

    const v4, 0x7f08008a

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/settings/ext/IApnEditorExt;->getApnTypeArray(Landroid/content/Context;III)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gemini/ApnTypePreference;->mApnTypeArray:[Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/mediatek/gemini/ApnTypePreference;->mApnTypeArray:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/mediatek/gemini/ApnTypePreference;->mApnTypeArray:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/mediatek/gemini/ApnTypePreference;->mApnTypeNum:I

    .line 43
    :cond_0
    iget v0, p0, Lcom/mediatek/gemini/ApnTypePreference;->mApnTypeNum:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/mediatek/gemini/ApnTypePreference;->mCheckState:[Z

    .line 44
    return-void
.end method

.method private updateRecord()V
    .locals 6

    .prologue
    .line 109
    iget-object v3, p0, Lcom/mediatek/gemini/ApnTypePreference;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_2

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .local v2, strTemp:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/mediatek/gemini/ApnTypePreference;->mApnTypeNum:I

    if-ge v0, v3, :cond_1

    .line 115
    iget-object v3, p0, Lcom/mediatek/gemini/ApnTypePreference;->mCheckState:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_0

    .line 116
    iget-object v3, p0, Lcom/mediatek/gemini/ApnTypePreference;->mApnTypeArray:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 121
    .local v1, length:I
    const/4 v3, 0x1

    if-le v1, v3, :cond_3

    .line 122
    const/4 v3, 0x0

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/gemini/ApnTypePreference;->mTypeString:Ljava/lang/String;

    .line 126
    :goto_1
    const-string v3, "ApnTypePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTypeString is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/gemini/ApnTypePreference;->mTypeString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v0           #i:I
    .end local v1           #length:I
    .end local v2           #strTemp:Ljava/lang/StringBuilder;
    :cond_2
    return-void

    .line 124
    .restart local v0       #i:I
    .restart local v1       #length:I
    .restart local v2       #strTemp:Ljava/lang/StringBuilder;
    :cond_3
    const-string v3, ""

    iput-object v3, p0, Lcom/mediatek/gemini/ApnTypePreference;->mTypeString:Ljava/lang/String;

    goto :goto_1
.end method

.method private updateUiCheckBoxStatus()V
    .locals 4

    .prologue
    .line 67
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/mediatek/gemini/ApnTypePreference;->mApnTypeNum:I

    if-ge v0, v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/mediatek/gemini/ApnTypePreference;->mCheckState:[Z

    iget-object v2, p0, Lcom/mediatek/gemini/ApnTypePreference;->mUiCheckState:[Z

    aget-boolean v2, v2, v0

    aput-boolean v2, v1, v0

    .line 69
    const-string v1, "ApnTypePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUiCheckBoxStatus mCheckState["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/gemini/ApnTypePreference;->mCheckState:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method public getTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/mediatek/gemini/ApnTypePreference;->mTypeString:Ljava/lang/String;

    return-object v0
.end method

.method public intCheckState(Ljava/lang/String;)V
    .locals 4
    .parameter "strType"

    .prologue
    .line 135
    const-string v1, "ApnTypePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init CheckState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    if-nez p1, :cond_1

    .line 145
    :cond_0
    return-void

    .line 140
    :cond_1
    iput-object p1, p0, Lcom/mediatek/gemini/ApnTypePreference;->mTypeString:Ljava/lang/String;

    .line 142
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/mediatek/gemini/ApnTypePreference;->mApnTypeNum:I

    if-ge v0, v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/mediatek/gemini/ApnTypePreference;->mCheckState:[Z

    iget-object v2, p0, Lcom/mediatek/gemini/ApnTypePreference;->mApnTypeArray:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mediatek/gemini/ApnTypePreference;->mCheckState:[Z

    aput-boolean p3, v0, p2

    .line 104
    iget-object v0, p0, Lcom/mediatek/gemini/ApnTypePreference;->mUiCheckState:[Z

    aput-boolean p3, v0, p2

    .line 105
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .parameter "positiveResult"

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 78
    if-eqz p1, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/mediatek/gemini/ApnTypePreference;->updateUiCheckBoxStatus()V

    .line 80
    invoke-direct {p0}, Lcom/mediatek/gemini/ApnTypePreference;->updateRecord()V

    .line 81
    iget-object v0, p0, Lcom/mediatek/gemini/ApnTypePreference;->mTypeString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/ApnTypePreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gemini/ApnTypePreference;->mTypeString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/ApnTypePreference;->intCheckState(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .parameter "builder"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 54
    iget-object v1, p0, Lcom/mediatek/gemini/ApnTypePreference;->mApnTypeArray:[Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/gemini/ApnTypePreference;->mCheckState:[Z

    invoke-virtual {p1, v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 56
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/gemini/ApnTypePreference;->mListView:Landroid/widget/ListView;

    .line 58
    iget v1, p0, Lcom/mediatek/gemini/ApnTypePreference;->mApnTypeNum:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/mediatek/gemini/ApnTypePreference;->mUiCheckState:[Z

    .line 60
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/mediatek/gemini/ApnTypePreference;->mApnTypeNum:I

    if-ge v0, v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/mediatek/gemini/ApnTypePreference;->mUiCheckState:[Z

    iget-object v2, p0, Lcom/mediatek/gemini/ApnTypePreference;->mCheckState:[Z

    aget-boolean v2, v2, v0

    aput-boolean v2, v1, v0

    .line 62
    const-string v1, "ApnTypePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareDialogBuilder mUiCheckState["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/gemini/ApnTypePreference;->mUiCheckState:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method

.method public setType(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 9
    .parameter "mcc"
    .parameter "mnc"
    .parameter "intent"

    .prologue
    .line 89
    const-string v0, "apn_type"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 90
    .local v8, apnType:Ljava/lang/String;
    const-string v0, "tethering"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 91
    .local v3, isTethering:Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, numeric:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/gemini/ApnTypePreference;->mExt:Lcom/android/settings/ext/IApnEditorExt;

    invoke-virtual {p0}, Lcom/mediatek/gemini/ApnTypePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f08008d

    const v5, 0x7f08008b

    const v6, 0x7f08008a

    iget-object v7, p0, Lcom/mediatek/gemini/ApnTypePreference;->mApnTypeArray:[Ljava/lang/String;

    invoke-interface/range {v0 .. v7}, Lcom/android/settings/ext/IApnEditorExt;->getApnTypeArrayByCard(Landroid/content/Context;Ljava/lang/String;ZIII[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gemini/ApnTypePreference;->mApnTypeArray:[Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/mediatek/gemini/ApnTypePreference;->mApnTypeArray:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/mediatek/gemini/ApnTypePreference;->mApnTypeArray:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/mediatek/gemini/ApnTypePreference;->mApnTypeNum:I

    .line 97
    :cond_0
    iget v0, p0, Lcom/mediatek/gemini/ApnTypePreference;->mApnTypeNum:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/mediatek/gemini/ApnTypePreference;->mCheckState:[Z

    .line 98
    return-void
.end method
