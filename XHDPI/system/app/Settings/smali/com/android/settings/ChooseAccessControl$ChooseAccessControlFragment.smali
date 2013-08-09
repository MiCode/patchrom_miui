.class public Lcom/android/settings/ChooseAccessControl$ChooseAccessControlFragment;
.super Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;
.source "ChooseAccessControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseAccessControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseAccessControlFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected preSetupViews()V
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const v1, 0x7f0c07b6

    iput v1, v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    .line 43
    return-void
.end method

.method protected saveChosenPatternAndFinish()V
    .locals 3

    .prologue
    .line 33
    iget-object v1, p0, Lcom/android/settings/ChooseAccessControl$ChooseAccessControlFragment;->mChooseLockSettingsHelper:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lmiui/security/ChooseLockSettingsHelper;->utils()Lmiui/security/MiuiLockPatternUtils;

    move-result-object v0

    .line 34
    .local v0, utils:Lmiui/security/MiuiLockPatternUtils;
    iget-object v1, p0, Lcom/android/settings/ChooseAccessControl$ChooseAccessControlFragment;->mChosenPattern:Ljava/util/List;

    invoke-virtual {v0, v1}, Lmiui/security/MiuiLockPatternUtils;->saveMiuiLockPattern(Ljava/util/List;)V

    .line 35
    iget-object v1, p0, Lcom/android/settings/ChooseAccessControl$ChooseAccessControlFragment;->mChooseLockSettingsHelper:Lmiui/security/ChooseLockSettingsHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmiui/security/ChooseLockSettingsHelper;->setACLockEnabled(Z)V

    .line 36
    invoke-virtual {p0}, Lcom/android/settings/ChooseAccessControl$ChooseAccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/ChooseAccessControl$ChooseAccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 38
    return-void
.end method
