.class final Lcom/android/settings/bluetooth/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static getConnectionStateSummary(I)I
    .locals 1
    .parameter "connectionState"

    .prologue
    .line 44
    packed-switch p0, :pswitch_data_0

    .line 54
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 46
    :pswitch_0
    const v0, 0x7f0c0071

    goto :goto_0

    .line 48
    :pswitch_1
    const v0, 0x7f0c0077

    goto :goto_0

    .line 50
    :pswitch_2
    const v0, 0x7f0c0075

    goto :goto_0

    .line 52
    :pswitch_3
    const v0, 0x7f0c0076

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
    .locals 4
    .parameter "context"
    .parameter "dialog"
    .parameter "disconnectListener"
    .parameter "title"
    .parameter "message"

    .prologue
    const v2, 0x104000a

    .line 63
    if-nez p1, :cond_0

    .line 64
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 77
    :goto_0
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p1, p4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 80
    return-object p1

    .line 69
    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 73
    :cond_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 74
    .local v0, okText:Ljava/lang/CharSequence;
    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method static showError(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 7
    .parameter "context"
    .parameter "name"
    .parameter "messageResId"

    .prologue
    const/4 v6, 0x0

    .line 94
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {p0, p2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, message:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v3

    .line 96
    .local v3, manager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    if-nez v3, :cond_0

    .line 111
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/preference/PreferenceFragment;

    move-result-object v2

    .line 100
    .local v2, fragment:Landroid/preference/PreferenceFragment;
    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->isForegroundActivity()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 102
    new-instance v1, Lcom/android/settings/bluetooth/ErrorDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/bluetooth/ErrorDialogFragment;-><init>()V

    .line 103
    .local v1, dialog:Lcom/android/settings/bluetooth/ErrorDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 104
    .local v0, args:Landroid/os/Bundle;
    const-string v5, "errorMessage"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/ErrorDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {v2}, Landroid/preference/PreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "Error"

    invoke-virtual {v1, v5, v6}, Lcom/android/settings/bluetooth/ErrorDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    .end local v0           #args:Landroid/os/Bundle;
    .end local v1           #dialog:Lcom/android/settings/bluetooth/ErrorDialogFragment;
    :cond_1
    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
