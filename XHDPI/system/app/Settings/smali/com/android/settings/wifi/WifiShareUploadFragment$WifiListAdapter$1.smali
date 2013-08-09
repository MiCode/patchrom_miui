.class Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter$1;
.super Ljava/lang/Object;
.source "WifiShareUploadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter$1;->this$1:Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;

    iput p2, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter$1;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter$1;->this$1:Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;->this$0:Lcom/android/settings/wifi/WifiShareUploadFragment;

    iget v1, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter$1;->val$pos:I

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiShareUploadFragment;->upload(I)V

    .line 270
    return-void
.end method
