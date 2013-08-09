.class Lcom/android/settings/BaseEnabler$1;
.super Landroid/database/ContentObserver;
.source "BaseEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BaseEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BaseEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/BaseEnabler;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/android/settings/BaseEnabler$1;->this$0:Lcom/android/settings/BaseEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/settings/BaseEnabler$1;->this$0:Lcom/android/settings/BaseEnabler;

    iget-object v0, v0, Lcom/android/settings/BaseEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 18
    iget-object v0, p0, Lcom/android/settings/BaseEnabler$1;->this$0:Lcom/android/settings/BaseEnabler;

    invoke-virtual {v0}, Lcom/android/settings/BaseEnabler;->update()V

    .line 19
    iget-object v0, p0, Lcom/android/settings/BaseEnabler$1;->this$0:Lcom/android/settings/BaseEnabler;

    iget-object v0, v0, Lcom/android/settings/BaseEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/android/settings/BaseEnabler$1;->this$0:Lcom/android/settings/BaseEnabler;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 20
    return-void
.end method
