.class Landroid/widget/Editor$SpanController$1;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$SpanController;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$SpanController;


# direct methods
.method constructor <init>(Landroid/widget/Editor$SpanController;)V
    .locals 0

    .prologue
    .line 1941
    iput-object p1, p0, Landroid/widget/Editor$SpanController$1;->this$1:Landroid/widget/Editor$SpanController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1944
    iget-object v0, p0, Landroid/widget/Editor$SpanController$1;->this$1:Landroid/widget/Editor$SpanController;

    invoke-virtual {v0}, Landroid/widget/Editor$SpanController;->hide()V

    .line 1945
    return-void
.end method
