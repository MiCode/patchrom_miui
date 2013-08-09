.class public Lcom/android/settings/quicklaunch/ShortcutPreference;
.super Landroid/preference/Preference;
.source "ShortcutPreference.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/preference/Preference;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/preference/Preference;",
        ">;"
    }
.end annotation


# static fields
.field private static STRING_ASSIGN_APPLICATION:Ljava/lang/String;

.field private static STRING_NO_SHORTCUT:Ljava/lang/String;

.field private static sDimAlpha:I

.field private static sDimSummaryColor:Landroid/content/res/ColorStateList;

.field private static sDimTitleColor:Landroid/content/res/ColorStateList;

.field private static sRegularSummaryColor:Landroid/content/res/ColorStateList;

.field private static sRegularTitleColor:Landroid/content/res/ColorStateList;

.field private static sStaticVarsLock:Ljava/lang/Object;


# instance fields
.field private mHasBookmark:Z

.field private mShortcut:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/quicklaunch/ShortcutPreference;->sStaticVarsLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;C)V
    .locals 5
    .parameter "context"
    .parameter "shortcut"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 52
    sget-object v2, Lcom/android/settings/quicklaunch/ShortcutPreference;->sStaticVarsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 55
    :try_start_0
    sget-object v1, Lcom/android/settings/quicklaunch/ShortcutPreference;->STRING_ASSIGN_APPLICATION:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 56
    const v1, 0x7f0c048c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/quicklaunch/ShortcutPreference;->STRING_ASSIGN_APPLICATION:Ljava/lang/String;

    .line 57
    const v1, 0x7f0c048d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/quicklaunch/ShortcutPreference;->STRING_NO_SHORTCUT:Ljava/lang/String;

    .line 59
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 60
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v3, 0x1010033

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 61
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    const/high16 v3, 0x437f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    sput v1, Lcom/android/settings/quicklaunch/ShortcutPreference;->sDimAlpha:I

    .line 63
    .end local v0           #outValue:Landroid/util/TypedValue;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    iput-char p2, p0, Lcom/android/settings/quicklaunch/ShortcutPreference;->mShortcut:C

    .line 67
    const v1, 0x7f04009b

    invoke-virtual {p0, v1}, Lcom/android/settings/quicklaunch/ShortcutPreference;->setWidgetLayoutResource(I)V

    .line 68
    return-void

    .line 63
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 142
    instance-of v1, p1, Lcom/android/settings/quicklaunch/ShortcutPreference;

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result v1

    .line 148
    .end local p1
    :goto_0
    return v1

    .line 145
    .restart local p1
    :cond_0
    check-cast p1, Lcom/android/settings/quicklaunch/ShortcutPreference;

    .end local p1
    iget-char v0, p1, Lcom/android/settings/quicklaunch/ShortcutPreference;->mShortcut:C

    .line 146
    .local v0, other:C
    iget-char v1, p0, Lcom/android/settings/quicklaunch/ShortcutPreference;->mShortcut:C

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 147
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-char v1, p0, Lcom/android/settings/quicklaunch/ShortcutPreference;->mShortcut:C

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    goto :goto_0

    .line 148
    :cond_2
    iget-char v1, p0, Lcom/android/settings/quicklaunch/ShortcutPreference;->mShortcut:C

    sub-int/2addr v1, v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/quicklaunch/ShortcutPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getShortcut()C
    .locals 1

    .prologue
    .line 71
    iget-char v0, p0, Lcom/android/settings/quicklaunch/ShortcutPreference;->mShortcut:C

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/settings/quicklaunch/ShortcutPreference;->mHasBookmark:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/settings/quicklaunch/ShortcutPreference;->STRING_NO_SHORTCUT:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/settings/quicklaunch/ShortcutPreference;->mHasBookmark:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/settings/quicklaunch/ShortcutPreference;->STRING_ASSIGN_APPLICATION:Ljava/lang/String;

    goto :goto_0
.end method

