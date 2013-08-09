.class Lcom/android/settings/wifi/WifiDialog$3;
.super Ljava/lang/Object;
.source "WifiDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 146
    iput-object p1, p0, Lcom/android/settings/wifi/WifiDialog$3;->this$0:Lcom/android/settings/wifi/WifiDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 149
    new-instance v0, Lmiui/widget/GuidePopupWindow;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog$3;->this$0:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lmiui/widget/GuidePopupWindow;-><init>(Landroid/content/Context;)V

    .line 151
    .local v0, guidePopupWindow:Lmiui/widget/GuidePopupWindow;
    const v2, 0x7f0c0948

    invoke-virtual {v0, v2}, Lmiui/widget/GuidePopupWindow;->setGuideText(I)V

    .line 152
    invoke-virtual {v0, v5}, Lmiui/widget/GuidePopupWindow;->setArrowMode(I)V

    .line 153
    invoke-virtual {v0, v5}, Lmiui/widget/GuidePopupWindow;->setOutsideTouchable(Z)V

    .line 154
    invoke-virtual {v0, v4}, Lmiui/widget/GuidePopupWindow;->enableOutSideWindowTouchDismiss(Z)V

    .line 155
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lmiui/widget/GuidePopupWindow;->setInputMethodMode(I)V

    .line 156
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog$3;->this$0:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 158
    .local v1, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog$3;->this$0:Lcom/android/settings/wifi/WifiDialog;

    #getter for: Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiDialog;->access$000(Lcom/android/settings/wifi/WifiDialog;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 159
    invoke-virtual {v0, p1, v4, v4, v5}, Lmiui/widget/GuidePopupWindow;->show(Landroid/view/View;IIZ)V

    .line 160
    return-void
.end method
