.class public Lcom/android/settings/permission/PermissionLogPreference;
.super Landroid/preference/Preference;
.source "PermissionLogPreference.java"


# instance fields
.field private mPermName:Ljava/lang/String;

.field private mPermState:Ljava/lang/CharSequence;

.field private mTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/permission/PermissionLogPreference;->mPermName:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/permission/PermissionLogPreference;->mPermState:Ljava/lang/CharSequence;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/permission/PermissionLogPreference;->mTime:Ljava/lang/String;

    .line 17
    const v0, 0x7f040072

    invoke-virtual {p0, v0}, Lcom/android/settings/permission/PermissionLogPreference;->setLayoutResource(I)V

    .line 18
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 23
    const v0, 0x7f090105

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/permission/PermissionLogPreference;->mPermName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    const v0, 0x7f09010d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/permission/PermissionLogPreference;->mPermState:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    const v0, 0x7f090054

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/permission/PermissionLogPreference;->mTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    return-void
.end method

.method public setPermName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/settings/permission/PermissionLogPreference;->mPermName:Ljava/lang/String;

    .line 30
    invoke-virtual {p0}, Lcom/android/settings/permission/PermissionLogPreference;->notifyChanged()V

    .line 31
    return-void
.end method

.method public setPermState(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/settings/permission/PermissionLogPreference;->mPermState:Ljava/lang/CharSequence;

    .line 35
    invoke-virtual {p0}, Lcom/android/settings/permission/PermissionLogPreference;->notifyChanged()V

    .line 36
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/settings/permission/PermissionLogPreference;->mTime:Ljava/lang/String;

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/permission/PermissionLogPreference;->notifyChanged()V

    .line 41
    return-void
.end method