.method public hasBookmark()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/settings/quicklaunch/ShortcutPreference;->mHasBookmark:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 106
    const v4, 0x7f090157

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 107
    .local v1, shortcutView:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 108
    iget-char v4, p0, Lcom/android/settings/quicklaunch/ShortcutPreference;->mShortcut:C

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :cond_0
    const v4, 0x1020016

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 113
    .local v3, titleView:Landroid/widget/TextView;
    sget-object v5, Lcom/android/settings/quicklaunch/ShortcutPreference;->sStaticVarsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 114
    :try_start_0
    sget-object v4, Lcom/android/settings/quicklaunch/ShortcutPreference;->sRegularTitleColor:Landroid/content/res/ColorStateList;

    if-nez v4, :cond_1

    .line 115
    invoke-virtual {v3}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    sput-object v4, Lcom/android/settings/quicklaunch/ShortcutPreference;->sRegularTitleColor:Landroid/content/res/ColorStateList;

    .line 116
    sget-object v4, Lcom/android/settings/quicklaunch/ShortcutPreference;->sRegularTitleColor:Landroid/content/res/ColorStateList;

    sget v6, Lcom/android/settings/quicklaunch/ShortcutPreference;->sDimAlpha:I

    invoke-virtual {v4, v6}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    sput-object v4, Lcom/android/settings/quicklaunch/ShortcutPreference;->sDimTitleColor:Landroid/content/res/ColorStateList;

    .line 118
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    iget-boolean v4, p0, Lcom/android/settings/quicklaunch/ShortcutPreference;->mHasBookmark:Z

    if-eqz v4, :cond_5

    sget-object v0, Lcom/android/settings/quicklaunch/ShortcutPreference;->sRegularTitleColor:Landroid/content/res/ColorStateList;

    .line 121
    .local v0, color:Landroid/content/res/ColorStateList;
    :goto_0
    if-eqz v0, :cond_2

    .line 122
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 125
    :cond_2
    const v4, 0x1020010

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 127
    .local v2, summaryView:Landroid/widget/TextView;
    sget-object v5, Lcom/android/settings/quicklaunch/ShortcutPreference;->sStaticVarsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 128
    :try_start_1
    sget-object v4, Lcom/android/settings/quicklaunch/ShortcutPreference;->sRegularSummaryColor:Landroid/content/res/ColorStateList;

    if-nez v4, :cond_3

    .line 129
    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    sput-object v4, Lcom/android/settings/quicklaunch/ShortcutPreference;->sRegularSummaryColor:Landroid/content/res/ColorStateList;

    .line 130
    sget-object v4, Lcom/android/settings/quicklaunch/ShortcutPreference;->sRegularSummaryColor:Landroid/content/res/ColorStateList;

    sget v6, Lcom/android/settings/quicklaunch/ShortcutPreference;->sDimAlpha:I

    invoke-virtual {v4, v6}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    sput-object v4, Lcom/android/settings/quicklaunch/ShortcutPreference;->sDimSummaryColor:Landroid/content/res/ColorStateList;

    .line 132
    :cond_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 134
    iget-boolean v4, p0, Lcom/android/settings/quicklaunch/ShortcutPreference;->mHasBookmark:Z

    if-eqz v4, :cond_6

    sget-object v0, Lcom/android/settings/quicklaunch/ShortcutPreference;->sRegularSummaryColor:Landroid/content/res/ColorStateList;

    .line 135
    :goto_1
    if-eqz v0, :cond_4

    .line 136
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 139
    :cond_4
    return-void

    .line 118
    .end local v0           #color:Landroid/content/res/ColorStateList;
    .end local v2           #summaryView:Landroid/widget/TextView;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 120
    :cond_5
    sget-object v0, Lcom/android/settings/quicklaunch/ShortcutPreference;->sDimTitleColor:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 132
    .restart local v0       #color:Landroid/content/res/ColorStateList;
    .restart local v2       #summaryView:Landroid/widget/TextView;
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 134
    :cond_6
    sget-object v0, Lcom/android/settings/quicklaunch/ShortcutPreference;->sDimSummaryColor:Landroid/content/res/ColorStateList;

    goto :goto_1
.end method

.method public setHasBookmark(Z)V
    .locals 1
    .parameter "hasBookmark"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/settings/quicklaunch/ShortcutPreference;->mHasBookmark:Z

    if-eq p1, v0, :cond_0

    .line 87
    iput-boolean p1, p0, Lcom/android/settings/quicklaunch/ShortcutPreference;->mHasBookmark:Z

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/ShortcutPreference;->notifyChanged()V

    .line 90
    :cond_0
    return-void
.end method
