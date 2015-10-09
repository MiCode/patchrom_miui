.class Landroid/ddm/DdmHandleViewDebug$1;
.super Ljava/lang/Object;
.source "DdmHandleViewDebug.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/ddm/DdmHandleViewDebug;->dumpDisplayLists(Landroid/view/View;Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/ddm/DdmHandleViewDebug;

.field final synthetic val$rootView:Landroid/view/View;

.field final synthetic val$targetView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/ddm/DdmHandleViewDebug;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Landroid/ddm/DdmHandleViewDebug$1;->this$0:Landroid/ddm/DdmHandleViewDebug;

    iput-object p2, p0, Landroid/ddm/DdmHandleViewDebug$1;->val$rootView:Landroid/view/View;

    iput-object p3, p0, Landroid/ddm/DdmHandleViewDebug$1;->val$targetView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Landroid/ddm/DdmHandleViewDebug$1;->val$rootView:Landroid/view/View;

    iget-object v1, p0, Landroid/ddm/DdmHandleViewDebug$1;->val$targetView:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/view/ViewDebug;->outputDisplayList(Landroid/view/View;Landroid/view/View;)V

    .line 280
    return-void
.end method
