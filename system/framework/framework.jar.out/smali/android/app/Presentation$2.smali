.class Landroid/app/Presentation$2;
.super Ljava/lang/Object;
.source "Presentation.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Presentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Presentation;


# direct methods
.method constructor <init>(Landroid/app/Presentation;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Landroid/app/Presentation$2;->this$0:Landroid/app/Presentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 326
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 337
    iget-object v0, p0, Landroid/app/Presentation$2;->this$0:Landroid/app/Presentation;

    # getter for: Landroid/app/Presentation;->mDisplay:Landroid/view/Display;
    invoke-static {v0}, Landroid/app/Presentation;->access$000(Landroid/app/Presentation;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 338
    iget-object v0, p0, Landroid/app/Presentation$2;->this$0:Landroid/app/Presentation;

    # invokes: Landroid/app/Presentation;->handleDisplayChanged()V
    invoke-static {v0}, Landroid/app/Presentation;->access$200(Landroid/app/Presentation;)V

    .line 340
    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 330
    iget-object v0, p0, Landroid/app/Presentation$2;->this$0:Landroid/app/Presentation;

    # getter for: Landroid/app/Presentation;->mDisplay:Landroid/view/Display;
    invoke-static {v0}, Landroid/app/Presentation;->access$000(Landroid/app/Presentation;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 331
    iget-object v0, p0, Landroid/app/Presentation$2;->this$0:Landroid/app/Presentation;

    # invokes: Landroid/app/Presentation;->handleDisplayRemoved()V
    invoke-static {v0}, Landroid/app/Presentation;->access$100(Landroid/app/Presentation;)V

    .line 333
    :cond_0
    return-void
.end method
