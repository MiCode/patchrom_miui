.class Lcom/android/settings/VirusScanActivity$3;
.super Ljava/lang/Object;
.source "VirusScanActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/VirusScanActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/VirusScanActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/VirusScanActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/settings/VirusScanActivity$3;->this$0:Lcom/android/settings/VirusScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 150
    :goto_0
    return-void

    .line 142
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/VirusScanActivity$3;->this$0:Lcom/android/settings/VirusScanActivity;

    const/16 v1, 0x111

    invoke-virtual {v0, v1}, Lcom/android/settings/VirusScanActivity;->showDialog(I)V

    goto :goto_0

    .line 147
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/VirusScanActivity$3;->this$0:Lcom/android/settings/VirusScanActivity;

    #calls: Lcom/android/settings/VirusScanActivity;->updateVirusLib()V
    invoke-static {v0}, Lcom/android/settings/VirusScanActivity;->access$400(Lcom/android/settings/VirusScanActivity;)V

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
