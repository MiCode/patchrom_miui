.class Lcom/android/settings/nfc/MiuiAndroidBeam$1;
.super Ljava/lang/Object;
.source "MiuiAndroidBeam.java"

# interfaces
.implements Lmiui/widget/SlidingButton$OnCheckedChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/MiuiAndroidBeam;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/MiuiAndroidBeam;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/MiuiAndroidBeam;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/settings/nfc/MiuiAndroidBeam$1;->this$0:Lcom/android/settings/nfc/MiuiAndroidBeam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Z)V
    .locals 2
    .parameter "isChecked"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/nfc/MiuiAndroidBeam$1;->this$0:Lcom/android/settings/nfc/MiuiAndroidBeam;

    #getter for: Lcom/android/settings/nfc/MiuiAndroidBeam;->mAndroidBeamSwitch:Lmiui/widget/SlidingButton;
    invoke-static {v0}, Lcom/android/settings/nfc/MiuiAndroidBeam;->access$000(Lcom/android/settings/nfc/MiuiAndroidBeam;)Lmiui/widget/SlidingButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setEnabled(Z)V

    .line 57
    if-eqz p1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/settings/nfc/MiuiAndroidBeam$1;->this$0:Lcom/android/settings/nfc/MiuiAndroidBeam;

    #getter for: Lcom/android/settings/nfc/MiuiAndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v0}, Lcom/android/settings/nfc/MiuiAndroidBeam;->access$100(Lcom/android/settings/nfc/MiuiAndroidBeam;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/android/settings/nfc/MiuiAndroidBeam$1;->this$0:Lcom/android/settings/nfc/MiuiAndroidBeam;

    #getter for: Lcom/android/settings/nfc/MiuiAndroidBeam;->mAndroidBeamSwitch:Lmiui/widget/SlidingButton;
    invoke-static {v0}, Lcom/android/settings/nfc/MiuiAndroidBeam;->access$000(Lcom/android/settings/nfc/MiuiAndroidBeam;)Lmiui/widget/SlidingButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setEnabled(Z)V

    .line 63
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/MiuiAndroidBeam$1;->this$0:Lcom/android/settings/nfc/MiuiAndroidBeam;

    #getter for: Lcom/android/settings/nfc/MiuiAndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v0}, Lcom/android/settings/nfc/MiuiAndroidBeam;->access$100(Lcom/android/settings/nfc/MiuiAndroidBeam;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    goto :goto_0
.end method
