.class Landroid/view/accessibility/CaptioningManager$2;
.super Ljava/lang/Object;
.source "CaptioningManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/CaptioningManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/accessibility/CaptioningManager;


# direct methods
.method constructor <init>(Landroid/view/accessibility/CaptioningManager;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Landroid/view/accessibility/CaptioningManager$2;->this$0:Landroid/view/accessibility/CaptioningManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager$2;->this$0:Landroid/view/accessibility/CaptioningManager;

    # invokes: Landroid/view/accessibility/CaptioningManager;->notifyUserStyleChanged()V
    invoke-static {v0}, Landroid/view/accessibility/CaptioningManager;->access$500(Landroid/view/accessibility/CaptioningManager;)V

    .line 245
    return-void
.end method
