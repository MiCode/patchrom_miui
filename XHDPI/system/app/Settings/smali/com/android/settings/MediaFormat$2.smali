.class Lcom/android/settings/MediaFormat$2;
.super Ljava/lang/Object;
.source "MediaFormat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MediaFormat;


# direct methods
.method constructor <init>(Lcom/android/settings/MediaFormat;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/settings/MediaFormat$2;->this$0:Lcom/android/settings/MediaFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings/MediaFormat$2;->this$0:Lcom/android/settings/MediaFormat;

    const/16 v1, 0x37

    #calls: Lcom/android/settings/MediaFormat;->runKeyguardConfirmation(I)Z
    invoke-static {v0, v1}, Lcom/android/settings/MediaFormat;->access$100(Lcom/android/settings/MediaFormat;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/settings/MediaFormat$2;->this$0:Lcom/android/settings/MediaFormat;

    #calls: Lcom/android/settings/MediaFormat;->establishFinalConfirmationState()V
    invoke-static {v0}, Lcom/android/settings/MediaFormat;->access$200(Lcom/android/settings/MediaFormat;)V

    .line 132
    :cond_0
    return-void
.end method
