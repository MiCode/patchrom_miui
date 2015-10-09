.class Landroid/preference/PreferenceFragment$1;
.super Landroid/os/Handler;
.source "PreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/PreferenceFragment;


# direct methods
.method constructor <init>(Landroid/preference/PreferenceFragment;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Landroid/preference/PreferenceFragment$1;->this$0:Landroid/preference/PreferenceFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 122
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 128
    :goto_0
    return-void

    .line 125
    :pswitch_0
    iget-object v0, p0, Landroid/preference/PreferenceFragment$1;->this$0:Landroid/preference/PreferenceFragment;

    # invokes: Landroid/preference/PreferenceFragment;->bindPreferences()V
    invoke-static {v0}, Landroid/preference/PreferenceFragment;->access$000(Landroid/preference/PreferenceFragment;)V

    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
