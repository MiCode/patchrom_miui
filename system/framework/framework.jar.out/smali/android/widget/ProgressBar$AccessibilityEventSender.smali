.class Landroid/widget/ProgressBar$AccessibilityEventSender;
.super Ljava/lang/Object;
.source "ProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityEventSender"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ProgressBar;


# direct methods
.method private constructor <init>(Landroid/widget/ProgressBar;)V
    .locals 0

    .prologue
    .line 1235
    iput-object p1, p0, Landroid/widget/ProgressBar$AccessibilityEventSender;->this$0:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/ProgressBar;
    .param p2, "x1"    # Landroid/widget/ProgressBar$1;

    .prologue
    .line 1235
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar$AccessibilityEventSender;-><init>(Landroid/widget/ProgressBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1237
    iget-object v0, p0, Landroid/widget/ProgressBar$AccessibilityEventSender;->this$0:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->sendAccessibilityEvent(I)V

    .line 1238
    return-void
.end method
