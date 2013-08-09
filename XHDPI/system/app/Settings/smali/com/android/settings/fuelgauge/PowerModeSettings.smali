.class public Lcom/android/settings/fuelgauge/PowerModeSettings;
.super Landroid/app/Activity;
.source "PowerModeSettings.java"


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/PowerModeSettings;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerModeSettings;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method private createPowerModeDialog()V
    .locals 6

    .prologue
    .line 28
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 29
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0c08cd

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 30
    const-string v4, "persist.sys.aries.power_profile"

    const-string v5, "middle"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 32
    .local v3, powerMode:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/settings/fuelgauge/PowerModeSettings;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 33
    .local v1, clickedIndex:I
    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerModeSettings;->mEntries:[Ljava/lang/CharSequence;

    new-instance v5, Lcom/android/settings/fuelgauge/PowerModeSettings$1;

    invoke-direct {v5, p0}, Lcom/android/settings/fuelgauge/PowerModeSettings$1;-><init>(Lcom/android/settings/fuelgauge/PowerModeSettings;)V

    invoke-virtual {v0, v4, v1, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 45
    const/high16 v4, 0x104

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 47
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    .line 48
    .local v2, dialog:Landroid/app/Dialog;
    new-instance v4, Lcom/android/settings/fuelgauge/PowerModeSettings$2;

    invoke-direct {v4, p0}, Lcom/android/settings/fuelgauge/PowerModeSettings$2;-><init>(Lcom/android/settings/fuelgauge/PowerModeSettings;)V

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 54
    return-void
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2
    .parameter "value"

    .prologue
    .line 57
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerModeSettings;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerModeSettings;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 59
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerModeSettings;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    .end local v0           #i:I
    :goto_1
    return v0

    .line 58
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 64
    .end local v0           #i:I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerModeSettings;->mEntries:[Ljava/lang/CharSequence;

    .line 23
    sget-object v0, Lmiui/provider/ExtraSettings$System;->POWER_MODE_VALUES:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerModeSettings;->mEntryValues:[Ljava/lang/CharSequence;

    .line 24
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerModeSettings;->createPowerModeDialog()V

    .line 25
    return-void
.end method
