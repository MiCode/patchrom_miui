.class Lcom/android/settings/wifi/WifiDialog$2;
.super Ljava/lang/Object;
.source "WifiDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiDialog;->initWifiShare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings/wifi/WifiDialog$2;->this$0:Lcom/android/settings/wifi/WifiDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog$2;->this$0:Lcom/android/settings/wifi/WifiDialog;

    #getter for: Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiDialog;->access$100(Lcom/android/settings/wifi/WifiDialog;)Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/settings/wifi/WifiConfigController;->setWifiShare(Z)V

    .line 142
    return-void
.end method
