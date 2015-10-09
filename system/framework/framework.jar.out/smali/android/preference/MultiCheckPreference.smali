.class public Landroid/preference/MultiCheckPreference;
.super Landroid/preference/DialogPreference;
.source "MultiCheckPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/MultiCheckPreference$SavedState;
    }
.end annotation


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/String;

.field private mOrigValues:[Z

.field private mSetValues:[Z

.field private mSummary:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/MultiCheckPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    sget-object v1, Lcom/android/internal/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/MultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 50
    iget-object v1, p0, Landroid/preference/MultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Landroid/preference/MultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/preference/MultiCheckPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 53
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/preference/MultiCheckPreference;->setEntryValuesCS([Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    sget-object v1, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/MultiCheckPreference;->mSummary:Ljava/lang/String;

    .line 63
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    return-void
.end method

.method static synthetic access$000(Landroid/preference/MultiCheckPreference;)[Z
    .locals 1
    .param p0, "x0"    # Landroid/preference/MultiCheckPreference;

    .prologue
    .line 37
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    return-object v0
.end method

.method private setEntryValuesCS([Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "values"    # [Ljava/lang/CharSequence;

    .prologue
    .line 125
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/preference/MultiCheckPreference;->setValues([Z)V

    .line 126
    if-eqz p1, :cond_0

    .line 127
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/preference/MultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    .line 128
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 129
    iget-object v1, p0, Landroid/preference/MultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 221
    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/preference/MultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 222
    iget-object v1, p0, Landroid/preference/MultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 223
    iget-object v1, p0, Landroid/preference/MultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 222
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 228
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSummary:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 182
    invoke-super {p0}, Landroid/preference/DialogPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSummary:Ljava/lang/String;

    goto :goto_0
.end method

.method public getValue(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 147
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public getValues()[Z
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .param p1, "positiveResult"    # Z

    .prologue
    const/4 v3, 0x0

    .line 252
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 254
    if-eqz p1, :cond_0

    .line 255
    invoke-virtual {p0}, Landroid/preference/MultiCheckPreference;->getValues()[Z

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/MultiCheckPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mOrigValues:[Z

    iget-object v1, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    iget-object v2, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 264
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 233
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 235
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 236
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_1
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    iget-object v1, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    iput-object v0, p0, Landroid/preference/MultiCheckPreference;->mOrigValues:[Z

    .line 241
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    new-instance v2, Landroid/preference/MultiCheckPreference$1;

    invoke-direct {v2, p0}, Landroid/preference/MultiCheckPreference$1;-><init>(Landroid/preference/MultiCheckPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 248
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 286
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/preference/MultiCheckPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 288
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 295
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 292
    check-cast v0, Landroid/preference/MultiCheckPreference$SavedState;

    .line 293
    .local v0, "myState":Landroid/preference/MultiCheckPreference$SavedState;
    invoke-virtual {v0}, Landroid/preference/MultiCheckPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 294
    iget-object v1, v0, Landroid/preference/MultiCheckPreference$SavedState;->values:[Z

    invoke-virtual {p0, v1}, Landroid/preference/MultiCheckPreference;->setValues([Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 273
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 274
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/preference/MultiCheckPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 279
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Landroid/preference/MultiCheckPreference$SavedState;

    invoke-direct {v0, v1}, Landroid/preference/MultiCheckPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 280
    .local v0, "myState":Landroid/preference/MultiCheckPreference$SavedState;
    invoke-virtual {p0}, Landroid/preference/MultiCheckPreference;->getValues()[Z

    move-result-object v2

    iput-object v2, v0, Landroid/preference/MultiCheckPreference$SavedState;->values:[Z

    move-object v1, v0

    .line 281
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 269
    return-void
.end method

.method public setEntries(I)V
    .locals 1
    .param p1, "entriesResId"    # I

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/preference/MultiCheckPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/MultiCheckPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "entries"    # [Ljava/lang/CharSequence;

    .prologue
    .line 81
    iput-object p1, p0, Landroid/preference/MultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 82
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    .line 83
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/preference/MultiCheckPreference;->mOrigValues:[Z

    .line 84
    return-void
.end method

.method public setEntryValues(I)V
    .locals 1
    .param p1, "entryValuesResId"    # I

    .prologue
    .line 121
    invoke-virtual {p0}, Landroid/preference/MultiCheckPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/MultiCheckPreference;->setEntryValuesCS([Ljava/lang/CharSequence;)V

    .line 122
    return-void
.end method

.method public setEntryValues([Ljava/lang/String;)V
    .locals 2
    .param p1, "entryValues"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 111
    iput-object p1, p0, Landroid/preference/MultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    .line 112
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 113
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mOrigValues:[Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 114
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 199
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 200
    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSummary:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/MultiCheckPreference;->mSummary:Ljava/lang/String;

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/MultiCheckPreference;->mSummary:Ljava/lang/String;

    goto :goto_0
.end method

.method public setValue(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "state"    # Z

    .prologue
    .line 154
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    aput-boolean p2, v0, p1

    .line 155
    return-void
.end method

.method public setValues([Z)V
    .locals 4
    .param p1, "values"    # [Z

    .prologue
    const/4 v3, 0x0

    .line 161
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([ZZ)V

    .line 163
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mOrigValues:[Z

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([ZZ)V

    .line 164
    if-eqz p1, :cond_0

    .line 165
    iget-object v1, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    array-length v0, p1

    iget-object v2, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_1

    array-length v0, p1

    :goto_0
    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    :cond_0
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    array-length v0, v0

    goto :goto_0
.end method
