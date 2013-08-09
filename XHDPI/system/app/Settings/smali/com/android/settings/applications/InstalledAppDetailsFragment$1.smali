.class Lcom/android/settings/applications/InstalledAppDetailsFragment$1;
.super Landroid/os/Handler;
.source "InstalledAppDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/InstalledAppDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/InstalledAppDetailsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetailsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$1;->this$0:Lcom/android/settings/applications/InstalledAppDetailsFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$1;->this$0:Lcom/android/settings/applications/InstalledAppDetailsFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 178
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 180
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$1;->this$0:Lcom/android/settings/applications/InstalledAppDetailsFragment;

    #calls: Lcom/android/settings/applications/InstalledAppDetailsFragment;->processClearMsg(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->access$000(Lcom/android/settings/applications/InstalledAppDetailsFragment;Landroid/os/Message;)V

    goto :goto_0

    .line 184
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$1;->this$0:Lcom/android/settings/applications/InstalledAppDetailsFragment;

    #getter for: Lcom/android/settings/applications/InstalledAppDetailsFragment;->mState:Lcom/android/settings/applications/ApplicationsState;
    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->access$200(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Lcom/android/settings/applications/ApplicationsState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$1;->this$0:Lcom/android/settings/applications/InstalledAppDetailsFragment;

    #getter for: Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    invoke-static {v1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->access$100(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$1;->this$0:Lcom/android/settings/applications/InstalledAppDetailsFragment;

    #calls: Lcom/android/settings/applications/InstalledAppDetailsFragment;->processMoveMsg(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->access$300(Lcom/android/settings/applications/InstalledAppDetailsFragment;Landroid/os/Message;)V

    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
