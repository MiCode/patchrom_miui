.class Landroid/app/Instrumentation$1ContextMenuRunnable;
.super Ljava/lang/Object;
.source "Instrumentation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/Instrumentation;->invokeContextMenuAction(Landroid/app/Activity;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContextMenuRunnable"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final flags:I

.field private final identifier:I

.field returnValue:Z

.field final synthetic this$0:Landroid/app/Instrumentation;


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;Landroid/app/Activity;II)V
    .locals 0
    .param p2, "_activity"    # Landroid/app/Activity;
    .param p3, "_identifier"    # I
    .param p4, "_flags"    # I

    .prologue
    .line 815
    iput-object p1, p0, Landroid/app/Instrumentation$1ContextMenuRunnable;->this$0:Landroid/app/Instrumentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 816
    iput-object p2, p0, Landroid/app/Instrumentation$1ContextMenuRunnable;->activity:Landroid/app/Activity;

    .line 817
    iput p3, p0, Landroid/app/Instrumentation$1ContextMenuRunnable;->identifier:I

    .line 818
    iput p4, p0, Landroid/app/Instrumentation$1ContextMenuRunnable;->flags:I

    .line 819
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 822
    iget-object v1, p0, Landroid/app/Instrumentation$1ContextMenuRunnable;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 823
    .local v0, "win":Landroid/view/Window;
    iget v1, p0, Landroid/app/Instrumentation$1ContextMenuRunnable;->identifier:I

    iget v2, p0, Landroid/app/Instrumentation$1ContextMenuRunnable;->flags:I

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->performContextMenuIdentifierAction(II)Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/Instrumentation$1ContextMenuRunnable;->returnValue:Z

    .line 826
    return-void
.end method
