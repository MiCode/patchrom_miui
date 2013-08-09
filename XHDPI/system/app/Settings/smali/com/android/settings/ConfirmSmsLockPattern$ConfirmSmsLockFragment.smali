.class public Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;
.super Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;
.source "ConfirmSmsLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ConfirmSmsLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmSmsLockFragment"
.end annotation


# instance fields
.field private mChooseLockSettingsHelper:Lmiui/security/ChooseLockSettingsHelper;

.field private mConfirmPurpose:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;-><init>()V

    .line 59
    return-void
.end method

.method private handleConfirmPurpose()V
    .locals 2

    .prologue
    .line 88
    iget v0, p0, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->mConfirmPurpose:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->mChooseLockSettingsHelper:Lmiui/security/ChooseLockSettingsHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/security/ChooseLockSettingsHelper;->setPrivateSmsEnabled(Z)V

    .line 91
    :cond_0
    return-void
.end method


# virtual methods
.method protected accessLockPattern(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-direct {p0}, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->handleConfirmPurpose()V

    .line 138
    invoke-super {p0, p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->accessLockPattern(Ljava/util/List;)V

    .line 139
    return-void
.end method

.method protected checkPattern(Ljava/util/List;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v0, p0, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->mLockPatternUtils:Lmiui/security/MiuiLockPatternUtils;

    invoke-virtual {v0, p1}, Lmiui/security/MiuiLockPatternUtils;->checkMiuiLockPattern(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method protected getAccountUnlockTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 105
    const v0, 0x7f0c091e

    invoke-virtual {p0, v0}, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultUnlockString()I
    .locals 1

    .prologue
    .line 100
    const v0, 0x7f0c091d

    return v0
.end method

.method protected getDisableKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const-string v0, "private_sms_lock_enabled"

    return-object v0
.end method

.method protected getInStealthMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "private_sms_lock_pattern_visible_pattern"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getIntentOnSuccess()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 95
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/ChooseSmsLockPattern;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected getTactileFeedbackEnabled()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method protected handleAttemptLockout(J)V
    .locals 3
    .parameter "elapsedRealtimeDeadline"

    .prologue
    .line 115
    invoke-super {p0, p1, p2}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.xiaomi"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 117
    .local v0, accounts:[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->mForgetPattern:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->mForgetPattern:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    new-instance v0, Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->mChooseLockSettingsHelper:Lmiui/security/ChooseLockSettingsHelper;

    .line 65
    iget-object v0, p0, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->mChooseLockSettingsHelper:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lmiui/security/ChooseLockSettingsHelper;->utils()Lmiui/security/MiuiLockPatternUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->mLockPatternUtils:Lmiui/security/MiuiLockPatternUtils;

    .line 66
    return-void
.end method

.method protected onCreateNoSaveState()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->mLockPatternUtils:Lmiui/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Lmiui/security/MiuiLockPatternUtils;->savedMiuiLockPatternExists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->handleConfirmPurpose()V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 77
    :cond_0
    return-void
.end method

.method protected parseIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 81
    if-eqz p1, :cond_0

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->parseIntent(Landroid/content/Intent;)V

    .line 83
    const-string v0, "confirm_purpose"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/ConfirmSmsLockPattern$ConfirmSmsLockFragment;->mConfirmPurpose:I

    .line 85
    :cond_0
    return-void
.end method
