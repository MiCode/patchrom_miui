.class Lcom/android/settings/wifi/WifiDialog$1;
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
.field private mIsShowPassword:Z

.field final synthetic this$0:Lcom/android/settings/wifi/WifiDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/settings/wifi/WifiDialog$1;->this$0:Lcom/android/settings/wifi/WifiDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 122
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiDialog$1;->mIsShowPassword:Z

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiDialog$1;->mIsShowPassword:Z

    .line 123
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog$1;->this$0:Lcom/android/settings/wifi/WifiDialog;

    #getter for: Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiDialog;->access$000(Lcom/android/settings/wifi/WifiDialog;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090209

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 124
    .local v1, passwordView:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    .line 125
    .local v2, pos:I
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiDialog$1;->mIsShowPassword:Z

    if-eqz v3, :cond_2

    const/16 v3, 0x90

    :goto_1
    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 129
    if-ltz v2, :cond_0

    .line 130
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    move-object v0, p1

    .line 132
    check-cast v0, Landroid/widget/ImageView;

    .line 133
    .local v0, imageView:Landroid/widget/ImageView;
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiDialog$1;->mIsShowPassword:Z

    if-eqz v3, :cond_3

    const v3, 0x7f0201b2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    return-void

    .line 122
    .end local v0           #imageView:Landroid/widget/ImageView;
    .end local v1           #passwordView:Landroid/widget/EditText;
    .end local v2           #pos:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 125
    .restart local v1       #passwordView:Landroid/widget/EditText;
    .restart local v2       #pos:I
    :cond_2
    const/16 v3, 0x80

    goto :goto_1

    .line 133
    .restart local v0       #imageView:Landroid/widget/ImageView;
    :cond_3
    const v3, 0x7f0201a5

    goto :goto_2
.end method
