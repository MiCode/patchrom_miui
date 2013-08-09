.class Lcom/android/settings/MiuiSearchDrawable$1;
.super Ljava/lang/Object;
.source "MiuiSearchDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiSearchDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiSearchDrawable;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSearchDrawable;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lcom/android/settings/MiuiSearchDrawable$1;->this$0:Lcom/android/settings/MiuiSearchDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/settings/MiuiSearchDrawable$1;->this$0:Lcom/android/settings/MiuiSearchDrawable;

    invoke-virtual {v0}, Lcom/android/settings/MiuiSearchDrawable;->playAnimationImmediately()V

    .line 21
    return-void
.end method
