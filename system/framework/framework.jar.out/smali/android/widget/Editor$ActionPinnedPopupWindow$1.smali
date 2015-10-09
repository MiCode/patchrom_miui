.class Landroid/widget/Editor$ActionPinnedPopupWindow$1;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$ActionPinnedPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$ActionPinnedPopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/Editor$ActionPinnedPopupWindow;)V
    .locals 0

    .prologue
    .line 2228
    iput-object p1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow$1;->this$1:Landroid/widget/Editor$ActionPinnedPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2231
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow$1;->this$1:Landroid/widget/Editor$ActionPinnedPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->show()V

    .line 2232
    return-void
.end method
