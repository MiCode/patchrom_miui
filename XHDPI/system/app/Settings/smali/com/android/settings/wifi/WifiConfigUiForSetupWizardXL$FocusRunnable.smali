.class Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL$FocusRunnable;
.super Ljava/lang/Object;
.source "WifiConfigUiForSetupWizardXL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusRunnable"
.end annotation


# instance fields
.field final mViewToBeFocused:Landroid/view/View;

.field final synthetic this$0:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "viewToBeFocused"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL$FocusRunnable;->this$0:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL$FocusRunnable;->mViewToBeFocused:Landroid/view/View;

    .line 188
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 193
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL$FocusRunnable;->this$0:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    #getter for: Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->access$000(Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL$FocusRunnable;->mViewToBeFocused:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    .line 195
    .local v0, showSoftInputResult:Z
    if-eqz v0, :cond_0

    .line 196
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL$FocusRunnable;->this$0:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    #getter for: Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mActivity:Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->access$100(Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;)Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    const-string v1, "SetupWizard"

    const-string v2, "Failed to show software keyboard "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
