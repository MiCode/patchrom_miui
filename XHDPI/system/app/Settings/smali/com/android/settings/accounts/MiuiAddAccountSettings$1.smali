.class Lcom/android/settings/accounts/MiuiAddAccountSettings$1;
.super Ljava/lang/Object;
.source "MiuiAddAccountSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/MiuiAddAccountSettings;->initializeViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/MiuiAddAccountSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/MiuiAddAccountSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/settings/accounts/MiuiAddAccountSettings$1;->this$0:Lcom/android/settings/accounts/MiuiAddAccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiAddAccountSettings$1;->this$0:Lcom/android/settings/accounts/MiuiAddAccountSettings;

    #calls: Lcom/android/settings/accounts/MiuiAddAccountSettings;->gotoNextPage()V
    invoke-static {v0}, Lcom/android/settings/accounts/MiuiAddAccountSettings;->access$000(Lcom/android/settings/accounts/MiuiAddAccountSettings;)V

    .line 39
    return-void
.end method
