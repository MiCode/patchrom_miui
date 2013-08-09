.class Lcom/android/settings/deviceinfo/MsdInstallActivity$4;
.super Ljava/lang/Object;
.source "MsdInstallActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/MsdInstallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/MsdInstallActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/MsdInstallActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity$4;->this$0:Lcom/android/settings/deviceinfo/MsdInstallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter "group"
    .parameter "checkedId"

    .prologue
    const/4 v1, 0x0

    .line 169
    packed-switch p2, :pswitch_data_0

    .line 178
    :goto_0
    return-void

    .line 171
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity$4;->this$0:Lcom/android/settings/deviceinfo/MsdInstallActivity;

    #setter for: Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallStep:I
    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->access$202(Lcom/android/settings/deviceinfo/MsdInstallActivity;I)I

    .line 172
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity$4;->this$0:Lcom/android/settings/deviceinfo/MsdInstallActivity;

    #setter for: Lcom/android/settings/deviceinfo/MsdInstallActivity;->mIsInstallAlready:Z
    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->access$302(Lcom/android/settings/deviceinfo/MsdInstallActivity;Z)Z

    goto :goto_0

    .line 175
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity$4;->this$0:Lcom/android/settings/deviceinfo/MsdInstallActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings/deviceinfo/MsdInstallActivity;->mIsInstallAlready:Z
    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->access$302(Lcom/android/settings/deviceinfo/MsdInstallActivity;Z)Z

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
